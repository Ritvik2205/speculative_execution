#!/usr/bin/env python3
"""
split_riscv_holdout.py -- STRATIFIED group-holdout split of
eval/data/riscv_labeled.jsonl into a train slice (merged into the x86/ARM
training pool) and a held-out eval slice (never touched by training).

Stratified by label, not a pure random group shuffle: every label with >=2
family groups is guaranteed at least 1 group on EACH side (real holdout
coverage for that class), not left to chance. A label with exactly 1 group
can't be stratified without leaving it with zero training data -- it stays
forced to train. This replaces an earlier pure-random split
(np.random.default_rng(0), single shuffle over all groups) that happened to
put all 6 of L1TF's groups on the train side, leaving L1TF with zero real
holdout examples despite being the largest RISC-V class -- see
docs/superpowers/specs/2026-08-12-riscv-l1tf-coverage-gap-design.md.

No target-ratio top-up pass: coverage is the goal, not hitting an exact
percentage. With the current corpus this naturally lands around 26% eval,
close to the prior ~23% -- if a future corpus change makes the
guarantee-only fraction land far outside a usable holdout size, that's a
reason to revisit this, not something to build defensively now.

Run:  python3 eval/split_riscv_holdout.py
Output: eval/data/riscv_train_slice.jsonl, eval/data/riscv_eval_holdout.jsonl
"""
from __future__ import annotations

import json
import sys
from collections import Counter, defaultdict
from pathlib import Path

import numpy as np

ROOT = Path(__file__).resolve().parent.parent
LABELED = ROOT / "eval" / "data" / "riscv_labeled.jsonl"
DATA_DIR = ROOT / "eval" / "data"


def load(path: Path):
    return [json.loads(l) for l in open(path) if l.strip()]


def build_riscv_split(rows):
    groups_by_label = defaultdict(set)
    for r in rows:
        groups_by_label[r["label"]].add(r["group"])

    rng = np.random.default_rng(0)
    eval_groups = set()

    for label in sorted(groups_by_label):
        groups = sorted(groups_by_label[label])
        rng.shuffle(groups)
        if len(groups) >= 2:
            eval_groups.add(groups[0])

    tr_rows = [r for r in rows if r["group"] not in eval_groups]
    ev_rows = [r for r in rows if r["group"] in eval_groups]

    assert not ({r["group"] for r in tr_rows} & {r["group"] for r in ev_rows}), \
        "group leakage in constructed RISC-V split!"
    for label, groups in groups_by_label.items():
        if len(groups) >= 2:
            assert groups & eval_groups, f"{label} has no group in eval holdout"
            assert groups - eval_groups, f"{label} has no group left in train"
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
