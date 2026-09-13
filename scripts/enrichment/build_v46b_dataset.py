#!/usr/bin/env python3
"""
Build v46b train/test datasets.

Takes v44_honest_train/test (the v45 split) and:
  1. Removes existing DOWNFALL samples (676/698 are non-gather helper functions)
  2. Adds phase12 synthetic gather-gadget DOWNFALL samples
  3. Keeps the same test set FROZEN (no new DOWNFALL in test — test measures real PoC)
  4. Rebuilds train split with group-aware dedup

Usage:
  python3 scripts/enrichment/build_v46b_dataset.py
"""

import sys, json, random
from pathlib import Path
from collections import Counter, defaultdict

random.seed(42)

ROOT = Path(__file__).parent.parent.parent
sys.path.insert(0, str(ROOT / "scripts" / "enrichment"))
from common import load_jsonl, write_jsonl, seq_hash

# Sources
V44_TRAIN      = ROOT / "data" / "v44_honest_train.jsonl"
V44_TEST       = ROOT / "data" / "v44_honest_test.jsonl"
PHASE12        = ROOT / "data" / "enrichment" / "phase12_downfall.jsonl"

OUT_TRAIN      = ROOT / "v46b" / "data" / "v46b_train.jsonl"
OUT_TEST       = ROOT / "v46b" / "data" / "v46b_test.jsonl"

LABEL = "DOWNFALL"

# How many gather-gadget DOWNFALL records to use for training
# (capped to avoid dominating the class)
MAX_NEW_DOWNFALL = 600


def main():
    print("=== Building v46b dataset ===")

    # Load base splits
    train_records = load_jsonl(V44_TRAIN)
    test_records  = load_jsonl(V44_TEST)
    print(f"v44 train: {len(train_records):,}  test: {len(test_records):,}")

    # Count existing DOWNFALL
    dl_train = [r for r in train_records if r["label"] == LABEL]
    dl_test  = [r for r in test_records  if r["label"] == LABEL]
    print(f"Existing DOWNFALL: {len(dl_train)} train / {len(dl_test)} test")

    # Remove ALL existing DOWNFALL from train (replace with gather-only data)
    train_no_dl = [r for r in train_records if r["label"] != LABEL]
    print(f"Train without DOWNFALL: {len(train_no_dl):,}")

    # Load phase12 synthetic gather data
    if not PHASE12.exists():
        print(f"[ERROR] phase12 output not found: {PHASE12}")
        print("Run: python3 scripts/enrichment/phase12_downfall_synthetic.py")
        sys.exit(1)

    p12_records = load_jsonl(PHASE12)
    print(f"Phase12 gather records: {len(p12_records):,}")

    # Build test hash set (no new records can overlap)
    test_hashes = {seq_hash(r["sequence"]) for r in test_records}

    # Filter phase12: exclude any test overlap, deduplicate
    seen: set[str] = set()
    clean_p12 = []
    for r in p12_records:
        h = seq_hash(r["sequence"])
        if h in test_hashes:
            continue
        if h in seen:
            continue
        seen.add(h)
        clean_p12.append(r)

    print(f"Phase12 after dedup + test filter: {len(clean_p12):,}")

    # Cap new DOWNFALL
    random.shuffle(clean_p12)
    new_downfall = clean_p12[:MAX_NEW_DOWNFALL]
    print(f"New DOWNFALL (gather-only, capped): {len(new_downfall):,}")

    # Context breakdown
    ctx_counts = Counter(r.get("context", "?") for r in new_downfall)
    for k, v in sorted(ctx_counts.items()):
        print(f"  {k:<20} {v}")

    # Build new train = old train (no DOWNFALL) + new gather DOWNFALL
    new_train = train_no_dl + new_downfall
    random.shuffle(new_train)

    # Integrity check
    train_hashes = {seq_hash(r["sequence"]) for r in new_train}
    overlap = train_hashes & test_hashes
    if overlap:
        print(f"[ERROR] {len(overlap)} sequences overlap train/test — aborting")
        sys.exit(1)

    # Final class distribution
    train_cls = Counter(r["label"] for r in new_train)
    test_cls  = Counter(r["label"] for r in test_records)

    print("\n=== Final v46b Split ===")
    print(f"{'Class':<40} {'Train':>8} {'Test':>6}")
    for cls in sorted(set(train_cls) | set(test_cls)):
        print(f"  {cls:<38} {train_cls.get(cls,0):>8,} {test_cls.get(cls,0):>6,}")
    print(f"\n  {'TOTAL':<38} {len(new_train):>8,} {len(test_records):>6,}")
    print(f"\nIntegrity: seq_overlap={len(overlap)}  (target: 0)")

    # Write
    OUT_TRAIN.parent.mkdir(parents=True, exist_ok=True)
    write_jsonl(new_train, OUT_TRAIN)
    write_jsonl(test_records, OUT_TEST)   # Test set is FROZEN — same as v45
    print(f"\nWrote train → {OUT_TRAIN}")
    print(f"Wrote test  → {OUT_TEST}  (FROZEN — same as v45)")


if __name__ == "__main__":
    main()
