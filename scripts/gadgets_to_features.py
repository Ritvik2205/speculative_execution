#!/usr/bin/env python3
"""
Convert gadgets.jsonl (with sequences) to a features file for training.
This script:
1. Reads gadgets.jsonl which contains both pre-extracted features and sequences
2. Applies the enhanced feature extraction on sequences
3. Combines all features for training
"""
import argparse
import json
from pathlib import Path
from collections import defaultdict
import random

# Import the enhanced feature extraction
import sys
sys.path.insert(0, str(Path(__file__).parent))
from extract_features_enhanced import extract_features_enhanced


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
    ap.add_argument("--out", type=Path, default=Path("data/features/gadgets_enhanced_features.jsonl"))
    ap.add_argument("--min-conf", type=float, default=0.1)  # Lower threshold since we have sequences now
    ap.add_argument("--per-class-cap", type=int, default=10000)  # Higher cap
    ap.add_argument("--seed", type=int, default=42)
    args = ap.parse_args()
    
    random.seed(args.seed)
    args.out.parent.mkdir(parents=True, exist_ok=True)

    buckets = defaultdict(list)
    total = 0
    skipped_no_seq = 0
    skipped_low_conf = 0
    
    for rec in load_jsonl(args.inp):
        total += 1
        label = rec.get("type", "UNKNOWN")
        conf = rec.get("confidence", 0.0)
        src = rec.get("source_file", "")
        sequence = rec.get("sequence", [])
        pre_features = rec.get("features", {})
        
        # Skip records without sequences
        if len(sequence) < 3:
            skipped_no_seq += 1
            continue
            
        # Confidence filter
        if conf < args.min_conf:
            skipped_low_conf += 1
            continue
        
        # Create a record compatible with extract_features_enhanced
        enhanced_rec = {
            "sequence": sequence,
            "arch": rec.get("arch", "unknown"),
            "label": label,
            "source_file": src,
        }
        
        # Extract sequence-based features
        seq_features = extract_features_enhanced(enhanced_rec)
        
        # Merge with pre-extracted features (pre-extracted take lower priority)
        combined_features = {}
        
        # First add pre-extracted features
        for k, v in pre_features.items():
            if isinstance(v, (int, float, bool)):
                combined_features[k] = int(v) if isinstance(v, bool) else v
        
        # Then override/add sequence-based features
        for k, v in seq_features.items():
            if isinstance(v, (int, float, bool)):
                combined_features[k] = int(v) if isinstance(v, bool) else v
        
        if not combined_features:
            continue
            
        buckets[label].append({
            "label": label,
            "source_file": src,
            "arch": rec.get("arch", "unknown"),
            "sequence": sequence,  # Keep sequence for potential downstream use
            "features": combined_features,
            "confidence": conf,
            "group": canonical_group_from_path(src),
            "weight": float(conf),
        })

    # Report statistics
    print(f"Processed {total} gadgets")
    print(f"  Skipped (no sequence): {skipped_no_seq}")
    print(f"  Skipped (low confidence): {skipped_low_conf}")
    print(f"\nLabel distribution before capping:")
    for label, items in sorted(buckets.items(), key=lambda x: -len(x[1])):
        print(f"  {label}: {len(items)}")

    # Write output with per-class cap
    kept = 0
    with args.out.open("w") as f:
        for label, items in buckets.items():
            # Shuffle to get diverse samples when capping
            random.shuffle(items)
            cap = min(len(items), args.per_class_cap)
            for rec in items[:cap]:
                f.write(json.dumps(rec) + "\n")
                kept += 1

    print(f"\nWrote {kept} feature records to {args.out}")
    print(f"Classes: {len(buckets)}")


if __name__ == "__main__":
    main()

