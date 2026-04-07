#!/usr/bin/env python3
import json
from pathlib import Path
import argparse

def load_jsonl(path):
    with open(path, 'r') as f:
        for line in f:
            if line.strip():
                yield json.loads(line)

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--augmented", default="data/dataset/augmented_windows.jsonl", help="Base augmented dataset")
    parser.add_argument("--negatives", default="githubCrawl/dataset/negatives.jsonl", help="GitHub negatives dataset")
    parser.add_argument("--out", default="data/dataset/merged_dataset.jsonl", help="Output merged path")
    args = parser.parse_args()

    output_path = Path(args.out)
    output_path.parent.mkdir(parents=True, exist_ok=True)

    count_aug = 0
    count_neg = 0

    with open(output_path, 'w') as f_out:
        # 1. Process Augmented Windows
        print(f"Processing {args.augmented}...")
        try:
            for rec in load_jsonl(args.augmented):
                # Ensure vuln_label is present
                if 'vuln_label' not in rec:
                    if rec.get('label') == 'benign':
                        rec['vuln_label'] = 'BENIGN'
                    else:
                        # map unknown if needed, but augmented should have it
                        pass
                
                f_out.write(json.dumps(rec) + "\n")
                count_aug += 1
        except FileNotFoundError:
            print(f"Warning: {args.augmented} not found.")

        # 2. Process GitHub Negatives
        print(f"Processing {args.negatives}...")
        try:
            for rec in load_jsonl(args.negatives):
                # Transform to match augmented schema
                
                # Extract sequence from instructions
                instrs = rec.get('instructions', [])
                sequence = [instr.get('raw_line', '') for instr in instrs]
                
                # If any raw_line is missing, skip or reconstruct? 
                # negatives.jsonl should have raw_line.
                
                new_rec = {
                    "source_file": rec.get('file_path', 'github_unknown'),
                    "arch": rec.get('arch', 'unknown'),
                    "label": "benign",
                    "vuln_label": "BENIGN",
                    "sequence": sequence,
                    "confidence": 1.0, # High confidence for real world code
                    "group": "github_negatives" # Put them in a distinct group to avoid leakage if splitting by group
                }
                
                f_out.write(json.dumps(new_rec) + "\n")
                count_neg += 1
        except FileNotFoundError:
             print(f"Warning: {args.negatives} not found.")

    print(f"Merged dataset created at {args.out}")
    print(f"  Augmented samples: {count_aug}")
    print(f"  GitHub negatives:  {count_neg}")
    print(f"  Total:             {count_aug + count_neg}")

if __name__ == "__main__":
    main()


