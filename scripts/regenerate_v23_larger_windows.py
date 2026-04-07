#!/usr/bin/env python3
"""
Regenerate training data with larger windows (v23).

This script re-runs the full pipeline with increased window sizes to capture
complete attack patterns. Changes from v22:

1. Window sizes: 15 before + 25 after = ~40 instructions (was 8+12=~20)
2. Attack-aware anchoring: centers windows on attack-specific instructions
   (clflush for L1TF, mfence for MDS, cmp for Spectre V1, etc.)
3. Minimum window size: 12 instructions (was 5). Filters out function
   epilogues/prologues that don't contain real attack patterns.
4. Deduplication of overlapping windows within each file.

Pipeline:
  c_vulns/asm_code/*.s
    → [this script: extract + augment + merge + balance + feature extract]
    → data/features/combined_v23_enhanced.jsonl
"""

import json
import sys
import os
import time
import random
import hashlib
from pathlib import Path
from collections import defaultdict, Counter
from multiprocessing import Pool, cpu_count

# Force unbuffered output
if hasattr(sys.stdout, 'reconfigure'):
    sys.stdout.reconfigure(line_buffering=True)
    sys.stderr.reconfigure(line_buffering=True)

# Disable sequence encoder for speed
os.environ['DISABLE_SEQUENCE_ENCODER'] = '1'

# Add scripts directory to path
sys.path.insert(0, str(Path(__file__).parent))


def init_worker():
    """Initialize worker process."""
    import extract_features_enhanced as efe
    efe.HAS_SEQUENCE_ENCODER = False


def process_record_for_features(line):
    """Process a single record for feature extraction (parallel worker)."""
    from extract_features_enhanced import extract_features_enhanced

    try:
        rec = json.loads(line.strip())
    except json.JSONDecodeError:
        return None

    # Use vuln_label as the canonical label (9-class: SPECTRE_V1, L1TF, BENIGN, etc.)
    # NOT the binary 'label' field which is just "vuln"/"benign"
    label = rec.get('vuln_label', rec.get('label', 'UNKNOWN'))
    seq = rec.get('sequence', [])

    if len(seq) < 3:
        return None
    if label == 'UNKNOWN':
        return None

    enhanced_rec = {
        'sequence': seq,
        'arch': rec.get('arch', 'unknown'),
        'features': rec.get('features', {}),
    }

    try:
        feats = extract_features_enhanced(enhanced_rec)
    except Exception:
        return None

    clean_feats = {}
    for k, v in feats.items():
        if isinstance(v, (int, float, bool)):
            clean_feats[k] = int(v) if isinstance(v, bool) else v

    if not clean_feats:
        return None

    return {
        'label': label,  # Now contains 9-class label (SPECTRE_V1, L1TF, BENIGN, etc.)
        'source_file': rec.get('source_file', ''),
        'arch': rec.get('arch', 'unknown'),
        'sequence': seq,
        'features': clean_feats,
        'group': rec.get('group', rec.get('source_file', '')),
    }


