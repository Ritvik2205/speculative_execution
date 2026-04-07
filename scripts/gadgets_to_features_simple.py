#!/usr/bin/env python3
"""Simple fast conversion of gadgets.jsonl to training features with enhanced extraction."""
import json
from collections import defaultdict
from pathlib import Path
import sys

# Import enhanced feature extraction
sys.path.insert(0, str(Path(__file__).parent))
from extract_features_enhanced import extract_features_enhanced

def canonical_group(p):
    name = Path(p).name
    for marker in ('_clang_', '_gcc_'):
        if marker in name:
            return name.split(marker)[0]
    return name.rsplit('.', 1)[0]

def main():
    buckets = defaultdict(list)
    total = 0
    skipped = 0

    print("Reading gadgets.jsonl and extracting enhanced features...")
    with open('c_vulns/extracted_gadgets/gadgets.jsonl', 'r') as f:
        for i, line in enumerate(f):
            if i % 10000 == 0:
                print(f"  Processed {i} records...")
            total += 1
            rec = json.loads(line)
            label = rec.get('type', 'UNKNOWN')
            conf = rec.get('confidence', 0.0)
            src = rec.get('source_file', '')
            seq = rec.get('sequence', [])
            pre_feats = rec.get('features', {})
            
            if len(seq) < 3:
                skipped += 1
                continue
            
            # Create record for enhanced feature extraction
            enhanced_rec = {
                'sequence': seq,
                'arch': rec.get('arch', 'unknown'),
                'features': pre_feats,  # Pass pre-extracted features to be merged
            }
            
            # Extract enhanced features (includes RETBLEED-specific)
            feats = extract_features_enhanced(enhanced_rec)
            
            # Keep only numeric features for training
            clean_feats = {}
            for k, v in feats.items():
                if isinstance(v, (int, float, bool)):
                    clean_feats[k] = int(v) if isinstance(v, bool) else v
            
            if clean_feats:
                buckets[label].append({
                    'label': label,
                    'source_file': src,
                    'arch': rec.get('arch', 'unknown'),
                    'sequence': seq,
                    'features': clean_feats,
                    'confidence': conf,
                    'group': canonical_group(src),
                    'weight': max(0.5, conf),
                })

    print(f"\nTotal: {total}, Skipped (no seq): {skipped}")
    print("\nLabel distribution:")
    for label, items in sorted(buckets.items(), key=lambda x: -len(x[1])):
        print(f"  {label}: {len(items)}")

    # Write output
    out_path = Path('data/features/gadgets_v7_features.jsonl')
    out_path.parent.mkdir(parents=True, exist_ok=True)

    print(f"\nWriting to {out_path}...")
    kept = 0
    with out_path.open('w') as f:
        for label, items in buckets.items():
            cap = min(len(items), 8000)
            for rec in items[:cap]:
                f.write(json.dumps(rec) + '\n')
                kept += 1

    print(f"Done! Wrote {kept} records")

if __name__ == "__main__":
    main()

