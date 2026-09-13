#!/usr/bin/env python3
"""
Phase 9 — Targeted rebalancing: apply heavier augmentation to thin classes only.

Classes with fewer than TARGET_COUNT training samples get N_HEAVY augmentation
attempts per transform (vs the 1 attempt used in phase1). Only thin-class
records are augmented — majority classes are untouched.

Reads:  data/v44_train_enriched.jsonl  (current full training set)
Writes: data/enrichment/phase9_rebalanced.jsonl
"""
import sys, random
from pathlib import Path
from collections import Counter

random.seed(99)

ROOT = Path(__file__).parent.parent.parent
sys.path.insert(0, str(ROOT / "scripts"))
sys.path.insert(0, str(ROOT / "scripts" / "enrichment"))

from common import load_test_hashes, validate_and_dedup, write_jsonl, load_jsonl, seq_hash

TRANSFORMS = []
_transform_names = [
    "rename_registers", "insert_nops", "swap_locally", "recompose_from_slices",
    "perturb_immediates", "substitute_equivalent", "swap_barrier_variants",
    "stride_synonym_swap", "flip_branch_polarity",
]
import augment_asm_windows as _aug
for _name in _transform_names:
    fn = getattr(_aug, _name, None)
    if fn is not None:
        TRANSFORMS.append((_name, fn))

TRAIN_PATH = ROOT / "data" / "v44_train_enriched.jsonl"
OUT_PATH   = ROOT / "data" / "enrichment" / "phase9_rebalanced.jsonl"

TARGET_COUNT  = 600   # target total per attack class
N_HEAVY       = 5     # attempts per transform for thin classes
BENIGN_LABEL  = "BENIGN"


def _apply_safe(fn, seq):
    try:
        result = fn(seq)
        if isinstance(result, tuple):
            result = result[0]
        if result and list(result) != list(seq):
            return list(result)
    except Exception:
        pass
    return None


def main():
    test_hashes = load_test_hashes()
    train_records = load_jsonl(TRAIN_PATH)

    label_counts = Counter(r["label"] for r in train_records)
    print("Current per-class counts:")
    for cls, cnt in sorted(label_counts.items()):
        status = f"  <-- THIN (target {TARGET_COUNT})" if cnt < TARGET_COUNT and cls != BENIGN_LABEL else ""
        print(f"  {cls:<35} {cnt:>6}{status}")

    # Build existing hash set (train + would-be phase9 sources)
    existing_hashes = set()
    for r in train_records:
        h = seq_hash(r.get("sequence", []))
        existing_hashes.add((h, r.get("label", "")))

    thin_classes = {
        cls for cls, cnt in label_counts.items()
        if cnt < TARGET_COUNT and cls != BENIGN_LABEL
    }
    print(f"\nThin classes requiring boost: {sorted(thin_classes)}")
    print(f"Using {len(TRANSFORMS)} transforms × {N_HEAVY} attempts each\n")

    thin_records = [r for r in train_records if r["label"] in thin_classes]
    print(f"Source records for augmentation: {len(thin_records)}")

    # Per-class budget: how many NEW records each thin class needs
    class_budget = {
        cls: max(0, TARGET_COUNT - label_counts[cls])
        for cls in thin_classes
    }
    print("New records needed per class:")
    for cls in sorted(thin_classes):
        print(f"  {cls:<35} need {class_budget[cls]}")

    # Shuffle to avoid ordering bias when we hit budget
    random.shuffle(thin_records)

    candidates = []
    class_accepted: Counter = Counter()

    for i, rec in enumerate(thin_records):
        if i % 200 == 0:
            print(f"  Augmenting {i}/{len(thin_records)} ...")
        label = rec["label"]
        if class_accepted[label] >= class_budget[label]:
            continue  # this class is full

        seq   = rec.get("sequence", [])
        group = rec.get("group", rec.get("source_file", "augmented"))

        for transform_name, transform_fn in TRANSFORMS:
            if class_accepted[label] >= class_budget[label]:
                break
            for _ in range(N_HEAVY):
                if class_accepted[label] >= class_budget[label]:
                    break
                aug_seq = _apply_safe(transform_fn, seq)
                if aug_seq is None:
                    continue
                h = seq_hash(aug_seq)
                pair = (h, label)
                if pair in existing_hashes or (h, "") in {(x, "") for x in test_hashes}:
                    continue
                existing_hashes.add(pair)
                class_accepted[label] += 1
                candidates.append({
                    "label":       label,
                    "sequence":    aug_seq,
                    "source_file": rec.get("source_file", ""),
                    "group":       group,
                    "arch":        rec.get("arch", "unknown"),
                    "augmentation": f"p9_{transform_name}",
                })

    print(f"\nGenerated {len(candidates):,} records (budget-capped, pre-validated)")
    # Still run through validate_and_dedup for test-hash check (existing_hashes already deduped)
    clean, stats = validate_and_dedup(candidates, test_hashes, existing_hashes=None)
    print(f"Validation stats: {stats}")

    write_jsonl(clean, OUT_PATH)

    result_counts = Counter(r["label"] for r in clean)
    print("\nPhase 9 new records per thin class:")
    for cls in sorted(thin_classes):
        new = result_counts.get(cls, 0)
        total = label_counts[cls] + new
        print(f"  {cls:<35} +{new:>5}  →  total {total}")
    print(f"\nTotal phase9 records: {len(clean):,}")
    print(f"Written: {OUT_PATH}")


if __name__ == "__main__":
    main()