def step1_extract_augmented_windows(asm_dir: Path, output_path: Path, seed: int = 123):
    """Step 1: Extract larger windows and augment."""
    from augment_asm_windows import (
        extract_windows_from_file,
        build_control_flow_graph,
        swap_registers_if_disjoint,
        rename_registers,
        swap_locally,
        insert_nops,
        insert_barrier_counterfactual,
        recompose_from_slices,
        analyze_register_usage,
    )

    random.seed(seed)
    print("\n" + "=" * 60, flush=True)
    print("STEP 1: Extract larger windows + augment", flush=True)
    print(f"  ASM dir: {asm_dir}", flush=True)
    print(f"  Output: {output_path}", flush=True)
    print(f"  Window: 15 before + 25 after (~40 total)", flush=True)
    print(f"  Min window size: 12 instructions", flush=True)
    print("=" * 60, flush=True)

    output_path.parent.mkdir(parents=True, exist_ok=True)

    boost_set = {
        'BRANCH_HISTORY_INJECTION', 'INCEPTION', 'RETBLEED',
        'L1TF', 'MDS', 'SPECTRE_V1', 'SPECTRE_V2', 'SPECTRE_V4', 'MELTDOWN',
    }
    boost_factor = 3
    per_file_cap = 64
    written = 0
    label_counts = Counter()
    seq_lengths = []

    with open(output_path, 'w') as fout:
        for asm in sorted(asm_dir.glob("*.s")):
            count = 0
            for seq, branch_idx, is_x86 in extract_windows_from_file(asm):
                if count >= per_file_cap:
                    break

                vuln_label = 'UNKNOWN'
                low = asm.name.lower()
                if 'spectre_1' in low or 'spectre_v1' in low:
                    vuln_label = 'SPECTRE_V1'
                elif 'spectre_2' in low or 'spectre_v2' in low:
                    vuln_label = 'SPECTRE_V2'
                elif 'spectre_4' in low or 'spectre_v4' in low:
                    vuln_label = 'SPECTRE_V4'
                elif 'meltdown' in low:
                    vuln_label = 'MELTDOWN'
                elif 'retbleed' in low:
                    vuln_label = 'RETBLEED'
                elif 'bhi' in low:
                    vuln_label = 'BRANCH_HISTORY_INJECTION'
                elif 'inception' in low:
                    vuln_label = 'INCEPTION'
                elif 'l1tf' in low:
                    vuln_label = 'L1TF'
                elif 'mds' in low:
                    vuln_label = 'MDS'

                rec = {
                    "source_file": str(asm),
                    "arch": "arm64" if "arm64" in asm.name else "unknown",
                    "label": "vuln",
                    "vuln_label": vuln_label,
                    "sequence": seq,
                }

                seq_lengths.append(len(seq))

                # Original
                fout.write(json.dumps(rec) + "\n")
                written += 1
                label_counts[vuln_label] += 1

                # Augmentations
                reg_swap_seq = swap_registers_if_disjoint(seq, is_x86)
                if reg_swap_seq != seq:
                    fout.write(json.dumps({**rec, "augmentation": "reg_swap_if_disjoint", "sequence": reg_swap_seq}) + "\n")
                    written += 1

                fout.write(json.dumps({**rec, "augmentation": "rename_registers", "sequence": rename_registers(seq)}) + "\n")
                written += 1
                fout.write(json.dumps({**rec, "augmentation": "swap_locally", "sequence": swap_locally(seq)}) + "\n")
                written += 1
                fout.write(json.dumps({**rec, "augmentation": "insert_nops", "sequence": insert_nops(seq)}) + "\n")
                written += 1
                fout.write(json.dumps({**rec, "augmentation": "recompose_slices", "sequence": recompose_from_slices(seq)}) + "\n")
                written += 1
                # NOTE: Removed insert_barrier_counterfactual for BENIGN generation.
                # BENIGN samples are now sourced from real GitHub repositories via
                # scripts/crawl_benign_repos.py and validated via scripts/validate_benign_samples.py
                # The old approach created fake BENIGN samples from vulnerable code with barriers,
                # which caused BENIGN classification to collapse (27% recall in v34).

                if vuln_label in boost_set:
                    for _ in range(max(0, boost_factor - 1)):
                        fout.write(json.dumps({**rec, "augmentation": "boost_variant", "sequence": rename_registers(swap_locally(seq))}) + "\n")
                        written += 1

                count += 1

    import statistics
    print(f"\n  Wrote {written} records", flush=True)
    print(f"  Unique original windows: {sum(label_counts.values())}", flush=True)
    print(f"  Sequence lengths: min={min(seq_lengths)}, median={statistics.median(seq_lengths):.0f}, "
          f"mean={statistics.mean(seq_lengths):.1f}, max={max(seq_lengths)}", flush=True)
    print(f"  Label distribution (original only):", flush=True)
    for lbl, cnt in sorted(label_counts.items(), key=lambda x: -x[1]):
        print(f"    {lbl}: {cnt}", flush=True)

    return output_path


