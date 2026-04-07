#!/usr/bin/env python3
"""
Merge GitHub benign (negative) samples with the augmented windows dataset.
Converts the GitHub format to the augmented windows format.
"""
import argparse
import json
from pathlib import Path


def convert_github_sample(github_rec: dict) -> dict:
    """
    Convert a GitHub negative sample to the augmented windows format.
    """
    # Extract raw assembly lines from instructions
    sequence = []
    for instr in github_rec.get('instructions', []):
        raw_line = instr.get('raw_line', '')
        if raw_line:
            sequence.append(raw_line)
    
    # Build the output record
    return {
        'source_file': github_rec.get('file_path', 'github/unknown'),
        'arch': github_rec.get('arch', 'unknown'),
        'label': 'BENIGN',
        'vuln_label': 'BENIGN',
        'sequence': sequence,
        'features': {},  # Will be extracted later
        'group': 'github_benign',
        'augmentation': 'none',
        'meta': github_rec.get('meta', {}),
    }


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--github-negatives', type=Path, 
                        default=Path('githubCrawl/dataset/negatives.jsonl'),
                        help='Path to GitHub negative samples')
    parser.add_argument('--input-dataset', type=Path,
                        default=Path('data/dataset/augmented_windows_v6_filtered.jsonl'),
                        help='Path to the augmented windows dataset to merge with')
    parser.add_argument('--output', type=Path,
                        default=Path('data/dataset/merged_with_github_benign.jsonl'),
                        help='Output path for merged dataset')
    parser.add_argument('--benign-sample-limit', type=int, default=None,
                        help='Limit number of benign samples to include')
    args = parser.parse_args()
    
    args.output.parent.mkdir(parents=True, exist_ok=True)
    
    # Load and convert GitHub benign samples
    print(f"Loading GitHub benign samples from {args.github_negatives}...")
    github_benign = []
    with open(args.github_negatives) as f:
        for line in f:
            if not line.strip():
                continue
            rec = json.loads(line)
            converted = convert_github_sample(rec)
            # Only include samples with actual instructions
            if len(converted['sequence']) >= 5:
                github_benign.append(converted)
    
    print(f"  Loaded {len(github_benign)} valid benign samples")
    
    # Apply limit if specified
    if args.benign_sample_limit and len(github_benign) > args.benign_sample_limit:
        import random
        random.seed(42)
        github_benign = random.sample(github_benign, args.benign_sample_limit)
        print(f"  Limited to {len(github_benign)} samples")
    
    # Load existing dataset
    print(f"Loading existing dataset from {args.input_dataset}...")
    existing_samples = []
    label_counts = {}
    with open(args.input_dataset) as f:
        for line in f:
            if not line.strip():
                continue
            rec = json.loads(line)
            existing_samples.append(rec)
            label = rec.get('vuln_label', rec.get('label', 'UNKNOWN'))
            label_counts[label] = label_counts.get(label, 0) + 1
    
    print(f"  Loaded {len(existing_samples)} existing samples")
    print(f"  Existing label distribution:")
    for label, count in sorted(label_counts.items(), key=lambda x: -x[1]):
        print(f"    {label}: {count}")
    
    # Merge
    print(f"\nMerging datasets...")
    merged = existing_samples + github_benign
    
    # Write output
    with open(args.output, 'w') as f:
        for rec in merged:
            f.write(json.dumps(rec) + '\n')
    
    print(f"\nWrote {len(merged)} samples to {args.output}")
    print(f"  Original: {len(existing_samples)}")
    print(f"  Added GitHub benign: {len(github_benign)}")
    
    # Show final distribution
    final_counts = label_counts.copy()
    final_counts['BENIGN'] = final_counts.get('BENIGN', 0) + len(github_benign)
    print(f"\nFinal label distribution:")
    for label, count in sorted(final_counts.items(), key=lambda x: -x[1]):
        print(f"  {label}: {count}")


if __name__ == '__main__':
    main()

