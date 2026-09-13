import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "eval"))

from split_riscv_holdout import build_riscv_split  # noqa: E402


def _row(group, label="L1TF"):
    return {"group": group, "label": label, "sequence": ["nop"], "arch": "riscv64",
            "source_file": f"riscv_corpus/{group}.s"}


def test_no_group_appears_in_both_sides():
    rows = [_row(f"riscv_fam_{i}") for i in range(20)]
    tr_rows, ev_rows = build_riscv_split(rows)
    tr_groups = {r["group"] for r in tr_rows}
    ev_groups = {r["group"] for r in ev_rows}
    assert not (tr_groups & ev_groups)


def test_both_sides_nonempty_for_realistic_group_count():
    rows = [_row(f"riscv_fam_{i}") for i in range(20)]
    tr_rows, ev_rows = build_riscv_split(rows)
    assert len(tr_rows) > 0
    assert len(ev_rows) > 0


def test_split_is_deterministic():
    rows = [_row(f"riscv_fam_{i}") for i in range(20)]
    tr1, ev1 = build_riscv_split(rows)
    tr2, ev2 = build_riscv_split(rows)
    assert {r["group"] for r in tr1} == {r["group"] for r in tr2}
    assert {r["group"] for r in ev1} == {r["group"] for r in ev2}


def test_multiple_records_same_group_stay_together():
    rows = [_row("riscv_fam_a"), _row("riscv_fam_a"), _row("riscv_fam_b")] * 5
    tr_rows, ev_rows = build_riscv_split(rows)
    tr_groups = {r["group"] for r in tr_rows}
    ev_groups = {r["group"] for r in ev_rows}
    for g in ("riscv_fam_a", "riscv_fam_b"):
        assert not (g in tr_groups and g in ev_groups)


def _multi_label_rows():
    rows = []
    # 3 labels with >=2 groups (must be stratified across both sides)
    for i in range(5):
        rows.append(_row(f"riscv_l1tf_{i}", label="L1TF"))
    for i in range(3):
        rows.append(_row(f"riscv_mds_{i}", label="MDS"))
    for i in range(2):
        rows.append(_row(f"riscv_bhi_{i}", label="BHI"))
    # 1 label with exactly 1 group (must stay train-only, can't be stratified)
    rows.append(_row("riscv_v4_0", label="SPECTRE_V4"))
    return rows


def test_every_multi_group_label_appears_on_both_sides():
    rows = _multi_label_rows()
    tr_rows, ev_rows = build_riscv_split(rows)
    tr_labels = {r["label"] for r in tr_rows}
    ev_labels = {r["label"] for r in ev_rows}
    for label in ("L1TF", "MDS", "BHI"):
        assert label in tr_labels, f"{label} missing from train side"
        assert label in ev_labels, f"{label} missing from eval side"


def test_single_group_label_stays_train_only():
    rows = _multi_label_rows()
    tr_rows, ev_rows = build_riscv_split(rows)
    ev_labels = {r["label"] for r in ev_rows}
    tr_labels = {r["label"] for r in tr_rows}
    assert "SPECTRE_V4" not in ev_labels
    assert "SPECTRE_V4" in tr_labels


def test_multi_group_label_keeps_at_least_one_group_in_train():
    rows = _multi_label_rows()
    tr_rows, ev_rows = build_riscv_split(rows)
    for label in ("L1TF", "MDS", "BHI"):
        tr_groups_for_label = {r["group"] for r in tr_rows if r["label"] == label}
        assert len(tr_groups_for_label) >= 1, f"{label} has no group left in train"
