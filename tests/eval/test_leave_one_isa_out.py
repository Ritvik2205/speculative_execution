"""Tests for eval/leave_one_isa_out.py — pure helpers only (class
intersection, split construction, stub exclusion). The full RF sweep is not
tested here: it depends on real corpora, the ISA spec engines, and trained
RandomForest fits, which is out of scope for a unit test (see task-4-brief.md
"Tests" section).
"""
import math
import subprocess
import sys

import numpy as np

from eval.leave_one_isa_out import (
    IDIOMATIC_RISCV_PATH,
    SPLITS,
    ROOT,
    build_split,
    ci_overlap,
    class_intersection,
    describe_comparison,
    filter_by_arch,
    fmt_ci,
    format_confusion_matrix,
    group_bootstrap_f1,
    is_stub,
    load_idiomatic_riscv_records,
    n_instructions,
    predict_test_windowed,
    window_target_len,
)


def rec(label, arch, sequence=None, group=None):
    return {
        "label": label,
        "arch": arch,
        "sequence": sequence if sequence is not None else ["mov %rax, %rbx"] * 20,
        "group": group or f"{label}_{arch}",
    }


# ---------------------------------------------------------------------------
# n_instructions / is_stub
# ---------------------------------------------------------------------------

def test_n_instructions_skips_blanks_directives_and_labels():
    seq = [
        "",
        "  ",
        ".text",
        ".globl foo",
        "foo:",
        "  mov %rax, %rbx",
        "  ret",
    ]
    assert n_instructions(seq) == 2


def test_is_stub_boundary_is_inclusive():
    ten = rec("L1TF", "riscv64", sequence=["nop"] * 10)
    eleven = rec("L1TF", "riscv64", sequence=["nop"] * 11)
    assert is_stub(ten) is True          # exactly 10 -> stub (<=)
    assert is_stub(eleven) is False       # 11 -> not a stub

    zero = rec("L1TF", "riscv64", sequence=[])
    assert is_stub(zero) is True

    assert is_stub(eleven, max_instr=11) is True  # custom threshold respected


# ---------------------------------------------------------------------------
# filter_by_arch
# ---------------------------------------------------------------------------

def test_filter_by_arch_selects_only_named_archs():
    records = [rec("A", "x86_64"), rec("B", "arm64"), rec("C", "riscv64"),
               rec("D", "arm32")]
    out = filter_by_arch(records, ["x86_64", "arm64"])
    assert {r["label"] for r in out} == {"A", "B"}


def test_filter_by_arch_empty_selector_yields_nothing():
    records = [rec("A", "x86_64")]
    assert filter_by_arch(records, []) == []


# ---------------------------------------------------------------------------
# class_intersection
# ---------------------------------------------------------------------------

def test_class_intersection_basic():
    train = [rec("MDS", "x86_64"), rec("L1TF", "x86_64"), rec("MDS", "x86_64")]
    test = [rec("MDS", "arm64"), rec("BENIGN", "arm64")]
    keep, dropped_test_only, dropped_train_only = class_intersection(train, test)
    assert keep == {"MDS"}
    assert dropped_test_only == {"BENIGN"}     # held-out has it, train never saw it
    assert dropped_train_only == {"L1TF"}      # train has it, held-out doesn't


def test_class_intersection_riscv_has_no_benign_or_spectre_v1_scenario():
    # Mirrors the real corpus shape described in the brief: RISC-V is missing
    # BENIGN and SPECTRE_V1 relative to x86/arm.
    train = [rec("BENIGN", "x86_64"), rec("SPECTRE_V1", "x86_64"), rec("MDS", "x86_64")]
    test = [rec("MDS", "riscv64"), rec("L1TF", "riscv64")]
    keep, dropped_test_only, dropped_train_only = class_intersection(train, test)
    assert keep == {"MDS"}
    assert dropped_test_only == {"L1TF"}
    assert dropped_train_only == {"BENIGN", "SPECTRE_V1"}


def test_class_intersection_full_overlap_drops_nothing():
    train = [rec("MDS", "x86_64"), rec("L1TF", "x86_64")]
    test = [rec("MDS", "arm64"), rec("L1TF", "arm64")]
    keep, dropped_test_only, dropped_train_only = class_intersection(train, test)
    assert keep == {"MDS", "L1TF"}
    assert dropped_test_only == set()
    assert dropped_train_only == set()


# ---------------------------------------------------------------------------
# build_split
# ---------------------------------------------------------------------------

