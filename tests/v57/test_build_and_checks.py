"""Step 6 dataset builder pieces and the checks that fail the build."""
import random
import sys
from collections import Counter
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(REPO))

from v57 import build, checks  # noqa: E402


def _r(label, arch, n, group, op="mov"):
    return {"label": label, "arch": arch, "group": group, "sequence": [f"{op} r{i}" for i in range(n)]}


def test_cap_groups_keeps_at_most_k_per_group_and_never_duplicates():
    recs = [_r("SPECTRE_V1", "x86_64", 5, "g1") for _ in range(10)] + [_r("MDS", "x86_64", 5, "g2")]
    out = build.cap_groups(recs, 3, random.Random(0))
    assert Counter(r["group"] for r in out) == {"g1": 3, "g2": 1}


def test_length_match_draws_benign_at_the_attack_length_distribution_per_isa():
    rng = random.Random(0)
    attacks = [_r("SPECTRE_V1", "x86_64", n, f"a{i}") for i, n in enumerate([12] * 30 + [33] * 10)]
    benign = ([_r("BENIGN", "x86_64", 12, f"b{i}") for i in range(100)]
              + [_r("BENIGN", "x86_64", 200, f"L{i}") for i in range(40)])   # no benign near 33
    out = build.length_match(attacks, benign, rng)
    lens = Counter(len(r["sequence"]) for r in out)
    assert len(out) == 40
    assert lens[12] == 30
    # the 30-34 bin is filled by WINDOWS of longer functions, at a length inside the bin
    win = [r for r in out if r.get("windowed_from")]
    assert len(win) == 10 and all(30 <= len(r["sequence"]) <= 34 for r in win)
    assert all(r["windowed_from"] == 200 for r in win)
    assert len({r["group"] for r in out}) == 40          # no benign record used twice


def test_length_match_reports_what_it_could_not_fill():
    attacks = [_r("MDS", "x86_64", 50, f"a{i}") for i in range(5)]
    benign = [_r("BENIGN", "x86_64", 10, f"b{i}") for i in range(5)]
    out = build.length_match(attacks, benign, random.Random(0))
    assert out == [] and build.length_match.last_unfilled == 5


def test_split_keeps_clusters_whole_and_hits_the_test_share_per_stratum():
    rng = random.Random(0)
    recs, cl = [], []
    for c in range(100):
        for _ in range(3):
            recs.append(_r("SPECTRE_V1" if c % 2 else "BENIGN", "x86_64", 5, f"g{c}"))
            cl.append(c)
    side = build.split_by_cluster(recs, cl, 0.2, rng)
    for c in range(100):
        assert len({side[i] for i in range(len(recs)) if cl[i] == c}) == 1
    for lab in ("SPECTRE_V1", "BENIGN"):
        te = sum(1 for r, s in zip(recs, side) if r["label"] == lab and s == "test")
        assert 24 <= te <= 36                               # 20% of 150, whole clusters of 3


def _split(train, test):
    return {"train": train, "test": test}


def test_checks_pass_on_a_clean_split():
    tr = ([_r("SPECTRE_V1", "x86_64", n, f"a{n}", "mov") for n in range(8, 28)]
          + [_r("BENIGN", "x86_64", n, f"b{n}", "add") for n in range(8, 28)])
    te = ([_r("SPECTRE_V1", "x86_64", n, f"c{n}", "sub") for n in range(8, 28)]
          + [_r("BENIGN", "x86_64", n, f"d{n}", "xor") for n in range(8, 28)])
    assert checks.run(_split(tr, te)) == []


def test_check_group_overlap():
    tr = [_r("SPECTRE_V1", "x86_64", 9, "same"), _r("BENIGN", "x86_64", 9, "b", "add")]
    te = [_r("SPECTRE_V1", "x86_64", 14, "same", "sub"), _r("BENIGN", "x86_64", 14, "d", "xor")]
    assert any("group" in e for e in checks.run(_split(tr, te)))


def test_check_near_duplicates_across_the_split():
    tr = [_r("SPECTRE_V1", "x86_64", 10, f"a{i}") for i in range(10)] + [_r("BENIGN", "x86_64", 10, "b", "add")]
    te = [_r("SPECTRE_V1", "x86_64", 10, f"c{i}") for i in range(10)] + [_r("BENIGN", "x86_64", 10, "d", "xor")]
    assert any("near-duplicate" in e for e in checks.run(_split(tr, te)))


