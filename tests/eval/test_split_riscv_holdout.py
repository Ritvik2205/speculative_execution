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