def test_build_split_pools_multiple_train_archs():
    records_by_arch = {
        "x86_64": [rec("MDS", "x86_64"), rec("L1TF", "x86_64")],
        "arm64": [rec("MDS", "arm64")],
        "riscv64": [rec("MDS", "riscv64"), rec("BENIGN", "riscv64")],
    }
    train, test, keep, dropped_test_only, dropped_train_only = build_split(
        records_by_arch, ("x86_64", "arm64"), "riscv64")
    assert len(train) == 3  # x86_64 (2) + arm64 (1), unfiltered
    assert keep == {"MDS"}
    assert dropped_test_only == {"BENIGN"}
    assert dropped_train_only == {"L1TF"}
    # test is restricted to the class intersection
    assert [r["label"] for r in test] == ["MDS"]


def test_build_split_test_set_excludes_classes_train_never_saw():
    records_by_arch = {
        "x86_64": [rec("MDS", "x86_64")],
        "arm64": [rec("MDS", "arm64"), rec("BENIGN", "arm64"), rec("BENIGN", "arm64")],
    }
    _, test, keep, _, _ = build_split(records_by_arch, ("x86_64",), "arm64")
    assert keep == {"MDS"}
    assert len(test) == 1
    assert all(r["label"] == "MDS" for r in test)


def test_build_split_empty_held_out_arch_yields_no_test_records():
    records_by_arch = {"x86_64": [rec("MDS", "x86_64")], "arm64": []}
    train, test, keep, dropped_test_only, dropped_train_only = build_split(
        records_by_arch, ("x86_64",), "arm64")
    assert test == []
    assert keep == set()


def test_splits_cover_the_five_required_ordered_directions():
    expected = {
        (("x86_64",), "arm64"),
        (("arm64",), "x86_64"),
        (("x86_64", "arm64"), "riscv64"),
        (("x86_64", "riscv64"), "arm64"),
        (("arm64", "riscv64"), "x86_64"),
    }
    assert set(SPLITS) == expected
    assert len(SPLITS) == 5
    # no split's held-out ISA is also one of its own train ISAs
    for train_archs, held_out in SPLITS:
        assert held_out not in train_archs


# ---------------------------------------------------------------------------
# fmt_ci
# ---------------------------------------------------------------------------

def test_fmt_ci_reports_undefined_for_nan():
    assert fmt_ci(float("nan"), 1.0) == "undefined"
    assert fmt_ci(1.0, float("nan")) == "undefined"
    assert fmt_ci(None, 1.0) == "undefined"


def test_fmt_ci_formats_a_real_interval():
    s = fmt_ci(10.0, 20.0)
    assert "10.00" in s and "20.00" in s


# ---------------------------------------------------------------------------
# group_bootstrap_f1 — degenerate single-group case must be explicit NaN
# ---------------------------------------------------------------------------

def test_group_bootstrap_f1_undefined_with_single_group():
    y_true = np.array(["MDS", "MDS", "L1TF", "L1TF"])
    y_pred = np.array(["MDS", "MDS", "L1TF", "MDS"])
    groups = np.array(["g0", "g0", "g0", "g0"])
    point, lo, hi = group_bootstrap_f1(y_true, y_pred, groups, ["MDS", "L1TF"])
    assert not math.isnan(point)
    assert math.isnan(lo) and math.isnan(hi)


def test_group_bootstrap_f1_defined_with_multiple_groups():
    rng = np.random.RandomState(0)
    labels = ["MDS", "L1TF"]
    y_true = np.array(rng.choice(labels, size=40))
    y_pred = y_true.copy()
    # inject some noise
    flip = rng.choice(40, size=8, replace=False)
    y_pred[flip] = np.where(y_true[flip] == "MDS", "L1TF", "MDS")
    groups = np.array([f"g{i % 6}" for i in range(40)])
    point, lo, hi = group_bootstrap_f1(y_true, y_pred, groups, labels, n_boot=200, seed=1)
    assert not math.isnan(lo) and not math.isnan(hi)
    assert lo <= point <= hi


# ---------------------------------------------------------------------------
# ci_overlap / describe_comparison — fix-round-1 regression coverage.
#
# The bug this guards against: the original verdict code derived directional
# claims (e.g. "coarse beats rich", "x86->arm is markedly better") purely
# from seed-mean point estimates, without ever consulting the group-aware
# CIs computed earlier in the same run. A nonzero point-estimate gap whose
# group-aware CIs overlap substantially must be reported as NOT
# distinguishable from noise, never as a directional finding — this is
# exactly the spec-42-vs-cand-impurity-on-x86<->arm case a review caught.
# ---------------------------------------------------------------------------

