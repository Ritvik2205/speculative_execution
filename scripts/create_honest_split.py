"""
Create an academically honest train/test split for the v25 dataset.

Two fixes applied simultaneously:
  1. Sequence-level deduplication: each unique assembly sequence appears at most once.
     This eliminates the 60.6% within-dataset duplication that occurs because the same
     C file is compiled with multiple compilers, optimization levels, and architectures.
  2. Group-aware split: all windows extracted from the same source file go entirely to
     train or entirely to test. This eliminates 100% group contamination where the model
     can memorize source-file assembly style.

After fixing, a sequence the model sees in the test set will be:
  (a) A sequence it has never seen verbatim (no exact duplicates), AND
  (b) From a source file it has never seen (no style memorization).

This is the standard academic protocol for assembly analysis with derived/windowed data.

Outputs:
  data/v25_honest_train.jsonl
  data/v25_honest_test.jsonl
  diagnosis/honest_split_report.json
"""
import json
import hashlib
import os
import random
from collections import defaultdict, Counter

random.seed(42)

DATASET = "v40_export/data/combined_v25_clean.jsonl"
TRAIN_OUT = "data/v25_honest_train.jsonl"
TEST_OUT = "data/v25_honest_test.jsonl"
REPORT_OUT = "diagnosis/honest_split_report.json"
TEST_FRACTION = 0.20


def seq_hash(seq):
    return hashlib.md5("|".join(seq).encode()).hexdigest()


def greedy_group_split(group_sizes, test_fraction, seed=42):
    """
    Assign groups to train or test so that the test fraction of total sequences
    is as close as possible to test_fraction, without splitting any group.

    Uses a deterministic greedy bin-packing: sort groups by size descending,
    assign each to the side that keeps the ratio closest to target.
    """
    rng = random.Random(seed)
    total = sum(group_sizes.values())
    target_test = total * test_fraction

    # Sort largest groups first (deterministic, then random for equal sizes)
    groups = sorted(group_sizes.items(), key=lambda x: (-x[1], x[0]))

    train_groups, test_groups = set(), set()
    train_count, test_count = 0, 0

    for group, size in groups:
        # Assign to the side where adding this group keeps the ratio closer to target
        if test_count + size <= target_test * 1.35 and test_count < target_test:
            test_groups.add(group)
            test_count += size
        else:
            train_groups.add(group)
            train_count += size

    return train_groups, test_groups


