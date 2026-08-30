#!/usr/bin/env python3
"""build_unscreened_test.py — a test split that was never screened by its own labels.

`v54/data/v54_test.jsonl` was built by applying `has_train_attack_signal` — a
label-conditioned rule — to the test pool (see SPECDISCOVER_TEST_SET_SCREENING.md).
Every record in it satisfies a hand-written rule keyed on its own class, which is
selective data snooping and inflates reported accuracy by roughly 5-9pp.

This rebuilds the evaluation split from the same underlying pool
(`v50/data/v50_test.jsonl`, which v53 itself chose *because* it is pre-filter),
applying ONLY label-independent screening:

  - drop records whose sequence also appears in v54_train (never score on train)
  - drop labels outside the checkpoint's class vocabulary
  - drop degenerate records by `passes_quality_filter` (length floor, real
    instructions only) — a property of the code, not of the label

Nothing here consults the label except to check it is a known class, which is a
vocabulary constraint rather than a quality judgement.

Output: `v54/data/v54_test_unscreened.jsonl`. The locked `v54_test.jsonl` is left
byte-identical so every previously reported number stays reproducible.

Run: python3 v54/build_unscreened_test.py [--apply]
"""
from __future__ import annotations

import argparse
import hashlib
import json
import sys
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))

from build_dataset import passes_quality_filter  # noqa: E402

POOL = ROOT / "v50" / "data" / "v50_test.jsonl"
TRAIN = ROOT / "v54" / "data" / "v54_train.jsonl"
LOCKED_TEST = ROOT / "v54" / "data" / "v54_test.jsonl"
OUT = ROOT / "v54" / "data" / "v54_test_unscreened.jsonl"


def load(p):
    return [json.loads(l) for l in open(p) if l.strip()]


def seq_of(r):
    return r.get("sequence") or r.get("instructions") or []


def h(seq):
    return hashlib.sha256("\n".join(seq).encode()).hexdigest()


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--apply", action="store_true", help="write the file (default: dry run)")
    ap.add_argument("--min-instructions", type=int, default=4)
    args = ap.parse_args()

    pool = load(POOL)
    train = load(TRAIN)
    locked = load(LOCKED_TEST)
    known = {r["label"] for r in train}
    train_h = {h(r["sequence"]) for r in train}

    print(f"pre-filter pool ({POOL.name}): {len(pool)}")
    print(f"train vocabulary: {len(known)} classes")

    out, drops = [], Counter()
    for r in pool:
        seq = seq_of(r)
        lab = r.get("label", "UNKNOWN")
        if lab in ("UNKNOWN", "vuln", "benign") or lab not in known:
            drops["label not in train vocabulary"] += 1
            continue
        if h(seq) in train_h:
            drops["also present in v54_train"] += 1
            continue
        if not passes_quality_filter(seq, min_instructions=args.min_instructions):
            drops["failed label-independent quality filter"] += 1
            continue
        out.append({"label": lab, "sequence": seq,
                    "arch": r.get("arch", "unknown"),
                    "group": r.get("group", ""),
                    "source_file": r.get("source_file", "")})

    print("\ndropped (all label-independent except vocabulary):")
    for k, v in drops.most_common():
        print(f"  {v:5d}  {k}")
    print(f"\nunscreened test set: {len(out)} records")

    mix = Counter(r["label"] for r in out)
    locked_mix = Counter(r["label"] for r in locked)
    print(f"\n{'class':28s} {'unscreened':>11s} {'locked':>8s}  delta")
    for c in sorted(set(mix) | set(locked_mix)):
        a, b = mix.get(c, 0), locked_mix.get(c, 0)
        print(f"  {c:26s} {a:11d} {b:8d}  {a-b:+d}")

    if args.apply:
        with OUT.open("w") as f:
            for r in out:
                f.write(json.dumps(r) + "\n")
        print(f"\nwrote {OUT}")
        print(f"{LOCKED_TEST.name} left untouched — prior numbers stay reproducible")
    else:
        print("\ndry run — pass --apply to write")


if __name__ == "__main__":
    main()