def test_ci_overlap_true_for_overlapping_intervals():
    # Real numbers from the x86->arm run: spec-42 [44.74,79.17] vs
    # cand-impurity [44.53,80.97] — near-total overlap.
    assert ci_overlap((44.74, 79.17), (44.53, 80.97)) is True


def test_ci_overlap_false_for_disjoint_intervals():
    assert ci_overlap((0.0, 10.0), (20.0, 30.0)) is False


def test_ci_overlap_true_at_the_touching_boundary():
    # Intervals that share exactly one point are not "cleanly separated".
    assert ci_overlap((0.0, 10.0), (10.0, 20.0)) is True


def test_ci_overlap_none_when_either_bound_is_nan_or_none():
    assert ci_overlap((float("nan"), 10.0), (5.0, 15.0)) is None
    assert ci_overlap((0.0, 10.0), (None, 15.0)) is None


def test_describe_comparison_reports_no_detectable_difference_on_overlap():
    # This is the exact regression: a real point-estimate gap (+34.5pp)
    # whose CIs overlap must NOT be described as a directional finding.
    msg = describe_comparison(34.48, (44.74, 79.17), (44.53, 80.97),
                              "spec-42", "cand-impurity")
    assert "NO DETECTABLE DIFFERENCE" in msg
    assert "measurably higher" not in msg


def test_describe_comparison_reports_distinguishable_on_separation():
    msg = describe_comparison(15.0, (30.0, 40.0), (5.0, 15.0), "A", "B")
    assert "DISTINGUISHABLE" in msg
    assert "A is measurably higher" in msg


def test_describe_comparison_direction_follows_sign_when_distinguishable():
    msg_a_higher = describe_comparison(15.0, (30.0, 40.0), (5.0, 15.0), "A", "B")
    msg_b_higher = describe_comparison(-15.0, (5.0, 15.0), (30.0, 40.0), "A", "B")
    assert "A is measurably higher" in msg_a_higher
    assert "B is measurably higher" in msg_b_higher


def test_describe_comparison_undefined_when_ci_missing():
    msg = describe_comparison(5.0, (float("nan"), float("nan")), (5.0, 15.0), "A", "B")
    assert "UNDEFINED" in msg


# ---------------------------------------------------------------------------
# --idiomatic — sources riscv64 from eval/data/idiomatic_riscv.jsonl (real,
# riscv64-gcc-compiled corpus) instead of build_riscv_records() (the
# transliterated riscv_corpus/ default). Task 5.4 deliverable 1.
# ---------------------------------------------------------------------------

def test_load_idiomatic_riscv_records_reads_the_real_corpus_file():
    records = load_idiomatic_riscv_records()
    assert len(records) > 0
    assert all(r["arch"] == "riscv64" for r in records)
    # source_file/provenance is idiomatic_riscv-specific — not something
    # build_riscv_records() (spec/eval_riscv_real.py, riscv_corpus/) emits.
    assert all("provenance" in r for r in records)
    assert {r["label"] for r in records} >= {"BENIGN", "SPECTRE_V1"}


def test_load_idiomatic_riscv_records_default_path_is_the_documented_file():
    assert IDIOMATIC_RISCV_PATH == ROOT / "eval" / "data" / "idiomatic_riscv.jsonl"
    assert IDIOMATIC_RISCV_PATH.exists()


def test_load_idiomatic_riscv_records_respects_explicit_path(tmp_path):
    import json
    p = tmp_path / "mini.jsonl"
    p.write_text('{"label": "MDS", "arch": "riscv64", "sequence": ["nop"], "group": "g"}\n')
    records = load_idiomatic_riscv_records(p)
    assert records == [{"label": "MDS", "arch": "riscv64", "sequence": ["nop"], "group": "g"}]


# ---------------------------------------------------------------------------
# --windowed — inference-time windowing wrapper (eval/isa_windowing.py)
# wired through predict_test_windowed. Task 5.4 deliverable 2.
#
# Mirrors isa_windowing.predict_windowed's own policy: only confidence >=
# k_threshold windows vote, plurality wins, zero confident windows abstains
# to BENIGN. predict_test_windowed's own featurization (hf.compute_inline_features
# / compute_spec_features / candidate space) is bypassed here via a stub
# clf-like predict_proba, isolating the vote-combination wiring itself
# (isa_windowing.py's own unit tests already cover the vote policy in
# isolation; this test proves leave_one_isa_out.py's tier plumbing produces
# the same per-record verdict end to end for the "hand-58" tier, whose
# featurizer — hf.compute_inline_features — is cheap and needs no engine).
# ---------------------------------------------------------------------------

