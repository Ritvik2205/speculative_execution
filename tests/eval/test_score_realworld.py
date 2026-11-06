"""Tests for eval/score_realworld.py (Task 6). No torch needed: predictors are stubs."""
import numpy as np

from eval import score_realworld as sr


def row(group, label="BENIGN", seq=None, **kw):
    r = dict(sequence=seq or ["movq (%rax), %rbx"] * 30, label=label, arch="x86_64",
             group=group, family=group, subset="poc", harness=False,
             train_overlap=False, dup_of=None)
    r.update(kw)
    return r


def marker_predictor(windows):
    """Leak (pred SPECTRE_V1, p_benign 0.1) iff the window contains the LEAK line."""
    return [("SPECTRE_V1", 0.1) if any("LEAK" in l for l in w) else ("BENIGN", 0.9)
            for w in windows]


def test_max_over_windows():
    seq = ["nop"] * 100
    seq[70] = "LEAK"
    r = row("g", "SPECTRE_V1", seq)
    assert len(sr.windows_for(r)) > 1
    v = sr.function_verdict(r, marker_predictor)
    assert v["leak"] is True and abs(v["score"] - 0.9) < 1e-9
    clean = sr.function_verdict(row("g2", "BENIGN", ["nop"] * 100), marker_predictor)
    assert clean["leak"] is False and abs(clean["score"] - 0.1) < 1e-9


def test_fence_bar():
    assert sr.fence_bar(row("a", seq=["movq (%rax), %rbx", "lfence", "ret"])) is False
    assert sr.fence_bar(row("a", seq=["movq (%rax), %rbx", "ret"])) is True


def test_overlap_rows_excluded_from_headline():
    rows = [row("a", "SPECTRE_V1"), row("b", "BENIGN"),
            row("c", "SPECTRE_V1", train_overlap=True), row("d", "BENIGN", train_overlap=True)]
    parts = sr.partition(rows)
    assert [r["group"] for r in parts["headline"]] == ["a", "b"]
    assert [r["group"] for r in parts["train_overlap"]] == ["c", "d"]


def test_harness_and_dup_rows_excluded_from_headline():
    rows = [row("a", "SPECTRE_V1"), row("h", "SPECTRE_V1", harness=True),
            row("d", "SPECTRE_V1", dup_of="x"), row("o", "BENIGN", harness=True, train_overlap=True)]
    parts = sr.partition(rows)
    assert [r["group"] for r in parts["headline"]] == ["a"]
    assert [r["group"] for r in parts["harness"]] == ["h", "o"]
    assert parts["n_dup_dropped"] == 1
    assert all(r["group"] != "d" for k in ("headline", "harness", "train_overlap") for r in parts[k])


def test_ci_clusters_by_group():
    # group A (2 rows) all correct, group B (2 rows) all wrong. A record-level
    # bootstrap would give many intermediate means; the cluster bootstrap can
    # only give 0, .5 or 1 because rows of a group move together.
    truth = [True, True, True, True]
    preds = {"m": [True, True, False, False]}
    groups = ["A", "A", "B", "B"]
    res = sr.cluster_boot(truth, preds, groups, n_boot=500, seed=1)
    assert set(np.round(res["samples"]["m"], 6)) <= {0.0, 0.5, 1.0}
    assert 0.0 in set(np.round(res["samples"]["m"], 6))


def test_ci_na_for_single_group():
    res = sr.cluster_boot([True, False], {"m": [True, False]}, ["only", "only"], n_boot=100)
    assert res["ci"]["m"] == (None, None)
    assert sr.fmt_ci(res["ci"]["m"]) == "n/a"


def test_bars_only_run_with_stub(tmp_path):
    rows = [row("a", "SPECTRE_V1", ["LEAK"] * 30), row("b", "BENIGN", ["lfence"] * 30)]
    out = sr.score(rows, predictor=marker_predictor, lr_train=None, n_boot=50)
    m = out["slices"]["headline"]["all"]
    assert m["model"]["n"] == 2 and m["model"]["bal_acc"] == 1.0
    assert m["always_attack"]["bal_acc"] == 0.5
