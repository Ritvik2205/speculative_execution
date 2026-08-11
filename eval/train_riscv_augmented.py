#!/usr/bin/env python3
"""
train_riscv_augmented.py -- merges eval/data/riscv_train_slice.jsonl onto
the x86/ARM group-holdout training pool (eval/data/group_holdout_train.jsonl,
produced by eval/group_holdout_full.py) and retrains the flagship GINE
spec-builder (train_gine_v38.py --use-spec-builder) with the SAME
hyperparameters and seeds eval/group_holdout_full.py already used for the
x86/ARM group-holdout baseline -- reusing the same recipe is what makes the
before/after comparison meaningful.

The x86/ARM test set (eval/data/group_holdout_test.jsonl) is left completely
unmodified -- it's the regression check, evaluated separately by
eval/evaluate_riscv_augmented.py.

Prerequisite: eval/data/group_holdout_{train,test}.jsonl and
eval/data/riscv_train_slice.jsonl must already exist (run
eval/group_holdout_full.py, then eval/build_riscv_labeled.py and
eval/split_riscv_holdout.py, before this script).

Run:  python3 eval/train_riscv_augmented.py
~8 min/seed (measured from the existing group_holdout_full.py run's log
timestamps), ~40 min for all 5 seeds.
"""
from __future__ import annotations

import json
import os
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
GROUP_HOLDOUT_TRAIN = ROOT / "eval" / "data" / "group_holdout_train.jsonl"
GROUP_HOLDOUT_TEST = ROOT / "eval" / "data" / "group_holdout_test.jsonl"
RISCV_TRAIN_SLICE = ROOT / "eval" / "data" / "riscv_train_slice.jsonl"
DATA_DIR = ROOT / "eval" / "data"
OUT_DIR = ROOT / "eval" / "group_holdout_riscv"
SEEDS = [42, 1, 7, 13, 21]


def load(path: Path):
    return [json.loads(l) for l in open(path) if l.strip()]


def build_augmented_train():
    base = load(GROUP_HOLDOUT_TRAIN)
    riscv = load(RISCV_TRAIN_SLICE)
    merged_path = DATA_DIR / "riscv_augmented_train.jsonl"
    with open(merged_path, "w") as f:
        for r in base + riscv:
            f.write(json.dumps(r) + "\n")
    print(f"augmented train pool: {len(base)} base + {len(riscv)} riscv = "
          f"{len(base) + len(riscv)} records")
    return merged_path


def run_seed(sd: int, tr_path: Path, te_path: Path):
    out_dir = OUT_DIR / f"viz_s{sd}"
    log_path = OUT_DIR / f"s{sd}.log"
    cmd = [
        sys.executable, "-u", "train_gine_v38.py",
        "--train-data", str(tr_path), "--test-data", str(te_path),
        "--output-dir", str(out_dir), "--viz-dir", str(out_dir),
        "--epochs", "60", "--patience", "10",
        "--hidden-dim", "128", "--num-layers", "3", "--jk-mode", "cat",
        "--batch-size", "32", "--lr", "1e-3",
        "--use-spec-builder", "--seed", str(sd),
    ]
    print(f"\n=== seed {sd} ===")
    with open(log_path, "w") as logf:
        proc = subprocess.run(cmd, cwd=str(ROOT / "v54"), stdout=logf,
                               stderr=subprocess.STDOUT,
                               env={"TQDM_DISABLE": "1", **os.environ})
    if proc.returncode != 0:
        print(f"  seed {sd} FAILED (see {log_path})")
        return False
    print(f"  seed {sd}: done, checkpoint at {out_dir}/gine_best.pt")
    return True


def main():
    for p in (GROUP_HOLDOUT_TRAIN, GROUP_HOLDOUT_TEST, RISCV_TRAIN_SLICE):
        if not p.exists():
            print(f"missing {p} -- see this script's docstring for prerequisites")
            sys.exit(2)

    OUT_DIR.mkdir(parents=True, exist_ok=True)
    tr_path = build_augmented_train()

    results = {sd: run_seed(sd, tr_path, GROUP_HOLDOUT_TEST) for sd in SEEDS}
    ok = [sd for sd, success in results.items() if success]
    failed = [sd for sd, success in results.items() if not success]
    print(f"\n{len(ok)}/{len(SEEDS)} seeds succeeded" +
          (f"; failed: {failed}" if failed else ""))
    if not ok:
        sys.exit(1)


if __name__ == "__main__":
    main()
