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


def test_patched_window_covers_diff():
    pre = [f"addq ${i}, %rax" for i in range(200)]
    post = list(pre)
    for k in (90, 91, 92):
        post[k] = f"subq ${k}, %rbx"
    pre[150] = "leakmarker"          # a leak OUTSIDE the patched region, on both sides
    post[150] = "leakmarker"
    ps = sr.patched_spans(pre, post)
    for side in ("pre", "post"):
        seq, spans = ps[side]
        assert spans and all(s <= 92 and e > 90 for s, e in spans)
        assert not sr.patched_leak(seq, spans, marker_predictor_lc)
        # control: the same marker inside the region does fire
    pre2 = list(pre)
    pre2[91] = "leakmarker"
    seq, spans = sr.patched_spans(pre2, post)["pre"]
    assert sr.patched_leak(seq, spans, marker_predictor_lc)


def marker_predictor_lc(windows):
    return [("SPECTRE_V1", 0.1) if any("leakmarker" in l for l in w) else ("BENIGN", 0.9)
            for w in windows]


def test_bars_scored_per_window():
    seq = ["movq (%rax), %rbx"] * 120
    seq[3] = "lfence"                 # first window fenced, later windows fence-free
    r = row("g", "SPECTRE_V1", seq)
    calls = sr.bar_function_calls([r])
    assert calls["fence_count"] == [True]
    assert calls["fence_count_wholefn"] == [False]


def test_bootstrap_drops_single_class_replicates():
    truth = [True, False, False, False]
    groups = ["L", "S1", "S2", "S3"]
    res = sr.cluster_boot(truth, {"m": [True, False, False, False]}, groups, n_boot=400, seed=3)
    d = res["n_dropped"]["m"]
    assert d > 0                                  # replicates without the leak cluster
    assert int(np.isnan(res["samples"]["m"]).sum()) == d
    assert np.all(np.isfinite(res["samples"]["m"][~np.isnan(res["samples"]["m"])]))


def test_rows_without_instructions_dropped():
    prose = row("p", "SPECTRE_V1", ["/* license */", " * text", ""] )
    out = sr.score([prose, row("a", "SPECTRE_V1")], predictor=marker_predictor, lr_train=None, n_boot=20)
    assert out["counts"]["no_instruction_dropped"] == 1


def test_patched_windows_align_with_headline_windows():
    def raw(variant):
        out = []
        for i in range(120):
            if i % 7 == 0:
                out.append(f"\t# comment {i}")       # non-instruction line in the raw field
            if i % 11 == 0:
                out.append(f".L{i}:")
            out.append(f"addq ${i}, %rax" if not (variant and 60 <= i < 63) else f"subq ${i}, %rbx")
        return out
    pre, post = raw(False), raw(True)
    ps = sr.patched_spans(pre, post)
    for side, seq_raw in (("pre", pre), ("post", post)):
        seq, spans = ps[side]
        assert seq == seq_raw                         # indexes the RAW sequence
        assert spans
        head = sr.windows_for(row("g", "SPECTRE_V1", seq_raw))
        for s, e in spans:
            assert seq[s:e] in head                   # element for element
        assert len(spans) < len(head)


def test_mechanism_per_window_differs_when_chain_split():
    # L (idx 5) -> dependent read (idx 70): the whole function holds the MDS
    # chain; no 45-instruction window contains both ends, so the rule abstains.
    seq = [f"addq ${i}, %rcx" for i in range(100)]
    seq[5] = "movq (%rax), %rbx"
    seq[70] = "movq (%r8,%rbx), %rdx"
    r = row("g", "MDS", seq)
    calls = sr.bar_function_calls([r])
    assert calls["mechanism_v2_wholefn"] == [True]
    assert calls["mechanism_v2"] == [False]
    assert calls["mechanism_v2_excl"] == [None]
    # chain inside one window: per-window == whole-function
    seq2 = list(seq)
    seq2[70], seq2[20] = "addq $1, %rcx", "movq (%r8,%rbx), %rdx"
    c2 = sr.bar_function_calls([row("g", "MDS", seq2)])
    assert c2["mechanism_v2"] == c2["mechanism_v2_wholefn"] == [True]


def test_dropped_reported_per_method():
    rows = [row("L", "SPECTRE_V1"), row("S1"), row("S2"), row("S3")]
    out = sr.score(rows, predictor=marker_predictor, lr_train=None, n_boot=200)
    cell = out["slices"]["headline"]["all"]
    assert all("n_dropped" in cell[m] for m in cell)
    md = sr.render_md(out, {})
    assert "dropped (excl)" in md
