# scripts/enrichment/phase1_augment_train.py
"""
Phase 1: Apply augmentation transforms to training sequences ONLY.
The test set is never touched. All output is validated against frozen test hashes
and deduplicated against the base training set before writing.
"""
import sys
import random
from pathlib import Path
from collections import Counter

random.seed(42)

ROOT = Path(__file__).parent.parent.parent
sys.path.insert(0, str(ROOT / "scripts"))
sys.path.insert(0, str(ROOT / "scripts" / "enrichment"))

from common import load_test_hashes, validate_and_dedup, write_jsonl, load_jsonl, seq_hash

# Import each transform individually — catch ImportError per-function
TRANSFORMS = []
_transform_names = [
    "rename_registers", "insert_nops", "swap_locally", "recompose_from_slices",
    "perturb_immediates", "substitute_equivalent", "swap_barrier_variants",
    "stride_synonym_swap", "flip_branch_polarity", "strip_housekeeping",
]

import augment_asm_windows as _aug
for _name in _transform_names:
    fn = getattr(_aug, _name, None)
    if fn is not None:
        TRANSFORMS.append((_name, fn))
    else:
        print(f"[phase1] WARNING: {_name} not found in augment_asm_windows — skipping")

TRAIN_IN = ROOT / "data" / "v44_honest_train.jsonl"
OUT_PATH  = ROOT / "data" / "enrichment" / "phase1_augmented.jsonl"
N_PER_TRANSFORM = 1  # attempts per transform per sequence


def _apply_safe(fn, seq):
    """Call transform; return None on failure or if output equals input."""
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
    train_records = load_jsonl(TRAIN_IN)
    print(f"Loaded {len(train_records):,} training sequences")
    print(f"Using {len(TRANSFORMS)} transforms: {[n for n, _ in TRANSFORMS]}")

    # Build existing hash set so we don't emit copies of training originals
    existing_hashes = set()
    for r in train_records:
        h = seq_hash(r.get("sequence", []))
        existing_hashes.add((h, r.get("label", "")))

    candidates = []
    for i, rec in enumerate(train_records):
        if i % 3000 == 0:
            print(f"  Augmenting {i:,}/{len(train_records):,} ...")
        seq   = rec.get("sequence", [])
        label = rec["label"]
        group = rec.get("group", rec.get("source_file", "augmented"))

        for transform_name, transform_fn in TRANSFORMS:
            for _ in range(N_PER_TRANSFORM):
                aug_seq = _apply_safe(transform_fn, seq)
                if aug_seq is None:
                    continue
                candidates.append({
                    "label": label,
                    "sequence": aug_seq,
                    "source_file": rec.get("source_file", ""),
                    "group": group,
                    "arch": rec.get("arch", "unknown"),
                    "augmentation": transform_name,
                })

    print(f"Generated {len(candidates):,} raw candidates")
    clean, stats = validate_and_dedup(candidates, test_hashes, existing_hashes)
    print(f"Validation stats: {stats}")

    write_jsonl(clean, OUT_PATH)

    label_counts = Counter(r["label"] for r in clean)
    print("\nPer-class augmented records:")
    for cls in sorted(label_counts):
        print(f"  {cls:<35} {label_counts[cls]:>8,}")
    print(f"\nTotal written: {len(clean):,}")


if __name__ == "__main__":
    main()
