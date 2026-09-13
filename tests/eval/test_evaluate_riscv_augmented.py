import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "eval"))

from evaluate_riscv_augmented import build_per_class_rows, ci  # noqa: E402


def test_ci_single_value_has_zero_width():
    mean, half_width = ci([95.0])
    assert mean == 95.0
    assert half_width == 0.0


def test_ci_identical_values_has_zero_width():
    mean, half_width = ci([90.0, 90.0, 90.0])
    assert mean == 90.0
    assert half_width == 0.0


def test_ci_mean_is_correct():
    mean, half_width = ci([90.0, 92.0, 94.0])
    assert abs(mean - 92.0) < 1e-9
    assert half_width > 0.0


# -- build_per_class_rows: the all-classes-enumeration logic --
#
# This is the fix from an earlier review round: a class that's in the
# checkpoint's label vocabulary but has zero real holdout examples must
# still appear as an explicit UNMEASURABLE row, never silently dropped, and
# a class that does have real examples must show its real computed values
# (not a fabricated placeholder).

def test_class_with_zero_examples_is_unmeasurable():
    id_to_label = {0: "L1TF", 1: "MDS"}
    per_class = {
        "MDS": {"precision": 0.88, "recall": 0.18, "f1-score": 0.30, "support": 120},
    }
    label_counts = {"MDS": 24}  # L1TF absent entirely -- zero real examples

    rows = build_per_class_rows(id_to_label, per_class, label_counts)
    by_name = {r["name"]: r for r in rows}

    l1tf = by_name["L1TF"]
    assert l1tf["measurable"] is False
    assert l1tf["precision"] is None
    assert l1tf["recall"] is None
    assert l1tf["f1"] is None
    assert l1tf["n"] == 0
    assert l1tf["confidence"] == "UNMEASURABLE (0 real holdout examples)"


def test_class_with_real_examples_gets_real_computed_values():
    id_to_label = {0: "L1TF", 1: "MDS"}
    per_class = {
        "MDS": {"precision": 0.88, "recall": 0.18, "f1-score": 0.30, "support": 120},
    }
    label_counts = {"MDS": 24}

    rows = build_per_class_rows(id_to_label, per_class, label_counts)
    by_name = {r["name"]: r for r in rows}

    mds = by_name["MDS"]
    assert mds["measurable"] is True
    assert mds["precision"] == 0.88
    assert mds["recall"] == 0.18
    assert mds["f1"] == 0.30
    # `n` must be the RAW per-class count (24), not classification_report's
    # pooled `support` (120, 5x inflated across 5 seeds) -- this is the
    # exact bug this fix corrects.
    assert mds["n"] == 24
    assert mds["n"] != 120


def test_low_confidence_threshold_flags_few_examples():
    id_to_label = {0: "SPECTRE_V2", 1: "RETBLEED"}
    per_class = {
        "SPECTRE_V2": {"precision": 0.0, "recall": 0.0, "f1-score": 0.0, "support": 10},
        "RETBLEED": {"precision": 0.94, "recall": 1.00, "f1-score": 0.97, "support": 100},
    }
    label_counts = {"SPECTRE_V2": 2, "RETBLEED": 20}

    rows = build_per_class_rows(id_to_label, per_class, label_counts,
                                 low_confidence_threshold=10)
    by_name = {r["name"]: r for r in rows}

    assert by_name["SPECTRE_V2"]["confidence"] == "LOW (few real examples)"
    assert by_name["RETBLEED"]["confidence"] == "ok"


def test_rows_sorted_by_class_name():
    id_to_label = {0: "MDS", 1: "L1TF", 2: "BENIGN"}
    per_class = {}
    label_counts = {}

    rows = build_per_class_rows(id_to_label, per_class, label_counts)
    names = [r["name"] for r in rows]
    assert names == sorted(names)
    assert names == ["BENIGN", "L1TF", "MDS"]
