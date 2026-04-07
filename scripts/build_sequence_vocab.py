#!/usr/bin/env python3
"""
Build vocabulary for sequence encoder from all training sequences.
"""

import argparse
import json
import pickle
from pathlib import Path
from collections import Counter
from sequence_encoder import tokenize_sequence, build_vocab_from_sequences

def load_jsonl(path: Path):
    with path.open() as f:
        for line in f:
            line = line.strip()
            if line:
                yield json.loads(line)

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--data", type=Path, required=True, help="Input JSONL file with sequences")
    ap.add_argument("--out", type=Path, default=Path("models/sequence_vocab.pkl"), help="Output vocabulary file")
    ap.add_argument("--min-freq", type=int, default=2, help="Minimum token frequency")
    args = ap.parse_args()
    
    print(f"Loading sequences from {args.data}...")
    all_sequences = []
    count = 0
    
    for rec in load_jsonl(args.data):
        sequence = rec.get("sequence", [])
        if sequence:
            tokens = tokenize_sequence(sequence)
            if tokens:
                all_sequences.append(tokens)
        count += 1
        if count % 10000 == 0:
            print(f"  Processed {count} records, found {len(all_sequences)} sequences with tokens...")
    
    print(f"\nTotal sequences with tokens: {len(all_sequences)}")
    
    print(f"Building vocabulary (min_freq={args.min_freq})...")
    vocab = build_vocab_from_sequences(all_sequences, min_freq=args.min_freq)
    
    print(f"Vocabulary size: {len(vocab)}")
    print(f"Top 20 tokens:")
    # Count token frequencies
    token_counts = Counter()
    for seq in all_sequences:
        token_counts.update(seq)
    
    for token, count in token_counts.most_common(20):
        if token in vocab:
            print(f"  {token}: {count} (id={vocab[token]})")
    
    # Save vocabulary
    args.out.parent.mkdir(parents=True, exist_ok=True)
    with open(args.out, 'wb') as f:
        pickle.dump(vocab, f)
    
    print(f"\nSaved vocabulary to {args.out}")

if __name__ == "__main__":
    main()

