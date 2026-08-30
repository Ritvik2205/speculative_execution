"""Tests for eval/leave_one_isa_out.py — pure helpers only (class
intersection, split construction, stub exclusion). The full RF sweep is not
tested here: it depends on real corpora, the ISA spec engines, and trained
RandomForest fits, which is out of scope for a unit test (see task-4-brief.md
"Tests" section).
"""
import math

import numpy as np

from eval.leave_one_isa_out import (
    SPLITS,
    build_split,
    ci_overlap,
    class_intersection,
    describe_comparison,
    filter_by_arch,
    fmt_ci,
    group_bootstrap_f1,
    is_stub,
    n_instructions,
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
