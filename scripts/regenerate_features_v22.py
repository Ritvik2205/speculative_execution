#!/usr/bin/env python3
"""Regenerate features from combined_v20_balanced.jsonl with enhanced v22 features.

Uses multiprocessing for parallel feature extraction.
"""

import json
import sys
import os
import time
from pathlib import Path
from multiprocessing import Pool, cpu_count
from functools import partial

# Force unbuffered output
if hasattr(sys.stdout, 'reconfigure'):
    sys.stdout.reconfigure(line_buffering=True)
    sys.stderr.reconfigure(line_buffering=True)

# Disable sequence encoder for speed
os.environ['DISABLE_SEQUENCE_ENCODER'] = '1'

# Add scripts directory to path
sys.path.insert(0, str(Path(__file__).parent))


def init_worker():
    """Initialize worker process - disable sequence encoder."""
    import extract_features_enhanced as efe
    efe.HAS_SEQUENCE_ENCODER = False


def process_record(line):
    """Process a single record - called in parallel."""
    from extract_features_enhanced import extract_features_enhanced
    
    try:
        rec = json.loads(line.strip())
    except json.JSONDecodeError:
        return None
    
    label = rec.get('label', 'UNKNOWN')
    seq = rec.get('sequence', [])
    
    if len(seq) < 3:
        return None
    
    # Create record for enhanced feature extraction
    enhanced_rec = {
        'sequence': seq,
        'arch': rec.get('arch', 'unknown'),
        'features': rec.get('features', {}),
    }
    
    # Extract enhanced features
    try:
        feats = extract_features_enhanced(enhanced_rec)
    except Exception:
        return None
    
    # Keep only numeric features for training
    clean_feats = {}
    for k, v in feats.items():
        if isinstance(v, (int, float, bool)):
            clean_feats[k] = int(v) if isinstance(v, bool) else v
    
    if not clean_feats:
        return None
    
    return {
        'label': label,
        'source_file': rec.get('source_file', ''),
        'arch': rec.get('arch', 'unknown'),
        'sequence': seq,
        'features': clean_feats,
        'group': rec.get('group', ''),
    }


def main():
    print("=" * 60, flush=True)
    print("V22 FEATURE REGENERATION SCRIPT (PARALLEL)", flush=True)
    print("=" * 60, flush=True)
    print(f"Starting at {time.strftime('%Y-%m-%d %H:%M:%S')}", flush=True)
    
    input_path = Path("data/features/combined_v20_balanced.jsonl")
    output_path = Path("data/features/combined_v22_enhanced.jsonl")
    
    # Number of worker processes
    num_workers = max(1, cpu_count() - 1)
    print(f"\nUsing {num_workers} worker processes", flush=True)
    
    print(f"Input: {input_path}", flush=True)
    print(f"Output: {output_path}", flush=True)
    
    if not input_path.exists():
        print(f"Error: {input_path} not found", flush=True)
        return 1
    
    # Load all lines into memory for parallel processing
    print(f"\nLoading records...", flush=True)
    with open(input_path) as f:
        lines = f.readlines()
    total_lines = len(lines)
    print(f"  Loaded {total_lines} records", flush=True)
    
    # Process in parallel
    print(f"\nExtracting enhanced v22 features in parallel...", flush=True)
    output_path.parent.mkdir(parents=True, exist_ok=True)
    
    start_time = time.time()
    processed = 0
    skipped = 0
    label_counts = {}
    
    # Use multiprocessing pool with chunked imap for progress reporting
    chunk_size = 1000
    
    with Pool(processes=num_workers, initializer=init_worker) as pool:
        with open(output_path, 'w') as out:
            # Process in chunks for progress reporting
            results_iter = pool.imap(process_record, lines, chunksize=chunk_size)
            
            for i, result in enumerate(results_iter):
                # Progress reporting every 5000 records
                if i % 5000 == 0:
                    elapsed = time.time() - start_time
                    rate = i / elapsed if elapsed > 0 else 0
                    eta = (total_lines - i) / rate if rate > 0 else 0
                    print(f"  [{i:6d}/{total_lines}] {100*i/total_lines:5.1f}% | "
                          f"{rate:.1f} rec/s | ETA: {eta/60:.1f}min | "
                          f"processed={processed} skipped={skipped}", flush=True)
                
                if result is None:
                    skipped += 1
                    continue
                
                out.write(json.dumps(result) + '\n')
                processed += 1
                label = result['label']
                label_counts[label] = label_counts.get(label, 0) + 1
    
    total_time = time.time() - start_time
    print(f"\n{'='*60}", flush=True)
    print(f"Feature regeneration complete!", flush=True)
    print(f"  Total time: {total_time/60:.1f} minutes", flush=True)
    print(f"  Processing rate: {total_lines/total_time:.1f} records/second", flush=True)
    print(f"  Processed: {processed}", flush=True)
    print(f"  Skipped: {skipped}", flush=True)
    print(f"  Output: {output_path}", flush=True)
    print(f"\nLabel distribution:", flush=True)
    for label, count in sorted(label_counts.items(), key=lambda x: -x[1]):
        print(f"  {label}: {count}", flush=True)
    
    # Count new features
    if processed > 0:
        with open(output_path) as f:
            sample = json.loads(f.readline())
            feature_count = len(sample.get('features', {}))
            print(f"\nTotal features per sample: {feature_count}", flush=True)
    
    print("=" * 60, flush=True)
    return 0


if __name__ == "__main__":
    try:
        sys.exit(main())
    except KeyboardInterrupt:
        print("\nInterrupted by user", flush=True)
        sys.exit(1)
    except Exception as e:
        print(f"\nFATAL ERROR: {e}", flush=True)
        import traceback
        traceback.print_exc()
        sys.exit(1)