def step2_merge_with_negatives(augmented_path: Path, negatives_path: Path, output_path: Path):
    """Step 2: Merge augmented windows with validated GitHub benign samples.
    
    The negatives_path can be either:
    1. Old format: githubCrawl/dataset/negatives.jsonl with 'instructions' field
    2. New format: data/benign_samples_v24_validated.jsonl with 'sequence' field
    """
    print("\n" + "=" * 60, flush=True)
    print("STEP 2: Merge with GitHub benign samples", flush=True)
    print(f"  Augmented: {augmented_path}", flush=True)
    print(f"  Benign samples: {negatives_path}", flush=True)
    print(f"  Output: {output_path}", flush=True)
    print("=" * 60, flush=True)

    output_path.parent.mkdir(parents=True, exist_ok=True)

    count_aug = 0
    count_neg = 0

    with open(output_path, 'w') as f_out:
        # Copy augmented windows
        with open(augmented_path) as f_in:
            for line in f_in:
                f_out.write(line)
                count_aug += 1

        # Add benign samples
        if negatives_path.exists():
            with open(negatives_path) as f_in:
                for line in f_in:
                    try:
                        rec = json.loads(line.strip())
                    except json.JSONDecodeError:
                        continue

                    # Handle both old format (instructions list) and new format (sequence list)
                    if 'sequence' in rec:
                        # New format from crawl_benign_repos.py
                        sequence = rec.get('sequence', [])
                    elif 'instructions' in rec:
                        # Old format from githubCrawl/dataset/negatives.jsonl
                        instrs = rec.get('instructions', [])
                        sequence = [instr.get('raw_line', '') for instr in instrs]
                        sequence = [s for s in sequence if s]  # Remove empty
                    else:
                        continue

                    # Apply same minimum window size filter
                    if len(sequence) < 12:
                        continue

                    new_rec = {
                        "source_file": rec.get('source_file', rec.get('file_path', 'github_unknown')),
                        "arch": rec.get('arch', 'unknown'),
                        "label": "BENIGN",
                        "vuln_label": "BENIGN",
                        "sequence": sequence,
                        "group": rec.get('group', rec.get('file_path', 'github_benign')),
                    }
                    f_out.write(json.dumps(new_rec) + "\n")
                    count_neg += 1
        else:
            print(f"  WARNING: {negatives_path} not found, skipping benign samples", flush=True)

    print(f"  Augmented (vulnerability) records: {count_aug}", flush=True)
    print(f"  Benign records: {count_neg}", flush=True)
    print(f"  Total: {count_aug + count_neg}", flush=True)
    return output_path


