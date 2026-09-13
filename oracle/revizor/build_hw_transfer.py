#!/usr/bin/env python3
"""oracle/revizor/build_hw_transfer.py — generalize P3's real-V4 hardware
transfer split (`build_hwv4_dataset.py`) to MDS, L1TF, and SPECTRE_V1
(docs/NEXT_STEPS_2026-09-11.md, Step 2b).

Background: `oracle/revizor/convert_revizor_gadgets.py` converts the real,
hardware-confirmed Revizor `rvzr_runs/{baseline,smt_off}/{MDS,L1TF,
SPECTRE_V1}/violation-*/program.asm` gadgets into
`eval/data/revizor_<class>_real.jsonl` per class. This module splits each
class's real gadgets into a train-add subset (folded into the training
pool) and a held-out test subset, group-disjoint the same way
`build_hwv4_dataset.py` is generator-seed-disjoint for SPECTRE_V4 -- except
this campaign carries no Revizor *generator seed* metadata, so the split
unit here is each record's `group` field directly (already unique per
violation directory, see `convert_revizor_gadgets.py`), not a seed
extracted from it.

For each class C:
  - `v54/data/v55h_<class>hw_train.jsonl` = v55h_train + the train-add real
    C gadgets (class lowercased, e.g. `v55h_mdshw_train.jsonl`).
  - `eval/data/revizor_<class>_heldout.jsonl` = the held-out real C
    gadgets.

IMPORTANT -- unlike V4: V4's held-out set also carries fenced (SSBP-
mitigation) BENIGN twins of each gadget, because "disable speculative store
bypass" is a single, simple, mechanical `lfence` transformation
(`synth_v4_benign.fence_gadget`). MDS, L1TF, and SPECTRE_V1 don't have an
equally simple structural mitigation transform (MDS needs VERW/microcode
flushing context, L1TF needs page-table/EPT context, SPECTRE_V1 needs an
`lfence` placed at the *right speculation-blocking point*, not just
anywhere) -- fabricating a "fenced twin" here without real hardware
verification would be exactly the kind of unverified synthetic label this
project's oracle-grounding work exists to avoid. So these three classes'
train-add/held-out sets are POSITIVES ONLY; measuring a false-positive rate
on MDS/L1TF/SPECTRE_V1-shaped mitigated code is deferred pending a real
mitigation-transform oracle for each class.

Also unlike V4 (16 gadgets, 5 generator seeds): each class here has only
3-6 real gadgets (post-dedup). A group-disjoint split at this scale is
EXPLORATORY, not a benchmark -- report it as "does real MDS/L1TF/SPECTRE_V1
recall move at all when N held-out gadgets are seen", not as a stable
recall percentage.

Usage:
    python3 oracle/revizor/build_hw_transfer.py --seed 0
    python3 oracle/revizor/build_hw_transfer.py --classes MDS L1TF SPECTRE_V1 --seed 0
"""
from __future__ import annotations

import argparse
import json
import random
import sys
from pathlib import Path
from typing import List, Optional, Tuple

REPO_ROOT = Path(__file__).resolve().parents[2]

DEFAULT_CLASSES = ["MDS", "L1TF", "SPECTRE_V1"]
DEFAULT_V55H_TRAIN_PATH = REPO_ROOT / "v54" / "data" / "v55h_train.jsonl"

# Target fraction of a class's real gadgets to hold out (~40%, aiming for a
# roughly 60/40 train/heldout split -- e.g. 4 train / 2 heldout for n=6).
HELDOUT_TARGET_FRACTION = 0.40


def real_path(cls: str, repo_root: Path = REPO_ROOT) -> Path:
    return repo_root / "eval" / "data" / f"revizor_{cls.lower()}_real.jsonl"


def heldout_path(cls: str, repo_root: Path = REPO_ROOT) -> Path:
    return repo_root / "eval" / "data" / f"revizor_{cls.lower()}_heldout.jsonl"


def train_out_path(cls: str, repo_root: Path = REPO_ROOT) -> Path:
    return repo_root / "v54" / "data" / f"v55h_{cls.lower()}hw_train.jsonl"


def load_jsonl(path: Path) -> List[dict]:
    records = []
    with open(path) as f:
        for line in f:
            line = line.strip()
            if line:
                records.append(json.loads(line))
    return records


