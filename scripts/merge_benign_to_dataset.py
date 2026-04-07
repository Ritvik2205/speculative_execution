#!/usr/bin/env python3
"""
Merge new benign samples with the existing training dataset.
Balances classes and creates a new dataset file ready for training.

Usage:
    python scripts/merge_benign_to_dataset.py \
        --existing data/features/combined_v15_discriminative.jsonl \
        --benign data/benign_samples_new.jsonl \
        --output data/features/combined_v20_balanced.jsonl
"""

import argparse
import json
import random
from collections import Counter
from pathlib import Path
from typing import List, Dict


def log(msg: str):
    print(msg, flush=True)


def load_jsonl(path: Path) -> List[Dict]:
    """Load JSONL file."""
    records = []
    with open(path) as f:
        for line in f:
            if line.strip():
                records.append(json.loads(line))
    return records


def save_jsonl(records: List[Dict], path: Path):
    """Save records to JSONL file."""
    path.parent.mkdir(parents=True, exist_ok=True)
    with open(path, 'w') as f:
        for rec in records:
            f.write(json.dumps(rec) + '\n')


def main():
    parser = argparse.ArgumentParser(description="Merge benign samples with existing dataset")
    parser.add_argument("--existing", type=Path, 
                        default=Path("data/features/combined_v15_discriminative.jsonl"),
                        help="Existing dataset with features")
    parser.add_argument("--benign", type=Path,
                        default=Path("data/benign_samples_new.jsonl"),
                        help="New benign samples")
    parser.add_argument("--output", type=Path,
                        default=Path("data/features/combined_v20_balanced.jsonl"),
                        help="Output merged dataset")
    parser.add_argument("--target-benign", type=int, default=8000,
                        help="Target number of benign samples (to match other classes)")
    parser.add_argument("--seed", type=int, default=42)
    args = parser.parse_args()
    
    random.seed(args.seed)
    
    log("=" * 60)
    log("MERGING BENIGN SAMPLES INTO DATASET")
    log("=" * 60)
    
    # Load existing dataset
    log(f"\nLoading existing dataset from {args.existing}...")
    existing = load_jsonl(args.existing)
    log(f"  Loaded {len(existing)} records")
    
    # Show existing distribution
    existing_counts = Counter(r.get('label', 'UNKNOWN') for r in existing)
    log("\nExisting label distribution:")
    for label, count in sorted(existing_counts.items(), key=lambda x: -x[1]):
        log(f"  {label}: {count}")
    
    # Separate existing BENIGN from others
    existing_benign = [r for r in existing if r.get('label') == 'BENIGN']
    existing_other = [r for r in existing if r.get('label') != 'BENIGN']
    
    log(f"\nExisting BENIGN samples: {len(existing_benign)}")
    log(f"Other vulnerability samples: {len(existing_other)}")
    
    # Load new benign samples
    log(f"\nLoading new benign samples from {args.benign}...")
    new_benign = load_jsonl(args.benign)
    log(f"  Loaded {len(new_benign)} new benign samples")
    
    # Convert new benign samples to the expected format
    converted_benign = []
    for rec in new_benign:
        converted = {
            'label': 'BENIGN',
            'source_file': rec.get('source_file', 'github/unknown'),
            'arch': rec.get('arch', 'arm64'),
            'sequence': rec.get('sequence', []),
            'features': {},  # Features will be extracted during training
            'confidence': 1.0,
            'group': rec.get('group', 'github_benign'),
            'weight': 1.0,
        }
        # Only include samples with actual instructions
        if len(converted['sequence']) >= 10:
            converted_benign.append(converted)
    
    log(f"  Valid new benign samples: {len(converted_benign)}")
    
    # Combine all benign samples
    all_benign = existing_benign + converted_benign
    log(f"\nTotal benign samples available: {len(all_benign)}")
    
    # Sample to target size
    if len(all_benign) > args.target_benign:
        random.shuffle(all_benign)
        all_benign = all_benign[:args.target_benign]
        log(f"Sampled down to {args.target_benign} benign samples")
    else:
        log(f"Using all {len(all_benign)} benign samples (below target of {args.target_benign})")
    
    # Combine with other samples
    merged = existing_other + all_benign
    random.shuffle(merged)
    
    # Show final distribution
    final_counts = Counter(r.get('label', 'UNKNOWN') for r in merged)
    log("\nFinal label distribution:")
    for label, count in sorted(final_counts.items(), key=lambda x: -x[1]):
        log(f"  {label}: {count}")
    
    # Save
    log(f"\nSaving {len(merged)} records to {args.output}...")
    save_jsonl(merged, args.output)
    
    log("\n" + "=" * 60)
    log("MERGE COMPLETE")
    log("=" * 60)


if __name__ == "__main__":
    main()
