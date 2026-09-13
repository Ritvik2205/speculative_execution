"""
Check 1: Group-level and exact-sequence contamination between train and test splits.

The v25 dataset has no explicit augmentation field, but each source file generates
hundreds of assembly windows. A random stratified split by label (not by group)
means the same source file's windows land in both train and test — a form of
information leakage that inflates reported accuracy.
"""
import json
import hashlib
from collections import defaultdict
from sklearn.model_selection import train_test_split


DATASET = "v40_export/data/combined_v25_clean.jsonl"


def seq_hash(seq):
    return hashlib.md5("|".join(seq).encode()).hexdigest()


def main():
    import os
    base = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    path = os.path.join(base, DATASET)

    print(f"Loading {path} ...")
    records = []
    with open(path) as f:
        for line in f:
            line = line.strip()
            if line:
                records.append(json.loads(line))
    print(f"Total records: {len(records):,}")

    labels = [r["label"] for r in records]
    train_recs, test_recs = train_test_split(
        records, test_size=0.2, stratify=labels, random_state=42
    )
    print(f"Train: {len(train_recs):,}  Test: {len(test_recs):,}")

    # --- Exact sequence hash overlap ---
    train_hashes = set()
    train_hash_labels = {}
    for r in train_recs:
        h = seq_hash(r.get("sequence", []))
        train_hashes.add(h)
        train_hash_labels[h] = r["label"]

    exact_overlap = 0
    same_label_overlap = 0
    cross_label_overlap = 0
    by_class_exact = defaultdict(int)
    for r in test_recs:
        h = seq_hash(r.get("sequence", []))
        if h in train_hashes:
            exact_overlap += 1
            by_class_exact[r["label"]] += 1
            if train_hash_labels[h] == r["label"]:
                same_label_overlap += 1
            else:
                cross_label_overlap += 1

    print(f"\n{'='*60}")
    print("EXACT SEQUENCE OVERLAP (train ↔ test)")
    print(f"{'='*60}")
    print(f"  Test records with exact train match: {exact_overlap:,} / {len(test_recs):,} ({100*exact_overlap/len(test_recs):.2f}%)")
    print(f"  Same-label overlaps:  {same_label_overlap:,}")
    print(f"  Cross-label overlaps: {cross_label_overlap:,}  ← hard label leak")
    if cross_label_overlap > 0:
        print("  *** CRITICAL: identical sequences with different labels in train/test ***")
    print("\n  Per-class exact overlaps:")
    for cls in sorted(by_class_exact):
        print(f"    {cls:<35} {by_class_exact[cls]:>5}")

    # --- Group-level contamination ---
    train_groups = set(r.get("group", r.get("source_file", "")) for r in train_recs)
    group_contaminated = 0
    by_class_group = defaultdict(int)
    for r in test_recs:
        grp = r.get("group", r.get("source_file", ""))
        if grp in train_groups:
            group_contaminated += 1
            by_class_group[r["label"]] += 1

    print(f"\n{'='*60}")
    print("GROUP-LEVEL CONTAMINATION (same source file in both splits)")
    print(f"{'='*60}")
    print(f"  Unique groups in train: {len(train_groups):,}")
    test_groups = set(r.get("group", r.get("source_file", "")) for r in test_recs)
    shared_groups = train_groups & test_groups
    print(f"  Unique groups in test:  {len(test_groups):,}")
    print(f"  Groups appearing in BOTH splits: {len(shared_groups):,}")
    print(f"  Test records whose group also appears in train: {group_contaminated:,} / {len(test_recs):,} ({100*group_contaminated/len(test_recs):.2f}%)")
    print("\n  Per-class group-contaminated records:")
    for cls in sorted(by_class_group):
        n = by_class_group[cls]
        cls_test = sum(1 for r in test_recs if r["label"] == cls)
        print(f"    {cls:<35} {n:>5} / {cls_test:>5} ({100*n/cls_test:.1f}%)")

    # --- Summary ---
    print(f"\n{'='*60}")
    print("SUMMARY")
    print(f"{'='*60}")
    print(f"  Exact sequence contamination rate: {100*exact_overlap/len(test_recs):.2f}%")
    print(f"  Group contamination rate:          {100*group_contaminated/len(test_recs):.2f}%")
    print(f"  Cross-label hard leaks:            {cross_label_overlap}")
    print()
    if cross_label_overlap == 0 and exact_overlap / len(test_recs) < 0.05:
        print("  RESULT: Exact-sequence contamination is LOW (<5%). Safe for publication.")
    else:
        print("  RESULT: Contamination detected. Consider group-aware split (Check 4).")
    print()
    print("  Academic note: Group contamination does NOT cause wrong labels,")
    print("  but DOES allow the model to 'memorize' source-file assembly style")
    print("  rather than learning vulnerability semantics. The group-aware split")
    print("  experiment (scripts/group_aware_split_experiment.py) quantifies this.")

    # Save report
    import json as _json
    report = {
        "total_records": len(records),
        "train_count": len(train_recs),
        "test_count": len(test_recs),
        "exact_sequence_overlap_count": exact_overlap,
        "exact_same_label": same_label_overlap,
        "exact_cross_label": cross_label_overlap,
        "fraction_exact_contaminated_test": round(exact_overlap / len(test_recs), 4),
        "unique_groups_in_train": len(train_groups),
        "unique_groups_in_test": len(test_groups),
        "shared_groups_count": len(shared_groups),
        "group_contaminated_test_count": group_contaminated,
        "fraction_group_contaminated_test": round(group_contaminated / len(test_recs), 4),
        "per_class_exact": dict(by_class_exact),
        "per_class_group": dict(by_class_group),
    }
    out_path = os.path.join(base, "diagnosis", "contamination_report_v25.json")
    with open(out_path, "w") as f:
        _json.dump(report, f, indent=2)
    print(f"\n  Report saved to: {out_path}")


if __name__ == "__main__":
    main()
