#!/usr/bin/env python3
"""Split the 16 hardware-confirmed real SPECTRE_V4 gadgets into a
training-add subset and a leakage-disjoint held-out test set, and merge
the training-add subset into the de-shortcut training pool.

Background (see docs/NEXT_STEPS_2026-09-09.md, P3):
`eval/data/revizor_v4_real.jsonl` holds 16 unique SPECTRE_V4 gadgets that
Revizor found by fuzzing real i5-8300H hardware with SSBP mitigation off
(`ssbp_off` campaign). Each gadget's `group` field is
`revizor_v4_<GENSEED>_<hash>`, where `<GENSEED>` is the Revizor generator
seed used to synthesize that gadget's *test-case template*. Gadgets that
share a generator seed are correlated (same template family) — splitting
one seed's gadgets across train and test would leak template structure
across the split, so the split here is done **by whole generator seed**,
never by individual gadget.

This is P3 step 1 only: it produces a positives-only training add and a
leakage-disjoint held-out test set. It does NOT retrain anything.

IMPORTANT — no clean V4-shaped negatives here: the SSBP-mitigated control
run (SSBP on) produced **0** violations, so there are no clean V4-shaped
gadget files on disk to add as BENIGN negatives. This step therefore adds
V4 POSITIVES only; the BENIGN/negative class continues to come from the
existing v55h training pool. (A future step could synthesize
mitigated/fenced versions of these same templates as V4-shaped BENIGN
negatives, which the SSBP-on run did not capture as gadget files.)

Usage:
    python3 oracle/revizor/build_hwv4_dataset.py [--seed 0]
"""
from __future__ import annotations

import argparse
import json
import random
import re
import sys
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[2]

DEFAULT_REAL_V4_PATH = REPO_ROOT / "eval" / "data" / "revizor_v4_real.jsonl"
DEFAULT_V55H_TRAIN_PATH = REPO_ROOT / "v54" / "data" / "v55h_train.jsonl"
DEFAULT_OUT_HELDOUT_PATH = REPO_ROOT / "eval" / "data" / "revizor_v4_heldout.jsonl"
DEFAULT_OUT_TRAIN_PATH = REPO_ROOT / "v54" / "data" / "v55h_hwv4_train.jsonl"

# Target fraction of the 16 gadgets to hold out for the leakage-disjoint
# real-V4 test set (~30%, per docs/NEXT_STEPS_2026-09-09.md P3).
HELDOUT_TARGET_FRACTION = 0.30

_GEN_SEED_RE = re.compile(r"^revizor_v4_(\d+)_")


def extract_gen_seed(record: dict) -> str:
    """Extract the Revizor generator seed from a record's `group` field.

    `group` looks like "revizor_v4_<GENSEED>_<hash>"; the generator seed
    is the middle field.
    """
    group = record["group"]
    m = _GEN_SEED_RE.match(group)
    if not m:
        raise ValueError(f"Cannot parse generator seed from group: {group!r}")
    return m.group(1)


def load_jsonl(path: Path) -> list[dict]:
    records = []
    with open(path) as f:
        for line in f:
            line = line.strip()
            if line:
                records.append(json.loads(line))
    return records