def step3_balance_dataset(input_path: Path, output_path: Path, target_per_class: int = 8000):
    """Step 3: Balance dataset via oversampling minority classes and capping majority."""
    print("\n" + "=" * 60, flush=True)
    print("STEP 3: Balance dataset", flush=True)
    print(f"  Input: {input_path}", flush=True)
    print(f"  Output: {output_path}", flush=True)
    print(f"  Target per class: {target_per_class}", flush=True)
    print("=" * 60, flush=True)

    output_path.parent.mkdir(parents=True, exist_ok=True)

    # Group by label
    class_records = defaultdict(list)
    with open(input_path) as f:
        for line in f:
            try:
                rec = json.loads(line.strip())
            except json.JSONDecodeError:
                continue
            label = rec.get('label', rec.get('vuln_label', 'UNKNOWN'))
            # Normalize label
            if label in ('vuln', 'benign'):
                label = rec.get('vuln_label', 'UNKNOWN')
            if label == 'UNKNOWN':
                continue
            class_records[label].append(line.strip())

    print(f"\n  Before balancing:", flush=True)
    for lbl, recs in sorted(class_records.items(), key=lambda x: -len(x[1])):
        print(f"    {lbl}: {len(recs)}", flush=True)

    # Balance: oversample minority, cap majority
    balanced = []
    for label, records in class_records.items():
        if len(records) >= target_per_class:
            # Random sample down
            balanced.extend(random.sample(records, target_per_class))
        else:
            # Include all originals + oversample to reach target
            balanced.extend(records)
            if len(records) > 0:
                needed = target_per_class - len(records)
                balanced.extend(random.choices(records, k=needed))

    random.shuffle(balanced)

    with open(output_path, 'w') as f:
        for line in balanced:
            f.write(line + "\n")

    # Count final distribution
    final_counts = Counter()
    for line in balanced:
        rec = json.loads(line)
        label = rec.get('label', rec.get('vuln_label', 'UNKNOWN'))
        if label in ('vuln', 'benign'):
            label = rec.get('vuln_label', 'UNKNOWN')
        final_counts[label] += 1

    print(f"\n  After balancing:", flush=True)
    for lbl, cnt in sorted(final_counts.items(), key=lambda x: -x[1]):
        print(f"    {lbl}: {cnt}", flush=True)
    print(f"  Total: {sum(final_counts.values())}", flush=True)

    return output_path


def step4_extract_features(input_path: Path, output_path: Path):
    """Step 4: Extract enhanced features (parallel)."""
    print("\n" + "=" * 60, flush=True)
    print("STEP 4: Extract enhanced features (parallel)", flush=True)
    print(f"  Input: {input_path}", flush=True)
    print(f"  Output: {output_path}", flush=True)
    print("=" * 60, flush=True)

    output_path.parent.mkdir(parents=True, exist_ok=True)

    with open(input_path) as f:
        lines = f.readlines()
    total_lines = len(lines)
    print(f"  Loaded {total_lines} records", flush=True)

    num_workers = max(1, cpu_count() - 1)
    print(f"  Using {num_workers} worker processes", flush=True)

    start_time = time.time()
    processed = 0
    skipped = 0
    label_counts = Counter()
    seq_lengths = []

    with Pool(processes=num_workers, initializer=init_worker) as pool:
        with open(output_path, 'w') as out:
            results_iter = pool.imap(process_record_for_features, lines, chunksize=500)

            for i, result in enumerate(results_iter):
                if i % 5000 == 0:
                    elapsed = time.time() - start_time
                    rate = i / elapsed if elapsed > 0 else 0
                    eta = (total_lines - i) / rate if rate > 0 else 0
                    print(f"  [{i:6d}/{total_lines}] {100 * i / total_lines:5.1f}% | "
                          f"{rate:.1f} rec/s | ETA: {eta / 60:.1f}min | "
                          f"processed={processed} skipped={skipped}", flush=True)

                if result is None:
                    skipped += 1
                    continue

                out.write(json.dumps(result) + '\n')
                processed += 1
                label_counts[result['label']] += 1
                seq_lengths.append(len(result['sequence']))

    total_time = time.time() - start_time
    import statistics

    print(f"\n  Feature extraction complete!", flush=True)
    print(f"  Time: {total_time / 60:.1f} minutes ({total_lines / total_time:.1f} rec/s)", flush=True)
    print(f"  Processed: {processed}, Skipped: {skipped}", flush=True)
    print(f"  Sequence lengths: min={min(seq_lengths)}, median={statistics.median(seq_lengths):.0f}, "
          f"mean={statistics.mean(seq_lengths):.1f}, max={max(seq_lengths)}", flush=True)
    print(f"\n  Label distribution:", flush=True)
    for lbl, cnt in sorted(label_counts.items(), key=lambda x: -x[1]):
        print(f"    {lbl}: {cnt}", flush=True)

    # Count features
    if processed > 0:
        with open(output_path) as f:
            sample = json.loads(f.readline())
            feature_count = len(sample.get('features', {}))
            print(f"\n  Features per sample: {feature_count}", flush=True)

    return output_path


