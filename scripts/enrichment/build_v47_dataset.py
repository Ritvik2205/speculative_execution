#!/usr/bin/env python3
"""
Build v47 train/test datasets.

Takes v46b train/test (gather-aware DOWNFALL already fixed) and:
  1. Adds phase13 synthetic BHI samples to train only (test FROZEN)
  2. Prioritises samples WITH indirect branch instructions (the key BHI signal)
  3. Caps new BHI to avoid dominating the class distribution
  4. Verifies no sequence/group overlap across train/test boundary

Usage:
  python3 scripts/enrichment/build_v47_dataset.py
"""

import sys, json, random
from pathlib import Path
from collections import Counter, defaultdict

random.seed(42)

ROOT = Path(__file__).parent.parent.parent
sys.path.insert(0, str(ROOT / "scripts" / "enrichment"))
from common import load_jsonl, write_jsonl, seq_hash

V46B_TRAIN     = ROOT / "v46b" / "data" / "v46b_train.jsonl"
V46B_TEST      = ROOT / "v46b" / "data" / "v46b_test.jsonl"
PHASE13        = ROOT / "data" / "enrichment" / "phase13_bhi.jsonl"

OUT_TRAIN      = ROOT / "v47" / "data" / "v47_train.jsonl"
OUT_TEST       = ROOT / "v47" / "data" / "v47_test.jsonl"

LABEL = "BRANCH_HISTORY_INJECTION"

# How many new BHI samples to add to train.
# Current BHI in v46b train ≈ 600 samples. Add up to 400 more synthetic ones
# with explicit indirect branches to improve the minority of real BHI gadgets.
MAX_NEW_BHI = 400


def main():
    print("=== Building v47 dataset ===")

    train_records = load_jsonl(V46B_TRAIN)
    test_records  = load_jsonl(V46B_TEST)
    print(f"v46b train: {len(train_records):,}  test: {len(test_records):,}")

    bhi_train = [r for r in train_records if r["label"] == LABEL]
    print(f"Existing BHI in train: {len(bhi_train)}")

    # Build test hash set — no new record may overlap
    test_hashes = {seq_hash(r["sequence"]) for r in test_records}
    test_groups  = {r.get("group", "") for r in test_records}

    # Load phase13 BHI synthetic samples
    if not PHASE13.exists():
        print(f"[ERROR] phase13 output not found: {PHASE13}")
        print("Run: python3 scripts/enrichment/phase13_bhi_synthetic.py")
        sys.exit(1)

    p13_records = load_jsonl(PHASE13)
    print(f"Phase13 BHI records: {len(p13_records):,}")

    # Filter: exclude test overlap and test-group overlap, deduplicate
    seen: set = {seq_hash(r["sequence"]) for r in train_records}
    clean_p13 = []
    n_test_hash_skip  = 0
    n_test_group_skip = 0
    n_dup_skip        = 0

    for r in p13_records:
        h = seq_hash(r["sequence"])
        g = r.get("group", "")

        if h in test_hashes:
            n_test_hash_skip += 1
            continue
        if g in test_groups and g:
            n_test_group_skip += 1
            continue
        if h in seen:
            n_dup_skip += 1
            continue

        seen.add(h)
        clean_p13.append(r)

    print(f"Phase13 filtered: {len(clean_p13):,}  "
          f"(test_hash={n_test_hash_skip}, test_group={n_test_group_skip}, dup={n_dup_skip})")

    # Prioritise samples WITH indirect branch instructions — they carry the
    # distinctive SPEC_INDIRECT edge and is_indirect_branch node flag.
    # Pad with non-indirect-branch samples if needed.
    with_indirect    = [r for r in clean_p13 if r.get("has_indirect_branch", False)]
    without_indirect = [r for r in clean_p13 if not r.get("has_indirect_branch", False)]

    random.shuffle(with_indirect)
    random.shuffle(without_indirect)

    # Take as many with-indirect as available, fill remainder from without
    target_indirect = min(len(with_indirect), MAX_NEW_BHI)
    remainder = MAX_NEW_BHI - target_indirect
    new_bhi = with_indirect[:target_indirect] + without_indirect[:remainder]

    print(f"New BHI: {len(new_bhi):,}  "
          f"(with_indirect={len(with_indirect[:target_indirect])}, "
          f"without={len(without_indirect[:remainder])})")

    new_train = train_records + new_bhi
    random.shuffle(new_train)

    # Integrity check
    train_hashes = {seq_hash(r["sequence"]) for r in new_train}
    overlap = train_hashes & test_hashes
    if overlap:
        print(f"[ERROR] {len(overlap)} sequences overlap train/test — aborting")
        sys.exit(1)

    train_groups = {r.get("group", "") for r in new_train if r.get("group")}
    group_overlap = train_groups & test_groups
    if group_overlap:
        print(f"[ERROR] {len(group_overlap)} groups overlap train/test — aborting")
        sys.exit(1)

    # Final distribution
    train_cls = Counter(r["label"] for r in new_train)
    test_cls  = Counter(r["label"] for r in test_records)

    print(f"\n=== Final v47 Split ===")
    print(f"{'Class':<40} {'Train':>8} {'Test':>6}")
    for cls in sorted(set(train_cls) | set(test_cls)):
        print(f"  {cls:<38} {train_cls.get(cls,0):>8,} {test_cls.get(cls,0):>6,}")
    print(f"\n  {'TOTAL':<38} {len(new_train):>8,} {len(test_records):>6,}")
    print(f"\nIntegrity: seq_overlap={len(overlap)}  group_overlap={len(group_overlap)}  (target: 0)")

    OUT_TRAIN.parent.mkdir(parents=True, exist_ok=True)
    write_jsonl(new_train, OUT_TRAIN)
    write_jsonl(test_records, OUT_TEST)
    print(f"\nWrote train → {OUT_TRAIN}")
    print(f"Wrote test  → {OUT_TEST}  (FROZEN — same as v46b)")


if __name__ == "__main__":
    main()
