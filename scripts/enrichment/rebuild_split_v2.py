#!/usr/bin/env python3
"""
Rebuild train/test split from the fully-enriched dataset.

Takes ALL records (current enriched train + current test), performs a fresh
group-aware split, then caps the test set to TARGET_TEST_PER_CLASS per attack
class and TARGET_TEST_BENIGN for BENIGN. This produces a balanced, properly-
sized test set without modifying any training-phase sources.

Group integrity is preserved: every augmented variant of a source group goes
to the same split as the original (they share the group field).

Outputs:
  data/v44_honest_train.jsonl   — rebuilt (group-aware, group-disjoint from test)
  data/v44_honest_test.jsonl    — rebuilt (balanced, capped, frozen going forward)

Usage:
  python3 scripts/enrichment/rebuild_split_v2.py
"""
import sys, json, random, hashlib
from pathlib import Path
from collections import Counter, defaultdict

random.seed(42)

ROOT = Path(__file__).parent.parent.parent
sys.path.insert(0, str(ROOT / "scripts" / "enrichment"))
from common import write_jsonl, load_jsonl, seq_hash

ENRICHED_TRAIN = ROOT / "data" / "v44_train_enriched.jsonl"
CURRENT_TEST   = ROOT / "data" / "v44_honest_test.jsonl"
OUT_TRAIN      = ROOT / "data" / "v44_honest_train.jsonl"
OUT_TEST       = ROOT / "data" / "v44_honest_test.jsonl"

# Test set targets — set high enough to not cap (true 80/20 by group)
TARGET_TEST_PER_ATTACK = 500   # per attack class (non-limiting in practice)
TARGET_TEST_BENIGN     = 1000  # BENIGN (non-limiting; 2 groups × ~374 = ~748)
BENIGN_LABEL           = "BENIGN"

# 20% of groups go to test → ~20% of records in test (standard 80/20)
TEST_GROUP_FRACTION = 0.20


def main():
    # Load everything
    train_records = load_jsonl(ENRICHED_TRAIN)
    test_records  = load_jsonl(CURRENT_TEST)
    all_records   = train_records + test_records
    print(f"Total records (train+test): {len(all_records):,}")

    # Deduplicate by sequence hash globally (safety)
    seen: set[str] = set()
    deduped = []
    for r in all_records:
        h = seq_hash(r.get("sequence", []))
        if h not in seen:
            seen.add(h)
            deduped.append(r)
    print(f"After global dedup: {len(deduped):,}  (removed {len(all_records)-len(deduped):,})")
    all_records = deduped

    label_counts = Counter(r["label"] for r in all_records)
    print("\nPer-class (full pool):")
    for cls, cnt in sorted(label_counts.items()):
        print(f"  {cls:<40} {cnt:>6,}")

    # Group all records by their group field
    groups: dict[str, list] = defaultdict(list)
    for r in all_records:
        g = r.get("group") or r.get("source_file") or "ungrouped"
        groups[g].append(r)

    # Determine majority label per group
    group_label: dict[str, str] = {}
    for g, recs in groups.items():
        group_label[g] = Counter(r["label"] for r in recs).most_common(1)[0][0]

    # Split groups label-by-label to maintain class balance in both splits
    label_to_groups: dict[str, list[str]] = defaultdict(list)
    for g, lbl in group_label.items():
        label_to_groups[lbl].append(g)

    test_groups: set[str] = set()
    train_groups: set[str] = set()

    for lbl, cls_groups in label_to_groups.items():
        random.shuffle(cls_groups)
        n_test = max(1, int(len(cls_groups) * TEST_GROUP_FRACTION))
        test_groups.update(cls_groups[:n_test])
        train_groups.update(cls_groups[n_test:])

    # Assign records
    test_pool  = [r for r in all_records if (r.get("group") or r.get("source_file") or "ungrouped") in test_groups]
    train_pool = [r for r in all_records if (r.get("group") or r.get("source_file") or "ungrouped") in train_groups]

    print(f"\nRaw test pool:  {len(test_pool):,}")
    print(f"Raw train pool: {len(train_pool):,}")

    # Cap test set per class
    test_pool_by_class: dict[str, list] = defaultdict(list)
    for r in test_pool:
        test_pool_by_class[r["label"]].append(r)

    test_records_new = []
    for cls, recs in test_pool_by_class.items():
        random.shuffle(recs)
        cap = TARGET_TEST_BENIGN if cls == BENIGN_LABEL else TARGET_TEST_PER_ATTACK
        selected = recs[:cap]
        test_records_new.extend(selected)
        # Leftover test-group records are DISCARDED — not moved to train.
        # Moving them would put records sharing a group with test items into
        # training (structural leakage via augmented siblings).

    random.shuffle(test_records_new)

    # De-dup train pool (strictly from train groups only)
    test_hashes = {seq_hash(r["sequence"]) for r in test_records_new}
    seen_train: set[str] = set()
    train_records_new = []
    for r in train_pool:
        h = seq_hash(r.get("sequence", []))
        if h in test_hashes:
            continue  # never allow train hash == test hash
        if h in seen_train:
            continue
        seen_train.add(h)
        train_records_new.append(r)

    # Final integrity checks
    train_hashes_set = {seq_hash(r["sequence"]) for r in train_records_new}
    overlap = train_hashes_set & test_hashes
    assert len(overlap) == 0, f"Sequence overlap: {len(overlap)}"

    train_groups_set = {r.get("group","") for r in train_records_new}
    test_groups_set  = {r.get("group","") for r in test_records_new}
    group_overlap = train_groups_set & test_groups_set - {""}
    if group_overlap:
        print(f"\n[ERROR] {len(group_overlap)} groups in both splits — should be 0 now")
        for g in list(group_overlap)[:5]:
            print(f"  {g}")

    # Per-class breakdown
    test_cls  = Counter(r["label"] for r in test_records_new)
    train_cls = Counter(r["label"] for r in train_records_new)

    print("\n=== Final Split ===")
    print(f"{'Class':<40} {'Train':>8} {'Test':>6}")
    all_cls = sorted(set(train_cls) | set(test_cls))
    for cls in all_cls:
        print(f"  {cls:<38} {train_cls.get(cls,0):>8,} {test_cls.get(cls,0):>6,}")
    print(f"\n  {'TOTAL':<38} {len(train_records_new):>8,} {len(test_records_new):>6,}")
    print(f"\nIntegrity: seq_overlap={len(overlap)}")

    # Write outputs
    write_jsonl(train_records_new, OUT_TRAIN)
    write_jsonl(test_records_new,  OUT_TEST)
    print(f"\nWrote train → {OUT_TRAIN}")
    print(f"Wrote test  → {OUT_TEST}")
    print(f"\n*** Test set is now frozen. Do not re-run this script unless intentionally rebuilding.")


if __name__ == "__main__":
    main()
