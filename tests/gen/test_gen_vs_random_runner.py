"""i5 runner bookkeeping (oracle/revizor/scripts/gen_vs_random.py) -- the parts
that do not need the hardware."""
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(REPO / "oracle" / "revizor" / "scripts"))
import gen_vs_random as g  # noqa: E402


def _mk(tmp, cls, arm, seed, n):
    d = tmp / cls / arm / f"s{seed}"
    d.mkdir(parents=True)
    for k in range(n):
        (d / f"p{k:04d}.asm").write_text("nop\n")


def test_run_order_interleaves_arms_so_a_partial_run_is_balanced(tmp_path):
    for arm in ("random", "learned", "mutation"):
        _mk(tmp_path, "SPECTRE_V1", arm, 0, 3)
    order = [(a, Path(p).name) for _, a, _, p in g.programs(tmp_path, ["SPECTRE_V1"])]
    assert [a for a, _ in order[:3]] == ["random", "mutation", "learned"]
    assert {n for _, n in order[:3]} == {"p0000.asm"}
    assert len(order) == 9


def test_classify_and_report_count_errors_out_of_the_denominator():
    assert g.classify(0, "... Violations detected ...") == "violation"
    assert g.classify(0, "fine") == "none"
    assert g.classify(1, "boom") == "error"
    assert g.classify(0, "Traceback (most recent call last)") == "error"
    rows = ([{"class": "C", "arm": "learned", "seed": 0, "verdict": "violation"}] * 2
            + [{"class": "C", "arm": "learned", "seed": 0, "verdict": "none"}] * 6
            + [{"class": "C", "arm": "learned", "seed": 0, "verdict": "error"}] * 2)
    line = [l for l in g.report(rows).splitlines() if "learned" in l][0]
    assert "| 10 | 8 | 2 | 0.250 [" in line and "| 2 | 0.250 |" in line


def test_run_config_pins_exactly_one_data_seed_and_seed_is_stable():
    cfg = g.run_config("program_size: 16\ndata_generator_seed: 5\n", 77)
    assert cfg.count("data_generator_seed") == 1 and "data_generator_seed: 77" in cfg
    assert g.data_seed("/a/s0/p0001.asm") == g.data_seed("/b/s0/p0001.asm")
    assert g.data_seed("/a/s0/p0001.asm") != g.data_seed("/a/s1/p0001.asm")


def test_a_run_that_is_mostly_errors_fails_so_a_chained_long_run_does_not_start():
    ok = [{"verdict": "none"}] * 30 + [{"verdict": "violation"}] * 5 + [{"verdict": "error"}] * 5
    bad = [{"verdict": "error"}] * 30 + [{"verdict": "none"}] * 10
    assert g.health_rc(ok) == 0
    assert g.health_rc(bad) == 3
    assert g.health_rc([]) == 0                      # nothing left to run is not a failure


# --- campaign-level metrics and tests (plan 2026-11-11, track A) -------------

def _rows(arm, seed, verdicts):
    return [{"class": "C", "arm": arm, "seed": seed, "path": f"C/{arm}/s{seed}/p{k:04d}.asm",
             "verdict": v} for k, v in enumerate(verdicts)]


def test_campaigns_report_violations_and_tests_to_first_violation():
    rows = _rows("random", 0, ["none", "none", "violation", "none", "violation"]) \
        + _rows("random", 1, ["none"] * 5) + _rows("learned", 0, ["error", "violation", "none"])
    c = g.campaigns(rows)
    assert c[("C", "random")][0] == {"n": 5, "errors": 0, "violations": 2, "first": 3}
    assert c[("C", "random")][1] == {"n": 5, "errors": 0, "violations": 0, "first": 6}   # censored at n+1
    assert c[("C", "learned")][0] == {"n": 3, "errors": 1, "violations": 1, "first": 1}   # errored runs do not count as tests


def test_campaign_order_is_the_program_index_not_the_file_order():
    rows = list(reversed(_rows("random", 0, ["none", "violation", "none"])))
    assert g.campaigns(rows)[("C", "random")][0]["first"] == 2


def test_a12_effect_size():
    assert g.a12([3, 4, 5], [1, 2, 0]) == 1.0
    assert g.a12([1, 2, 3], [1, 2, 3]) == 0.5
    assert g.a12([0, 0], [1, 1]) == 0.0
    assert abs(g.a12([1, 3], [2, 2]) - 0.5) < 1e-9


def test_mann_whitney_two_sided_p_matches_known_values():
    # scipy.stats.mannwhitneyu(x, y, alternative="two-sided", method="asymptotic", use_continuity=True)
    x = [1.1, 2.2, 3.3, 4.4, 5.5, 6.6, 7.7, 8.8, 9.9, 10.1]
    y = [11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
    assert abs(g.mann_whitney_p(x, y) - 0.000183) < 2e-5
    assert g.mann_whitney_p([1, 2, 3], [1, 2, 3]) > 0.9
    assert g.mann_whitney_p([5, 5, 5], [5, 5, 5]) == 1.0        # all tied


def test_report_compares_every_arm_with_random_per_class():
    rows = []
    for s in range(4):
        rows += _rows("random", s, ["none"] * 9 + ["violation"])
        rows += _rows("learned", s, ["violation", "violation"] + ["none"] * 8)
    text = g.campaign_report(rows)
    line = [l for l in text.splitlines() if l.startswith("| C | learned ")][0]
    assert "| 4 |" in line and "1.00" in line          # 4 campaigns, A12 = 1 on violations


# --- minimised cores: distinct and novel -------------------------------------

def test_core_is_novel_only_if_no_training_program_contains_it_in_order():
    train = [["a", "b", "c", "d"], ["x", "y"]]
    assert not g.core_is_novel(["a", "c"], train)        # ordered subsequence of the first
    assert not g.core_is_novel(["x", "y"], train)
    assert g.core_is_novel(["c", "a"], train)            # order matters
    assert g.core_is_novel(["a", "y"], train)            # spans two programs
    assert not g.core_is_novel([], train)                # an empty core is not a finding


def test_first_violations_per_campaign_are_what_gets_minimised():
    rows = _rows("random", 0, ["none", "violation", "violation"]) + _rows("random", 1, ["none"] * 3) \
        + _rows("learned", 0, ["violation", "none", "violation"])
    picked = g.to_minimise(rows, per_campaign=1)
    assert [r["path"] for r in picked] == ["C/learned/s0/p0000.asm", "C/random/s0/p0001.asm"]
    assert len(g.to_minimise(rows, per_campaign=2)) == 4


def test_core_summary_counts_distinct_and_novel_cores_per_arm():
    cores = [{"class": "C", "arm": "random", "seed": 0, "ok": True, "core": ["a", "b"], "novel": False},
             {"class": "C", "arm": "random", "seed": 1, "ok": True, "core": ["a", "b"], "novel": False},
             {"class": "C", "arm": "random", "seed": 2, "ok": False, "core": [], "novel": False},
             {"class": "C", "arm": "learned", "seed": 0, "ok": True, "core": ["q"], "novel": True}]
    text = g.core_report(cores)
    assert "| C | random | 3 | 2 | 1 | 0 |" in text
    assert "| C | learned | 1 | 1 | 1 | 1 |" in text
