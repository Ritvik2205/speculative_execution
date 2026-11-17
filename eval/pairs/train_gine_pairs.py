#!/usr/bin/env python3
"""Ticket 06, graph-model arms: training data and the pairwise term for `v54/train_gine_v38.py`.

Arms (spec section 4), each on top of the v57 leak/safe training set:
  labels    both sides of every version-2 training pair added as LEAK / SAFE records
  pairwise  the pairs are not added as records; a margin on logit(LEAK) - logit(SAFE) between the
            two sides of a pair is added to the loss (`--pair-data`)
The untrained-on-pairs row is the existing v57 `plain` run (ten seeds).

    python3 -m eval.pairs.train_gine_pairs      # writes the files under eval/pairs/data/v2/

Tainted pointer renamed per pair in every file (`train_data`).
"""
from __future__ import annotations

import json
import random
import sys
from pathlib import Path

from eval.pairs import train_data

ROOT = Path(__file__).resolve().parents[2]
V57_TRAIN = ROOT / "v57" / "data" / "v57_leak_train.jsonl"
OUT = train_data.V2


def labelled_records(pairs):
    """Leaking side then safe side of each pair, as training records. The group is the host, so
    the trainer's group-aware validation split never separates the sides of a pair."""
    return [{"label": label, "sequence": p[side], "arch": "x86_64", "group": f"inj2::{p['host_cluster']}",
             "src": "injected2", "pair_id": p["pair_id"], "side": side}
            for p in pairs for side, label in (("leak", "LEAK"), ("safe", "SAFE"))]


def pair_batches(n_pairs, pairs_per_batch, seed):
    """Index lists into `labelled_records` output: whole pairs, leaking side first."""
    order = list(range(n_pairs))
    random.Random(seed).shuffle(order)
    return [[i for p in order[k:k + pairs_per_batch] for i in (2 * p, 2 * p + 1)]
            for k in range(0, n_pairs, pairs_per_batch)]


def pair_hinge(logits, leak_id, safe_id, margin=1.0):
    """Mean over pairs of max(0, margin - (gap of leaking side - gap of safe side)), where
    gap = logit(LEAK) - logit(SAFE) and rows alternate leaking side, safe side."""
    gap = logits[:, leak_id] - logits[:, safe_id]
    return (margin - (gap[0::2] - gap[1::2])).clamp(min=0).mean()


def _write(path, rows):
    path.write_text("".join(json.dumps(r) + "\n" for r in rows))
    print(f"{len(rows):>6} rows -> {path.relative_to(ROOT)}")


def main() -> int:
    train, dropped = train_data.load("train")
    v57 = [json.loads(l) for l in open(V57_TRAIN) if l.strip()]
    pair_rows = labelled_records(train)
    print(f"v57 train {len(v57)} records; version-2 train {len(train)} pairs ({dropped} dropped)")
    _write(OUT / "gine_train_labels.jsonl", v57 + pair_rows)     # arm `labels`
    _write(OUT / "gine_train_pairs.jsonl", pair_rows)            # arm `pairwise`: --pair-data
    for part in ("val", "test"):                                 # scored, never trained on
        _write(OUT / f"pairs_injected2_{part}_renamed.jsonl", train_data.load(part)[0])
    return 0


if __name__ == "__main__":
    sys.exit(main())