def main():
    import argparse
    ap = argparse.ArgumentParser(description="Regenerate training data with larger windows and real benign samples")
    ap.add_argument("--asm-dir", type=Path, default=Path("c_vulns/asm_code"))
    ap.add_argument("--benign-samples", type=Path, default=Path("data/benign_samples_v24_validated.jsonl"),
                    help="Validated benign samples from crawl_benign_repos.py + validate_benign_samples.py")
    ap.add_argument("--negatives", type=Path, default=None,
                    help="[DEPRECATED] Use --benign-samples instead. Old negatives.jsonl path.")
    ap.add_argument("--target-per-class", type=int, default=8000)
    ap.add_argument("--seed", type=int, default=42)
    ap.add_argument("--skip-augment", action="store_true", help="Skip step 1 if augmented file exists")
    ap.add_argument("--skip-merge", action="store_true", help="Skip step 2 if merged file exists")
    ap.add_argument("--skip-balance", action="store_true", help="Skip step 3 if balanced file exists")
    ap.add_argument("--version", type=str, default="v24",
                    help="Version string for output files (default: v24)")
    args = ap.parse_args()

    random.seed(args.seed)
    
    # Use benign_samples if provided, fall back to negatives for backward compatibility
    benign_path = args.benign_samples
    if args.negatives:
        print("WARNING: --negatives is deprecated. Use --benign-samples instead.", flush=True)
        benign_path = args.negatives

    print("=" * 60, flush=True)
    print(f"{args.version.upper()} DATA REGENERATION: REAL BENIGN SAMPLES", flush=True)
    print("=" * 60, flush=True)
    print(f"Started: {time.strftime('%Y-%m-%d %H:%M:%S')}", flush=True)
    print(f"Benign samples source: {benign_path}", flush=True)
    overall_start = time.time()

    # Paths (versioned)
    augmented_path = Path(f"data/dataset/augmented_windows_{args.version}.jsonl")
    merged_path = Path(f"data/dataset/merged_{args.version}.jsonl")
    balanced_path = Path(f"data/features/combined_{args.version}_balanced.jsonl")
    final_path = Path(f"data/features/combined_{args.version}_real_benign.jsonl")

    # Step 1
    if args.skip_augment and augmented_path.exists():
        print(f"\nSkipping step 1 (using existing {augmented_path})", flush=True)
    else:
        step1_extract_augmented_windows(args.asm_dir, augmented_path, seed=args.seed)

    # Step 2
    if args.skip_merge and merged_path.exists():
        print(f"\nSkipping step 2 (using existing {merged_path})", flush=True)
    else:
        step2_merge_with_negatives(augmented_path, benign_path, merged_path)

    # Step 3
    if args.skip_balance and balanced_path.exists():
        print(f"\nSkipping step 3 (using existing {balanced_path})", flush=True)
    else:
        step3_balance_dataset(merged_path, balanced_path, target_per_class=args.target_per_class)

    # Step 4
    step4_extract_features(balanced_path, final_path)

    total_time = time.time() - overall_start
    print("\n" + "=" * 60, flush=True)
    print(f"{args.version.upper()} REGENERATION COMPLETE", flush=True)
    print(f"  Total time: {total_time / 60:.1f} minutes", flush=True)
    print(f"  Output: {final_path}", flush=True)
    print("=" * 60, flush=True)


if __name__ == "__main__":
    try:
        sys.exit(main() or 0)
    except KeyboardInterrupt:
        print("\nInterrupted by user", flush=True)
        sys.exit(1)
    except Exception as e:
        print(f"\nFATAL ERROR: {e}", flush=True)
        import traceback
        traceback.print_exc()
        sys.exit(1)