def write_jsonl(path: Path, records: list[dict]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with open(path, "w") as f:
        for r in records:
            f.write(json.dumps(r) + "\n")


def split_by_gen_seed(
    records: list[dict], seed: int = 0
) -> tuple[list[dict], list[dict], list[str], list[str]]:
    """Group-split records by Revizor generator seed.

    Whole generator seeds are assigned to either the train-add set or the
    held-out set — never split within a seed — targeting
    ~HELDOUT_TARGET_FRACTION of the total gadget count in the held-out set.

    The seed order is deterministically shuffled using `seed` (the split
    RNG seed, distinct from the Revizor generator seeds themselves), so
    the same `seed` argument always produces the same split.

    Returns (train_add_records, heldout_records, train_seeds, heldout_seeds).
    """
    by_seed: dict[str, list[dict]] = {}
    for r in records:
        gen_seed = extract_gen_seed(r)
        by_seed.setdefault(gen_seed, []).append(r)

    distinct_seeds = sorted(by_seed.keys())  # deterministic base order
    rng = random.Random(seed)
    rng.shuffle(distinct_seeds)  # deterministic per `seed`, breaks ties below

    total = len(records)
    target_heldout = HELDOUT_TARGET_FRACTION * total
    n = len(distinct_seeds)

    if n >= 2 and n <= 20:
        # Small number of distinct generator seeds: brute-force the subset
        # (whole seeds only) whose gadget count is closest to the target
        # heldout fraction. Iterating bitmasks in the shuffled seed order
        # makes the argmin's tie-break deterministic per `seed`.
        best_mask = None
        best_diff = None
        for mask in range(1, (1 << n) - 1):  # exclude empty set and full set
            count = sum(
                len(by_seed[distinct_seeds[i]]) for i in range(n) if mask & (1 << i)
            )
            diff = abs(count - target_heldout)
            if best_diff is None or diff < best_diff:
                best_diff = diff
                best_mask = mask
        heldout_seeds = [distinct_seeds[i] for i in range(n) if best_mask & (1 << i)]
        train_seeds = [distinct_seeds[i] for i in range(n) if not (best_mask & (1 << i))]
    else:
        # Fallback for many distinct seeds: greedily accumulate shuffled
        # seeds into heldout until the target fraction is reached.
        heldout_seeds = []
        train_seeds = []
        heldout_count = 0
        for gen_seed in distinct_seeds:
            if heldout_count < target_heldout:
                heldout_seeds.append(gen_seed)
                heldout_count += len(by_seed[gen_seed])
            else:
                train_seeds.append(gen_seed)
        if not train_seeds:
            train_seeds.append(heldout_seeds.pop())
        if not heldout_seeds:
            heldout_seeds.append(train_seeds.pop(0))

    train_seeds_set = set(train_seeds)
    heldout_seeds_set = set(heldout_seeds)

    train_add = [r for r in records if extract_gen_seed(r) in train_seeds_set]
    heldout = [r for r in records if extract_gen_seed(r) in heldout_seeds_set]

    return train_add, heldout, sorted(train_seeds), sorted(heldout_seeds)


def build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument(
        "--seed", type=int, default=0, help="RNG seed for the deterministic seed-shuffle split (default 0)"
    )
    p.add_argument("--real-v4-path", type=Path, default=DEFAULT_REAL_V4_PATH)
    p.add_argument("--v55h-train-path", type=Path, default=DEFAULT_V55H_TRAIN_PATH)
    p.add_argument("--out-heldout", type=Path, default=DEFAULT_OUT_HELDOUT_PATH)
    p.add_argument("--out-train", type=Path, default=DEFAULT_OUT_TRAIN_PATH)
    return p


def main(argv: list[str] | None = None) -> None:
    args = build_parser().parse_args(argv)

    real_v4 = load_jsonl(args.real_v4_path)
    v55h_train = load_jsonl(args.v55h_train_path)

    train_add, heldout, train_seeds, heldout_seeds = split_by_gen_seed(
        real_v4, seed=args.seed
    )

    # Sanity: generator-seed-disjoint, all 16 gadgets accounted for exactly once.
    train_add_seeds = {extract_gen_seed(r) for r in train_add}
    heldout_seeds_actual = {extract_gen_seed(r) for r in heldout}
    assert train_add_seeds.isdisjoint(heldout_seeds_actual), (
        "generator seed leaked across train-add/heldout split"
    )
    assert len(train_add) + len(heldout) == len(real_v4), (
        "train-add + heldout must account for every real V4 gadget exactly once"
    )

    merged_train = v55h_train + train_add
    assert len(merged_train) == len(v55h_train) + len(train_add)

    print("=== Revizor real-V4 generator-seed split ===")
    print(f"Total real V4 gadgets: {len(real_v4)}")
    print(f"Train-add seeds ({len(train_seeds)}): {train_seeds}")
    for s in train_seeds:
        n = sum(1 for r in real_v4 if extract_gen_seed(r) == s)
        print(f"  seed {s}: {n} gadgets")
    print(f"Train-add total: {len(train_add)} gadgets")
    print(f"Heldout seeds ({len(heldout_seeds)}): {heldout_seeds}")
    for s in heldout_seeds:
        n = sum(1 for r in real_v4 if extract_gen_seed(r) == s)
        print(f"  seed {s}: {n} gadgets")
    print(f"Heldout total: {len(heldout)} gadgets")
    print()
    print(f"v55h_train.jsonl: {len(v55h_train)} records")
    print(f"v55h_hwv4_train.jsonl (merged): {len(merged_train)} records")

    write_jsonl(args.out_heldout, heldout)
    write_jsonl(args.out_train, merged_train)

    print()
    print(f"Wrote {args.out_heldout} ({len(heldout)} records)")
    print(f"Wrote {args.out_train} ({len(merged_train)} records)")


if __name__ == "__main__":
    main(sys.argv[1:])
