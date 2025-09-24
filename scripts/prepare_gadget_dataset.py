#!/usr/bin/env python3
import argparse
import json
from pathlib import Path
from collections import defaultdict
from pathlib import Path


def canonical_group_from_path(p: str) -> str:
    name = Path(p).name
    for marker in ("_clang_", "_gcc_"):
        if marker in name:
            return name.split(marker)[0]
    return name.rsplit('.', 1)[0]


def load_jsonl(path: Path):
    with path.open() as f:
        for line in f:
            line = line.strip()
            if line:
                yield json.loads(line)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--in", dest="inp", type=Path, default=Path("c_vulns/extracted_gadgets/gadgets.jsonl"))
    ap.add_argument("--out", type=Path, default=Path("data/dataset/gadgets_features.jsonl"))
    ap.add_argument("--min-conf", type=float, default=0.3)
    ap.add_argument("--per-class-cap", type=int, default=4000)
    ap.add_argument("--require-probe", action="store_true")
    ap.add_argument("--require-timing", action="store_true")
    ap.add_argument("--require-probe-or-timing", action="store_true")
    args = ap.parse_args()

    args.out.parent.mkdir(parents=True, exist_ok=True)

    buckets = defaultdict(list)
    kept = 0
    total = 0
    for rec in load_jsonl(args.inp):
        total += 1
        label = rec.get("type", "UNKNOWN")
        conf = rec.get("confidence", 0.0)
        feats = rec.get("features", {})
        src = rec.get("source_file", "")
        if not isinstance(feats, dict):
            continue
        if conf < args.min_conf:
            continue
        if args.require_probe:
            if not feats.get('has_cache_instruction', False):
                continue
        if args.require_timing:
            if not feats.get('has_timing_instruction', False):
                continue
        if args.require_probe_or_timing:
            if not (feats.get('has_cache_instruction', False) or feats.get('has_timing_instruction', False)):
                continue
        # Keep only numeric/bool features
        clean_feats = {}
        for k, v in feats.items():
            if isinstance(v, (int, float, bool)):
                clean_feats[k] = int(v) if isinstance(v, bool) else v
        if not clean_feats:
            continue
        buckets[label].append({
            "label": label,
            "features": clean_feats,
            "confidence": conf,
            "group": canonical_group_from_path(src),
            "weight": float(conf),
        })

    with args.out.open("w") as f:
        for label, items in buckets.items():
            cap = args.per_class_cap
            for rec in items[:cap]:
                f.write(json.dumps(rec) + "\n")
                kept += 1

    print(f"Filtered {kept}/{total} gadgets into {args.out} across {len(buckets)} classes")


if __name__ == "__main__":
    main()


