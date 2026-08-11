#!/usr/bin/env python3
"""
split_riscv_holdout.py -- group-holdout split of eval/data/riscv_labeled.jsonl
into a train slice (to merge into the x86/ARM training pool, Task 3) and a
held-out eval slice (to measure whether real RISC-V training exposure helps
-- never touched by training). Same split mechanics as
eval/group_holdout_full.py (np.random.default_rng(0), shuffle groups, cut
ratio), scoped to RISC-V's own family groups only.

Run:  python3 eval/split_riscv_holdout.py
Output: eval/data/riscv_train_slice.jsonl, eval/data/riscv_eval_holdout.jsonl
"""
from __future__ import annotations

import json
import sys
from collections import Counter
from pathlib import Path

import numpy as np

ROOT = Path(__file__).resolve().parent.parent
LABELED = ROOT / "eval" / "data" / "riscv_labeled.jsonl"
DATA_DIR = ROOT / "eval" / "data"
GROUP_CUT = 0.77


def load(path: Path):
    return [json.loads(l) for l in open(path) if l.strip()]


def build_riscv_split(rows):
    groups = sorted({r["group"] for r in rows})
    rng = np.random.default_rng(0)
    rng.shuffle(groups)
    gcut = int(GROUP_CUT * len(groups))
    eval_groups = set(groups[gcut:])

    tr_rows = [r for r in rows if r["group"] not in eval_groups]
    ev_rows = [r for r in rows if r["group"] in eval_groups]

    assert not ({r["group"] for r in tr_rows} & {r["group"] for r in ev_rows}), \
        "group leakage in constructed RISC-V split!"
    return tr_rows, ev_rows


def main():
    if not LABELED.exists():
        print(f"missing {LABELED} -- run eval/build_riscv_labeled.py first")
        sys.exit(2)
    rows = load(LABELED)
    tr_rows, ev_rows = build_riscv_split(rows)

    DATA_DIR.mkdir(parents=True, exist_ok=True)
    tr_path = DATA_DIR / "riscv_train_slice.jsonl"
    ev_path = DATA_DIR / "riscv_eval_holdout.jsonl"
    with open(tr_path, "w") as f:
        for r in tr_rows:
            f.write(json.dumps(r) + "\n")
    with open(ev_path, "w") as f:
        for r in ev_rows:
            f.write(json.dumps(r) + "\n")

    print(f"riscv pool={len(rows)} groups={len({r['group'] for r in rows})}  "
          f"train-slice={len(tr_rows)} ({len({r['group'] for r in tr_rows})} groups)  "
          f"eval-holdout={len(ev_rows)} ({len({r['group'] for r in ev_rows})} groups)")
    print("train-slice label distribution:", dict(Counter(r["label"] for r in tr_rows)))
    print("eval-holdout label distribution:", dict(Counter(r["label"] for r in ev_rows)))


if __name__ == "__main__":
    main()
