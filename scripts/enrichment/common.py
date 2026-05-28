# scripts/enrichment/common.py
"""
Shared utilities for all enrichment phases.
The test set is loaded ONCE as a frozenset of hashes and used to reject
any new sequence that would contaminate evaluation.
"""
import hashlib
import json
import os
from pathlib import Path

ROOT = Path(__file__).parent.parent.parent  # SpecExec/
TEST_PATH    = ROOT / "data" / "v25_honest_test.jsonl"    # legacy (window-based)
TEST_PATH_V44 = ROOT / "data" / "v44_honest_test.jsonl"  # function-level test set


def seq_hash(seq: list[str]) -> str:
    return hashlib.md5("|".join(str(tok) for tok in seq).encode()).hexdigest()


def load_test_hashes(path=None) -> frozenset:
    """Load the frozen test set sequence hashes. Call once per script."""
    p = Path(path) if path else TEST_PATH_V44
    if not p.exists():
        p = TEST_PATH
    if not p.exists():
        raise FileNotFoundError(
            f"[common] Frozen test set not found at {p}. "
            "Run scripts/enrichment/rebuild_base_dataset.py first."
        )
    hashes = set()
    with open(p) as f:
        for line in f:
            if line.strip():
                r = json.loads(line)
                hashes.add(seq_hash(r.get("sequence", [])))
    print(f"[common] Loaded {len(hashes):,} frozen test hashes from {p}")
    return frozenset(hashes)


def validate_and_dedup(
    records: list,
    test_hashes: frozenset,
    existing_hashes: set | None = None,
    min_len: int = 5,
    max_len: int = 500,          # raised from 200 → 500 for function-level sequences
) -> tuple:
    """
    Filter records against the frozen test set and deduplicate.
    Returns (clean_records, stats_dict).
    existing_hashes: set of (seq_hash, label) tuples already accepted.
    """
    if existing_hashes is None:
        existing_hashes = set()

    seen = set(existing_hashes)  # copy — caller's set is never mutated
    clean = []
    stats = {
        "input": len(records),
        "rejected_test_collision": 0,
        "rejected_duplicate": 0,
        "rejected_too_short": 0,
        "rejected_too_long": 0,
        "accepted": 0,
    }

    for r in records:
        seq = r.get("sequence", [])
        n = len(seq)
        if n < min_len:
            stats["rejected_too_short"] += 1
            continue
        if n > max_len:
            stats["rejected_too_long"] += 1
            continue
        h = seq_hash(seq)
        if h in test_hashes:
            stats["rejected_test_collision"] += 1
            continue
        key = (h, r.get("label", ""))
        if key in seen:
            stats["rejected_duplicate"] += 1
            continue
        seen.add(key)
        clean.append(r)
        stats["accepted"] += 1

    return clean, stats


def write_jsonl(records: list, path) -> None:
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    with open(path, "w") as f:
        for r in records:
            f.write(json.dumps(r) + "\n")
    print(f"[common] Wrote {len(records):,} records to {path}")


def load_jsonl(path) -> list:
    records = []
    with open(path) as f:
        for line in f:
            if line.strip():
                records.append(json.loads(line))
    return records
