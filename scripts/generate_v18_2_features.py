#!/usr/bin/env python3
"""
Generate V18_2 Features: Rich feature set (v18-style) for expanded v22 data (60k+ samples)

This script:
1. Takes the combined_v22_enhanced.jsonl (60k+ samples with sequences)
2. Regenerates the full v18-style feature set including:
   - N-gram features (ng_1, ng_2, ng_3)
   - Sequence embeddings (64 dims)
   - Attack-specific handcrafted features
   - Graph features (CFG, DFG)
   - Dependency features
3. Outputs unified dataset for ensemble training

This creates a unified dataset where:
- RF can use all rich features (like v18)
- GGNN can use raw sequences (like v22)
"""

import json
import argparse
import sys
import pickle
from pathlib import Path
from collections import Counter
from typing import List, Dict
from tqdm import tqdm
import numpy as np
from multiprocessing import Pool, cpu_count

# Add scripts directory to path
sys.path.insert(0, str(Path(__file__).parent))

from extract_features_enhanced import (
    extract_features_enhanced,
    opcode_of,
    ngrams,
    get_simplified_type,
)
from sequence_encoder import (
    SimpleSequenceEncoder,
    tokenize_sequence,
    build_vocab_from_sequences,
    extract_sequence_embedding,
)


def log(msg: str):
    print(msg, flush=True)


def build_vocabulary(records: List[Dict], min_freq: int = 5) -> Dict[str, int]:
    """Build vocabulary from all sequences for sequence encoder."""
    log("Building vocabulary from sequences...")
    all_tokens = []
    for rec in tqdm(records, desc="Tokenizing"):
        seq = rec.get('sequence', [])
        if seq:
            tokens = tokenize_sequence(seq)
            all_tokens.append(tokens)
    
    vocab = build_vocab_from_sequences(all_tokens, min_freq=min_freq)
    log(f"  Vocabulary size: {len(vocab)}")
    return vocab


def extract_features_for_record(args):
    """Extract features for a single record (for multiprocessing)."""
    rec, encoder = args
    try:
        # Use the enhanced feature extraction
        features = extract_features_enhanced(rec)
        
        # Add sequence embeddings if encoder is available
        seq = rec.get('sequence', [])
        if encoder is not None and seq:
            try:
                seq_emb = extract_sequence_embedding(seq, encoder, "seq_emb")
                features.update(seq_emb)
            except Exception:
                # Add zero embeddings if encoding fails
                for i in range(64):
                    features[f'seq_emb_{i}'] = 0.0
        
        return {
            'id': rec.get('id', rec.get('source_file', '')),
            'label': rec.get('label', 'UNKNOWN'),
            'arch': rec.get('arch', 'unknown'),
            'sequence': seq,  # Keep raw sequence for GGNN
            'features': features,
            'group': rec.get('group', rec.get('label', '')),
            'confidence': rec.get('confidence', 1.0),
            'weight': rec.get('weight', 1.0),
        }
    except Exception as e:
        log(f"  Error processing record: {e}")
        return None


def main():
    parser = argparse.ArgumentParser(description='Generate v18_2 features for expanded dataset')
    parser.add_argument(
        '--input',
        type=Path,
        default=Path('data/features/combined_v22_enhanced.jsonl'),
        help='Input data file with sequences'
    )
    parser.add_argument(
        '--output',
        type=Path,
        default=Path('data/features/combined_v18_2_unified.jsonl'),
        help='Output file with rich features'
    )
    parser.add_argument(
        '--vocab-output',
        type=Path,
        default=Path('models/v18_2_vocab.pkl'),
        help='Output vocabulary file'
    )
    parser.add_argument(
        '--embedding-dim',
        type=int,
        default=64,
        help='Sequence embedding dimension'
    )
    parser.add_argument(
        '--min-freq',
        type=int,
        default=5,
        help='Minimum token frequency for vocabulary'
    )
    parser.add_argument(
        '--workers',
        type=int,
        default=1,  # Single worker to avoid pickling issues
        help='Number of worker processes'
    )
    args = parser.parse_args()
    
    log("=" * 70)
    log("GENERATING V18_2 FEATURES FOR EXPANDED DATASET")
    log("=" * 70)
    
    # Load input data
    log(f"\nLoading data from {args.input}...")
    records = []
    with open(args.input) as f:
        for line in f:
            if line.strip():
                rec = json.loads(line)
                if rec.get('sequence'):  # Only keep records with sequences
                    records.append(rec)
    log(f"  Loaded {len(records)} records with sequences")
    
    # Print label distribution
    label_counts = Counter(r['label'] for r in records)
    log("\nLabel distribution:")
    for label, count in sorted(label_counts.items()):
        log(f"  {label}: {count}")
    
    # Build vocabulary for sequence encoder
    vocab = build_vocabulary(records, min_freq=args.min_freq)
    
    # Save vocabulary
    args.vocab_output.parent.mkdir(parents=True, exist_ok=True)
    with open(args.vocab_output, 'wb') as f:
        pickle.dump(vocab, f)
    log(f"  Saved vocabulary to {args.vocab_output}")
    
    # Create sequence encoder
    log("\nCreating sequence encoder...")
    encoder = SimpleSequenceEncoder(vocab, embedding_dim=args.embedding_dim)
    
    # Extract features for all records
    log("\nExtracting features...")
    args.output.parent.mkdir(parents=True, exist_ok=True)
    
    processed = 0
    skipped = 0
    
    with open(args.output, 'w') as out_f:
        for rec in tqdm(records, desc="Processing"):
            result = extract_features_for_record((rec, encoder))
            if result is not None:
                out_f.write(json.dumps(result) + '\n')
                processed += 1
            else:
                skipped += 1
            
            if processed % 10000 == 0:
                log(f"  Processed {processed} records...")
    
    log(f"\n  Processed: {processed}")
    log(f"  Skipped: {skipped}")
    log(f"  Output: {args.output}")
    
    # Verify output
    log("\nVerifying output...")
    with open(args.output) as f:
        first_rec = json.loads(f.readline())
        features = first_rec.get('features', {})
        
        # Count feature types
        n_seq_emb = sum(1 for k in features if k.startswith('seq_emb_'))
        n_ngrams = sum(1 for k in features if k.startswith('ng_'))
        n_other = len(features) - n_seq_emb - n_ngrams
        
        log(f"  Sample feature counts:")
        log(f"    Sequence embeddings: {n_seq_emb}")
        log(f"    N-gram features: {n_ngrams}")
        log(f"    Other features: {n_other}")
        log(f"    Total: {len(features)}")
        log(f"  Has sequence: {'sequence' in first_rec}")
    
    log("\n" + "=" * 70)
    log("FEATURE GENERATION COMPLETE")
    log("=" * 70)


if __name__ == '__main__':
    main()
