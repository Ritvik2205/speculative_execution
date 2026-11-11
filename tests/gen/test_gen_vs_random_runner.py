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