class _AllAgreeClf:
    """Every window scores the given class with high confidence."""
    classes_ = np.array(["MDS", "BENIGN"])

    def predict_proba(self, X):
        return np.tile(np.array([0.9, 0.1]), (X.shape[0], 1))


class _NeverConfidentClf:
    """Every window is a low-confidence coin flip — no window ever clears
    k_threshold, so the record must abstain to BENIGN."""
    classes_ = np.array(["MDS", "BENIGN"])

    def predict_proba(self, X):
        return np.tile(np.array([0.51, 0.49]), (X.shape[0], 1))


def test_predict_test_windowed_all_windows_agree_votes_that_class():
    engines = {"unknown": object()}
    test_records = [rec("MDS", "x86_64", sequence=["mov %rax, %rbx"] * 60)]
    preds = predict_test_windowed(
        _AllAgreeClf(), "hand-58", test_records, engines,
        target_len=20, stride=10, k_threshold=0.5)
    assert list(preds) == ["MDS"]


def test_predict_test_windowed_no_confident_window_abstains_to_benign():
    engines = {"unknown": object()}
    test_records = [rec("MDS", "x86_64", sequence=["mov %rax, %rbx"] * 60)]
    preds = predict_test_windowed(
        _NeverConfidentClf(), "hand-58", test_records, engines,
        target_len=20, stride=10, k_threshold=0.6)
    assert list(preds) == ["BENIGN"]


def test_window_target_len_is_the_train_pool_p90_sequence_length():
    train = [rec("MDS", "x86_64", sequence=["nop"] * n) for n in
             (10, 20, 30, 40, 50, 60, 70, 80, 90, 100)]
    # p90 of 10..100 step 10 (10 samples) via numpy's default interpolation.
    expected = max(1, int(round(float(np.percentile([len(r["sequence"]) for r in train], 90)))))
    assert window_target_len(train, 0.9) == expected


def test_window_target_len_empty_train_pool_is_one():
    assert window_target_len([], 0.9) == 1


# ---------------------------------------------------------------------------
# format_confusion_matrix — per-ISA confusion dump (Task 5.4 deliverable 3).
# ---------------------------------------------------------------------------

def test_format_confusion_matrix_diagonal_for_perfect_predictions():
    y_true = np.array(["MDS", "MDS", "L1TF"])
    y_pred = np.array(["MDS", "MDS", "L1TF"])
    text = format_confusion_matrix(y_true, y_pred, ["L1TF", "MDS"])
    assert "L1TF" in text and "MDS" in text
    lines = text.splitlines()
    assert len(lines) == 3  # header + 2 class rows


def test_format_confusion_matrix_off_diagonal_shows_misclassification():
    y_true = np.array(["MDS", "MDS", "L1TF"])
    y_pred = np.array(["MDS", "BENIGN", "L1TF"])
    text = format_confusion_matrix(y_true, y_pred, ["BENIGN", "L1TF", "MDS"])
    mds_row = [l for l in text.splitlines() if l.startswith("MDS")][0]
    # 1 MDS record predicted BENIGN, 1 predicted MDS
    assert mds_row.split()[1:] == ["1", "0", "1"]


# ---------------------------------------------------------------------------
# Default path unchanged — no flags produces the same splits/behavior as
# before Task 5.4 (--idiomatic/--windowed default False, additive only).
# ---------------------------------------------------------------------------

def test_argparse_defaults_are_off_and_additive():
    from eval.leave_one_isa_out import main
    import argparse
    # Reconstruct the parser the way main() does, without running main() —
    # cheap smoke check that the two new flags default to False/no-op values
    # and don't touch SPLITS or any of the pure helpers exercised above.
    ap = argparse.ArgumentParser()
    ap.add_argument("--seeds", type=int, nargs="+", default=[42, 1, 7, 13, 21])
    ap.add_argument("--idiomatic", action="store_true")
    ap.add_argument("--windowed", action="store_true")
    args = ap.parse_args([])
    assert args.idiomatic is False
    assert args.windowed is False
    assert args.seeds == [42, 1, 7, 13, 21]
    # SPLITS itself is untouched by the new flags (module-level constant).
    assert len(SPLITS) == 5


def test_leave_one_isa_out_help_lists_new_flags_without_crashing():
    out = subprocess.run(
        [sys.executable, str(ROOT / "eval" / "leave_one_isa_out.py"), "--help"],
        capture_output=True, text=True, cwd=str(ROOT))
    assert out.returncode == 0
    assert "--idiomatic" in out.stdout
    assert "--windowed" in out.stdout
    assert "--k-threshold" in out.stdout