def write_jsonl(path: Path, records: List[dict]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with open(path, "w") as f:
        for r in records:
            f.write(json.dumps(r) + "\n")


def split_by_group(
    records: List[dict], seed: int = 0, heldout_fraction: float = HELDOUT_TARGET_FRACTION
) -> Tuple[List[dict], List[dict], List[str], List[str]]:
    """Group-split `records` by their `group` field (each record's group is
    already the atomic split unit for this campaign -- there is no
    generator-seed hierarchy to group by, unlike build_hwv4_dataset's V4
    split). Deterministic per `seed`. Returns
    (train_add_records, heldout_records, train_groups, heldout_groups).
    """
    by_group: dict = {}
    for r in records:
        by_group.setdefault(r["group"], []).append(r)

    distinct_groups = sorted(by_group.keys())
    rng = random.Random(seed)
    rng.shuffle(distinct_groups)

    total = len(records)
    target_heldout = heldout_fraction * total
    n = len(distinct_groups)

    if n == 0:
        return [], [], [], []
    if n == 1:
        # Nothing to hold out without losing the only group's train data
        # entirely: keep everything in train-add, nothing held out.
        return list(records), [], distinct_groups, []

    if n <= 20:
        best_mask = None
        best_diff = None
        for mask in range(1, (1 << n) - 1):  # exclude empty set and full set
            count = sum(
                len(by_group[distinct_groups[i]]) for i in range(n) if mask & (1 << i)
            )
            diff = abs(count - target_heldout)
            if best_diff is None or diff < best_diff:
                best_diff = diff
                best_mask = mask
        heldout_groups = [distinct_groups[i] for i in range(n) if best_mask & (1 << i)]
        train_groups = [distinct_groups[i] for i in range(n) if not (best_mask & (1 << i))]
    else:
        heldout_groups = []
        train_groups = []
        heldout_count = 0
        for g in distinct_groups:
            if heldout_count < target_heldout:
                heldout_groups.append(g)
                heldout_count += len(by_group[g])
            else:
                train_groups.append(g)
        if not train_groups:
            train_groups.append(heldout_groups.pop())
        if not heldout_groups:
            heldout_groups.append(train_groups.pop(0))

    train_groups_set = set(train_groups)
    heldout_groups_set = set(heldout_groups)

    train_add = [r for r in records if r["group"] in train_groups_set]
    heldout = [r for r in records if r["group"] in heldout_groups_set]

    return train_add, heldout, sorted(train_groups), sorted(heldout_groups)


def build_one_class(
    cls: str,
    seed: int = 0,
    v55h_train_path: Path = DEFAULT_V55H_TRAIN_PATH,
    repo_root: Path = REPO_ROOT,
) -> dict:
    """Build the train-add/heldout split for one class and write both
    output files. Returns a summary dict for reporting."""
    rp = real_path(cls, repo_root)
    real = load_jsonl(rp)
    v55h_train = load_jsonl(v55h_train_path)

    train_add, heldout, train_groups, heldout_groups = split_by_group(real, seed=seed)

    assert set(train_groups).isdisjoint(set(heldout_groups)), (
        f"{cls}: group leaked across train-add/heldout split"
    )
    assert len(train_add) + len(heldout) == len(real), (
        f"{cls}: train-add + heldout must account for every real gadget exactly once"
    )

    merged_train = v55h_train + train_add
    assert len(merged_train) == len(v55h_train) + len(train_add)

    hp = heldout_path(cls, repo_root)
    tp = train_out_path(cls, repo_root)
    write_jsonl(hp, heldout)
    write_jsonl(tp, merged_train)

    return {
        "class": cls,
        "total": len(real),
        "train_add": len(train_add),
        "heldout": len(heldout),
        "train_groups": train_groups,
        "heldout_groups": heldout_groups,
        "train_out": tp,
        "heldout_out": hp,
    }


def build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--classes", nargs="+", default=DEFAULT_CLASSES,
                    help=f"vulnerability classes to split (default: {DEFAULT_CLASSES})")
    p.add_argument("--seed", type=int, default=0,
                    help="RNG seed for the deterministic group-shuffle split (default 0)")
    p.add_argument("--v55h-train-path", type=Path, default=DEFAULT_V55H_TRAIN_PATH)
    return p


def main(argv: Optional[List[str]] = None) -> None:
    args = build_parser().parse_args(argv)
    classes = [c.upper() for c in args.classes]

    print("=== Real-hardware transfer split (per class, group-disjoint) ===")
    for cls in classes:
        rp = real_path(cls)
        if not rp.exists():
            print(f"{cls}: SKIP ({rp} not found -- run convert_revizor_gadgets.py first)")
            continue
        summary = build_one_class(cls, seed=args.seed, v55h_train_path=args.v55h_train_path)
        print(f"{cls}: total={summary['total']} "
              f"train-add={summary['train_add']} (groups: {summary['train_groups']}) "
              f"heldout={summary['heldout']} (groups: {summary['heldout_groups']})")
        print(f"  wrote {summary['train_out']}")
        print(f"  wrote {summary['heldout_out']}")


if __name__ == "__main__":
    main(sys.argv[1:])
