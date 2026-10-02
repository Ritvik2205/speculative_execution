import json, sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parents[2]))
from rank.data import load_rows, group_split

def test_load_and_group_split_disjoint(tmp_path):
    f = tmp_path / "samples_signal.jsonl"
    with open(f, "w") as fh:
        for i in range(40):
            fh.write(json.dumps({
                "realized_asm": ["movl (%rax), %ebx", "ret"],
                "verdict": "leak" if i % 2 else "unrunnable",
                "signal": float(i % 2) * 3.0,
                "gadget_id": f"rl_SPECTRE_V1_x86_64_r0_s{i}_hash",
                "class": "SPECTRE_V1"}) + "\n")
    rows = load_rows([str(f)])
    assert rows and all("signal" in r and r["sequence"] and r["arch"] == "x86_64" for r in rows)
    tr, te = group_split(rows, frac=0.25, seed=0)
    assert {r["group"] for r in tr}.isdisjoint({r["group"] for r in te})
    assert len(tr) + len(te) == len(rows)

def test_group_is_coarser_than_rows(tmp_path):
    f = tmp_path / "samples_signal.jsonl"
    with open(f, "w") as fh:
        fh.write(json.dumps({
            "realized_asm": ["movl (%rax), %ebx", "ret"],
            "signal": 1.0,
            "gadget_id": "rl_SPECTRE_V1_x86_64_r0_s0_aaaa",
            "class": "SPECTRE_V1"}) + "\n")
        fh.write(json.dumps({
            "realized_asm": ["movl (%rax), %ebx", "ret"],
            "signal": 2.0,
            "gadget_id": "rl_SPECTRE_V1_x86_64_r1_s9_aaaa",
            "class": "SPECTRE_V1"}) + "\n")
        fh.write(json.dumps({
            "realized_asm": ["movl (%rax), %ebx", "ret"],
            "signal": 3.0,
            "gadget_id": "rl_SPECTRE_V1_x86_64_r0_s0_bbbb",
            "class": "SPECTRE_V1"}) + "\n")
    rows = load_rows([str(f)])
    assert len(rows) == 3
    groups = {r["group"] for r in rows}
    assert len(groups) < len(rows)
    assert len([r for r in rows if r["group"] == "aaaa"]) == 2

def test_null_signal_rows_skipped(tmp_path):
    f = tmp_path / "samples_signal.jsonl"
    with open(f, "w") as fh:
        fh.write(json.dumps({
            "realized_asm": ["movl (%rax), %ebx", "ret"],
            "signal": 3.0,
            "gadget_id": "rl_SPECTRE_V1_x86_64_r0_s0_hash",
            "class": "SPECTRE_V1"}) + "\n")
        fh.write(json.dumps({
            "realized_asm": ["movl (%rax), %ebx", "ret"],
            "signal": None,
            "gadget_id": "rl_SPECTRE_V1_x86_64_r0_s1_hash",
            "class": "SPECTRE_V1"}) + "\n")
    rows = load_rows([str(f)])
    assert len(rows) == 1
    assert rows[0]["signal"] == 3.0