def test_check_class_evaluated_on_an_isa_it_was_never_trained_on():
    tr = [_r("SPECTRE_V1", "x86_64", 9, "a"), _r("BENIGN", "x86_64", 9, "b", "add"),
          _r("BENIGN", "arm64", 9, "b2", "add")]
    te = [_r("SPECTRE_V1", "arm64", 14, "c", "sub"), _r("BENIGN", "x86_64", 14, "d", "xor")]
    errs = checks.run(_split(tr, te))
    assert any("LEAK" in e and "arm64" in e for e in errs)


def test_check_isa_alone_must_not_predict_leak():
    tr = ([_r("SPECTRE_V1", "x86_64", n, f"a{n}") for n in range(8, 28)]
          + [_r("BENIGN", "arm64", n, f"b{n}", "add") for n in range(8, 28)])
    te = ([_r("SPECTRE_V1", "x86_64", n, f"c{n}", "sub") for n in range(8, 28)]
          + [_r("BENIGN", "arm64", n, f"d{n}", "xor") for n in range(8, 28)])
    assert any("ISA alone" in e for e in checks.run(_split(tr, te)))


def test_check_length_alone_must_not_predict_leak():
    tr = ([_r("SPECTRE_V1", "x86_64", 30 + n % 5, f"a{n}") for n in range(40)]
          + [_r("BENIGN", "x86_64", 10 + n % 5, f"b{n}", "add") for n in range(40)])
    te = ([_r("SPECTRE_V1", "x86_64", 30 + n % 5, f"c{n}", "sub") for n in range(40)]
          + [_r("BENIGN", "x86_64", 10 + n % 5, f"d{n}", "xor") for n in range(40)])
    assert any("length alone" in e for e in checks.run(_split(tr, te)))


# --- regressions found on the first real-data build -------------------------

def test_a_benign_record_windowed_for_one_bin_is_not_reused_whole_in_a_later_bin():
    rng = random.Random(0)
    attacks = ([_r("MDS", "x86_64", 12, f"a{i}") for i in range(6)]
               + [_r("MDS", "x86_64", 52, f"A{i}") for i in range(6)])
    benign = [_r("BENIGN", "x86_64", 52, f"b{i}") for i in range(9)]   # no benign of length 12
    out = build.length_match(attacks, benign, rng)
    assert len(out) == len({r["group"] for r in out}) == 9
    assert build.length_match.last_unfilled == 3


def test_small_clusters_reach_the_test_side_too():
    rng = random.Random(0)
    recs, cl = [], []
    for c in range(20):                                    # 20 big clusters
        for _ in range(10):
            recs.append(_r("SPECTRE_V1", "x86_64", 5, f"big{c}")); cl.append(c)
    for c in range(200):                                   # 200 singletons
        recs.append(_r("SPECTRE_V1", "x86_64", 5, f"one{c}")); cl.append(1000 + c)
    side = build.split_by_cluster(recs, cl, 0.2, rng)
    singles_in_test = sum(1 for r, s in zip(recs, side) if r["group"].startswith("one") and s == "test")
    assert 20 <= singles_in_test <= 60                     # ~20% of 200, not 0


def test_strata_separate_hardware_from_synthetic_sources():
    a = dict(_r("SPECTRE_V1", "x86_64", 5, "g"), source="revizor_hw_i5_8300h")
    b = _r("SPECTRE_V1", "x86_64", 5, "g")
    assert build.stratum(a) != build.stratum(b)


def test_check_against_heldout_sets_catches_a_twin_of_a_heldout_program():
    tr = ([_r("SPECTRE_V1", "x86_64", n, f"a{n}", "mov") for n in range(8, 28)]
          + [_r("BENIGN", "x86_64", n, f"b{n}", "add") for n in range(8, 28)])
    te = ([_r("SPECTRE_V1", "x86_64", n, f"c{n}", "sub") for n in range(8, 28)]
          + [_r("BENIGN", "x86_64", n, f"d{n}", "xor") for n in range(8, 28)])
    held = [dict(_r("SPECTRE_V1", "x86_64", 12, "revizor_spectre_v1_violation-260925-134103", "imul"))]
    assert checks.run(_split(tr, te), heldout=held) == []
    twin = dict(_r("BENIGN", "x86_64", 12, "revizor_spectre_v1_violation-260925-134103_fenced", "imul"))
    errs = checks.run(_split(tr + [twin], te), heldout=held)
    assert any("(e)" in e and "violation-260925-134103" in e for e in errs)
