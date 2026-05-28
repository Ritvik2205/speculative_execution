#!/usr/bin/env python3
"""Filter ADGs by confidence and perform semantic-preserving augmentations."""
import argparse
import json
from pathlib import Path
from typing import Dict, List

from wukong_approach.utils.augment_ops import apply_augmentations


def load_adgs(path: Path) -> List[Dict]:
    records = []
    with path.open() as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            records.append(json.loads(line))
    return records


def main():
    ap = argparse.ArgumentParser(description="Filter ADGs and create augmented variants")
    ap.add_argument("--adgs", type=Path, required=True, help="JSONL of ADGs")
    ap.add_argument("--min-conf", type=float, default=0.3)
    ap.add_argument("--require-probe-or-timing", action="store_true")
    ap.add_argument("--out", type=Path, required=True)
    ap.add_argument("--augment", action="store_true")
    ap.add_argument("--max-aug-per-graph", type=int, default=3)
    args = ap.parse_args()

    adgs = load_adgs(args.adgs)
    filtered: List[Dict] = []
    for record in adgs:
        meta = record.get("meta", {})
        confidence = float(meta.get("confidence", 0.0))
        if confidence < args.min_conf:
            continue
        feats = meta.get("features", {})
        if args.require_probe_or_timing:
            if not (feats.get("has_cache_instruction", False) or feats.get("has_timing_instruction", False)):
                continue
        filtered.append(record)

    augmented = []
    if args.augment:
        for record in filtered:
            augmented.extend(apply_augmentations(record, max_variants=args.max_aug_per_graph))

    args.out.parent.mkdir(parents=True, exist_ok=True)
    with args.out.open("w") as f:
        for record in filtered + augmented:
            f.write(json.dumps(record) + "\n")

    print(f"Filtered {len(filtered)} graphs; wrote {len(filtered) + len(augmented)} total to {args.out}")


if __name__ == "__main__":
    main()
