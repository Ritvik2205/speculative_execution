import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "eval"))

import train_riscv_augmented as tra  # noqa: E402


def _write_jsonl(path, rows):
    with open(path, "w") as f:
        for r in rows:
            f.write(json.dumps(r) + "\n")


def test_build_augmented_train_concatenates_both_pools(tmp_path, monkeypatch):
    base_path = tmp_path / "base.jsonl"
    riscv_path = tmp_path / "riscv.jsonl"
    _write_jsonl(base_path, [{"label": "BENIGN", "group": "g1"}] * 3)
    _write_jsonl(riscv_path, [{"label": "L1TF", "group": "riscv_g1"}] * 2)

    monkeypatch.setattr(tra, "GROUP_HOLDOUT_TRAIN", base_path)
    monkeypatch.setattr(tra, "RISCV_TRAIN_SLICE", riscv_path)
    monkeypatch.setattr(tra, "DATA_DIR", tmp_path)

    merged_path = tra.build_augmented_train()
    merged = [json.loads(l) for l in open(merged_path)]
    assert len(merged) == 5
    assert sum(1 for r in merged if r["label"] == "L1TF") == 2
    assert sum(1 for r in merged if r["label"] == "BENIGN") == 3