def main():
    base = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    in_path = os.path.join(base, DATASET)
    train_path = os.path.join(base, TRAIN_OUT)
    test_path = os.path.join(base, TEST_OUT)
    report_path = os.path.join(base, REPORT_OUT)

    print(f"Loading {in_path} ...")
    records = []
    with open(in_path) as f:
        for line in f:
            line = line.strip()
            if line:
                records.append(json.loads(line))
    print(f"  Total records: {len(records):,}")

    # ── Step 1: Sequence-level deduplication ──────────────────────────────
    # Keep the first occurrence of each (sequence_hash, label) pair.
    # We group by label so that the same sequence cannot appear under two labels
    # (confirmed 0 cross-label dups in Check 1, but we guard anyway).
    print("\nDeduplicating sequences ...")
    seen_hashes = set()  # (hash, label) pairs
    deduped = []
    cross_label_conflicts = 0
    hash_to_label = {}

    for r in records:
        h = seq_hash(r.get("sequence", []))
        label = r["label"]
        key = (h, label)

        if h in hash_to_label and hash_to_label[h] != label:
            cross_label_conflicts += 1
            continue  # drop cross-label duplicate

        if key not in seen_hashes:
            seen_hashes.add(key)
            hash_to_label[h] = label
            deduped.append(r)

    print(f"  After dedup: {len(deduped):,} unique sequences")
    print(f"  Removed:     {len(records) - len(deduped):,} duplicates ({100*(len(records)-len(deduped))/len(records):.1f}%)")
    if cross_label_conflicts:
        print(f"  *** Cross-label conflicts removed: {cross_label_conflicts}")

    # Per-class stats after dedup
    print(f"\n  {'Class':<35} {'Before':>8} {'After':>8} {'Removed%':>9} {'Groups':>7}")
    print(f"  {'-'*70}")
    before_counts = Counter(r["label"] for r in records)
    after_counts = Counter(r["label"] for r in deduped)
    all_classes = sorted(before_counts.keys())
    for cls in all_classes:
        bef = before_counts[cls]
        aft = after_counts[cls]
        grps = len(set(r.get("group", r.get("source_file", "")) for r in deduped if r["label"] == cls))
        print(f"  {cls:<35} {bef:>8,} {aft:>8,} {100*(bef-aft)/bef:>8.1f}% {grps:>7,}")

    # ── Step 2: Group-aware split ─────────────────────────────────────────
    # For each class, identify which groups (source files) exist and how many
    # unique sequences they contribute. Split groups into train/test so that
    # ~20% of unique sequences (by group) go to test.
    print("\nComputing group-aware split ...")

    # Build: class → group → [records]
    class_group_records = defaultdict(lambda: defaultdict(list))
    for r in deduped:
        cls = r["label"]
        grp = r.get("group", r.get("source_file", "UNKNOWN"))
        class_group_records[cls][grp].append(r)

    train_records, test_records = [], []
    split_report = {}

    for cls in all_classes:
        grp_map = class_group_records[cls]
        group_sizes = {g: len(recs) for g, recs in grp_map.items()}
        total_cls = sum(group_sizes.values())

        train_grps, test_grps = greedy_group_split(group_sizes, TEST_FRACTION, seed=42)

        cls_train, cls_test = [], []
        for grp, recs in grp_map.items():
            if grp in test_grps:
                cls_test.extend(recs)
            else:
                cls_train.extend(recs)

        train_records.extend(cls_train)
        test_records.extend(cls_test)

        actual_test_frac = len(cls_test) / total_cls if total_cls > 0 else 0
        split_report[cls] = {
            "total_unique": total_cls,
            "train": len(cls_train),
            "test": len(cls_test),
            "actual_test_fraction": round(actual_test_frac, 4),
            "n_train_groups": len(train_grps),
            "n_test_groups": len(test_grps),
            "train_groups": sorted(train_grps),
            "test_groups": sorted(test_grps),
        }

    # ── Step 3: Verify zero contamination ─────────────────────────────────
    print("\nVerifying split integrity ...")
    train_hashes = set(seq_hash(r.get("sequence", [])) for r in train_records)
    test_hashes = set(seq_hash(r.get("sequence", [])) for r in test_records)
    exact_overlap = len(train_hashes & test_hashes)

    train_groups_set = set(r.get("group", r.get("source_file", "")) for r in train_records)
    test_groups_set = set(r.get("group", r.get("source_file", "")) for r in test_records)
    group_overlap = len(train_groups_set & test_groups_set)

    print(f"  Exact sequence overlap: {exact_overlap}  (target: 0)")
    print(f"  Group overlap:          {group_overlap}  (target: 0)")
    assert exact_overlap == 0, "BUG: exact sequence overlap after dedup+group split!"
    assert group_overlap == 0, "BUG: group overlap after group-aware split!"
    print("  PASS: Zero contamination confirmed.")

    # ── Step 4: Write output files ─────────────────────────────────────────
    print(f"\nWriting train file: {train_path}")
    with open(train_path, "w") as f:
        for r in train_records:
            f.write(json.dumps(r) + "\n")
    print(f"  {len(train_records):,} records written")

    print(f"Writing test file:  {test_path}")
    with open(test_path, "w") as f:
        for r in test_records:
            f.write(json.dumps(r) + "\n")
    print(f"  {len(test_records):,} records written")

    # ── Step 5: Summary report ─────────────────────────────────────────────
    print(f"\n{'='*75}")
    print("HONEST SPLIT SUMMARY")
    print(f"{'='*75}")
    print(f"{'Class':<35} {'UniqueSeqs':>11} {'Train':>7} {'Test':>7} {'Test%':>7} {'TestGrps':>9}")
    print("-" * 75)
    for cls in all_classes:
        d = split_report[cls]
        print(f"{cls:<35} {d['total_unique']:>11,} {d['train']:>7,} {d['test']:>7,} {100*d['actual_test_fraction']:>6.1f}% {d['n_test_groups']:>9,}")
    total_unique = sum(d["total_unique"] for d in split_report.values())
    total_train = sum(d["train"] for d in split_report.values())
    total_test = sum(d["test"] for d in split_report.values())
    print("-" * 75)
    print(f"{'TOTAL':<35} {total_unique:>11,} {total_train:>7,} {total_test:>7,} {100*total_test/total_unique:>6.1f}%")

    print(f"\nVs. contaminated v25 split:")
    print(f"  Old: 55,516 train / 13,879 test — 71.93% exact overlap, 100% group overlap")
    print(f"  New: {total_train:,} train / {total_test:,} test — 0% exact overlap, 0% group overlap")
    print(f"\n  Reduction from dedup: {len(records):,} → {len(deduped):,} unique sequences")
    print(f"  (The model must now generalize to truly unseen source files)")

    # Save JSON report
    report = {
        "original_records": len(records),
        "after_dedup": len(deduped),
        "dedup_removed": len(records) - len(deduped),
        "cross_label_conflicts": cross_label_conflicts,
        "train_count": total_train,
        "test_count": total_test,
        "actual_test_fraction": round(total_test / total_unique, 4),
        "exact_sequence_overlap": exact_overlap,
        "group_overlap": group_overlap,
        "per_class": split_report,
    }
    with open(report_path, "w") as f:
        json.dump(report, f, indent=2)
    print(f"\nReport saved to: {report_path}")

    print(f"\n{'='*75}")
    print("NEXT STEP: Train with the honest split")
    print(f"{'='*75}")
    print("  python3 v40_export/train_gine_v38.py \\")
    print(f"    --train-data {TRAIN_OUT} \\")
    print(f"    --test-data  {TEST_OUT} \\")
    print("    --output-dir viz_v42_honest \\")
    print("    --epochs 100 --patience 20 --hidden-dim 256 --num-layers 4 \\")
    print("    --jk-mode cat --batch-size 32 --lr 1e-3 \\")
    print("    --lambda-con 0.5 --temperature 0.07 --hard-neg-weight 2.0")


if __name__ == "__main__":
    main()
