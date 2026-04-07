#!/usr/bin/env python3
"""Profile feature extraction to find bottlenecks."""

import json
import sys
import time
import os
from pathlib import Path

# Disable sequence encoder
os.environ['DISABLE_SEQUENCE_ENCODER'] = '1'
sys.path.insert(0, str(Path(__file__).parent))

import extract_features_enhanced as efe
efe.HAS_SEQUENCE_ENCODER = False

from extract_features_enhanced import (
    extract_features_enhanced,
    analyze_mds_patterns,
    analyze_spectre_v1_patterns,
    analyze_bhi_patterns,
    analyze_l1tf_patterns,
    analyze_benign_patterns,
    analyze_retbleed_patterns,
    analyze_inception_patterns,
    analyze_graph_features,
    analyze_dependencies,
    compute_mutual_exclusion_scores,
)

def profile_single_record(rec, num_runs=10):
    """Profile each function on a single record."""
    seq = rec.get('sequence', [])
    if len(seq) < 3:
        return None
    
    timings = {}
    
    # Profile each analysis function
    functions = [
        ('mds', lambda: analyze_mds_patterns(seq)),
        ('spectre_v1', lambda: analyze_spectre_v1_patterns(seq)),
        ('bhi', lambda: analyze_bhi_patterns(seq)),
        ('l1tf', lambda: analyze_l1tf_patterns(seq)),
        ('benign', lambda: analyze_benign_patterns(seq)),
        ('retbleed', lambda: analyze_retbleed_patterns(seq)),
        ('inception', lambda: analyze_inception_patterns(seq)),
        ('graph', lambda: analyze_graph_features(seq)),
        ('dependencies', lambda: analyze_dependencies(seq)),
    ]
    
    for name, func in functions:
        start = time.perf_counter()
        for _ in range(num_runs):
            func()
        elapsed = (time.perf_counter() - start) / num_runs
        timings[name] = elapsed * 1000  # ms
    
    # Profile full extraction
    enhanced_rec = {
        'sequence': seq,
        'arch': rec.get('arch', 'unknown'),
        'features': rec.get('features', {}),
    }
    start = time.perf_counter()
    for _ in range(num_runs):
        feats = extract_features_enhanced(enhanced_rec)
    elapsed = (time.perf_counter() - start) / num_runs
    timings['FULL'] = elapsed * 1000
    
    # Profile mutual exclusion (needs feats)
    start = time.perf_counter()
    for _ in range(num_runs):
        compute_mutual_exclusion_scores(feats)
    elapsed = (time.perf_counter() - start) / num_runs
    timings['mutual_exclusion'] = elapsed * 1000
    
    return timings

def main():
    input_path = Path("data/features/combined_v20_balanced.jsonl")
    
    print("Loading sample records...")
    samples = []
    with open(input_path) as f:
        for i, line in enumerate(f):
            if i >= 100:  # Sample 100 records
                break
            rec = json.loads(line.strip())
            if len(rec.get('sequence', [])) >= 3:
                samples.append(rec)
    
    print(f"Profiling {len(samples)} records (10 runs each)...")
    
    all_timings = {}
    for i, rec in enumerate(samples[:20]):  # Profile 20 samples
        print(f"  Sample {i+1}/20: {len(rec.get('sequence', []))} instructions")
        timings = profile_single_record(rec, num_runs=5)
        if timings:
            for k, v in timings.items():
                if k not in all_timings:
                    all_timings[k] = []
                all_timings[k].append(v)
    
    print("\n" + "=" * 60)
    print("PROFILING RESULTS (average ms per call)")
    print("=" * 60)
    
    # Sort by time
    avg_timings = {k: sum(v)/len(v) for k, v in all_timings.items()}
    for name, avg_ms in sorted(avg_timings.items(), key=lambda x: -x[1]):
        pct = (avg_ms / avg_timings.get('FULL', avg_ms)) * 100
        print(f"  {name:20s}: {avg_ms:8.3f} ms ({pct:5.1f}%)")
    
    print("\n" + "=" * 60)
    expected_rate = 1000 / avg_timings.get('FULL', 1)
    print(f"Expected processing rate: {expected_rate:.1f} records/second")
    print(f"Expected total time for 108K records: {108000 / expected_rate / 60:.1f} minutes")
    print("=" * 60)

if __name__ == "__main__":
    main()
