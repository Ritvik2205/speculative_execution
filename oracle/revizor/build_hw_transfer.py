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

UPDATE (task B3): `oracle/revizor/synth_v4_benign.py` now provides
`fence_gadget_for_class`/`make_benign_variant` for MDS/L1TF/SPECTRE_V1 too
(source `synth_mitigated_twin` -- STRUCTURAL, NOT hardware-verified, unlike
V4's `revizor_hw_mitigated` twins). Passing `--with-synth-twins` (default
OFF, so all prior output stays byte-identical) generates one fenced twin per
positive on EACH side of the split and folds it in as BENIGN, mirroring
`build_hwv4_dataset.py`'s V4 treatment -- so a `benign_fp_rate` can finally
be measured for these three classes too. Each twin's group is
`<origgroup>_fenced` (from `make_benign_variant`), which keeps it on the
SAME side of the split as its positive; this is asserted at build time.

Usage:
    python3 oracle/revizor/build_hw_transfer.py --seed 0
    python3 oracle/revizor/build_hw_transfer.py --classes MDS L1TF SPECTRE_V1 --seed 0
    python3 oracle/revizor/build_hw_transfer.py --classes MDS L1TF SPECTRE_V1 --seed 0 --with-synth-twins
"""
from __future__ import annotations

import argparse
import json
import random
import sys
from pathlib import Path
from typing import List, Optional, Tuple

REPO_ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(Path(__file__).resolve().parent))

from synth_v4_benign import make_benign_variant  # noqa: E402

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


def split_unit(record: dict) -> str:
    """The atomic unit this record may NOT be split away from.

    `group` is one violation directory, which used to be the best available
    unit: the original baseline/smt_off campaign carried no generator-seed
    metadata, so "there is no generator-seed hierarchy to group by" was
    literally true. It is no longer true. `run_multiclass_campaign.sh` runs
    one program_generator_seed per directory and
    `convert_revizor_gadgets.py` records it in `campaign`, and a seed
    regenerates a BYTE-IDENTICAL program -- so the 8 L1TF violations from
    seed 1102518044 are 8 observations of one program family. With one
    group per record (74 L1TF records, 74 groups), splitting on `group`
    would degrade to a record-level random split and leak that family
    across train/heldout, inflating held-out recall.

    So: split on `campaign` when present, falling back to `group` for
    records carrying no campaign at all. `campaign` is the program.asm's
    grandparent directory, which makes the unit exactly right for
    multiclass-campaign records (`mc_<ts>/<class>/<seed>/violation-*/` ->
    the seed) and coarser than necessary for the older baseline/smt_off
    ones (`baseline/<CLASS>/violation-*/` -> the class name, so all 6 old
    L1TF gadgets collapse into one unit). Coarser never leaks, so the
    fallback is safe; it only costs a little split granularity.
    """
    return record.get("campaign") or record["group"]


def split_by_group(
    records: List[dict], seed: int = 0, heldout_fraction: float = HELDOUT_TARGET_FRACTION
) -> Tuple[List[dict], List[dict], List[str], List[str]]:
    """Split `records` into train-add/heldout along `split_unit` boundaries
    (see that function for why the unit is the generator seed, not the
    individual violation directory). Deterministic per `seed`. Returns
    (train_add_records, heldout_records, train_groups, heldout_groups) --
    the two group lists are still `group` values, since twin records key
    off `<group>_fenced` and callers report them.
    """
    by_group: dict = {}
    for r in records:
        by_group.setdefault(split_unit(r), []).append(r)

    distinct_groups = sorted(by_group.keys())
    rng = random.Random(seed)
    rng.shuffle(distinct_groups)

    total = len(records)
    target_heldout = heldout_fraction * total
    n = len(distinct_groups)

    if n == 0:
        return [], [], [], []
    if n == 1:
        # Nothing to hold out without losing the only unit's train data
        # entirely: keep everything in train-add, nothing held out.
        return list(records), [], sorted({r["group"] for r in records}), []

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

    train_units = set(train_groups)
    heldout_units = set(heldout_groups)

    train_add = [r for r in records if split_unit(r) in train_units]
    heldout = [r for r in records if split_unit(r) in heldout_units]

    # Report `group` values, not unit names: twins key off `<group>_fenced`
    # and build_one_class asserts twin origins against these lists.
    return (
        train_add,
        heldout,
        sorted({r["group"] for r in train_add}),
        sorted({r["group"] for r in heldout}),
    )


def _origin_group(twin_group: str) -> str:
    """Strip a fenced twin's `_fenced` suffix to recover its positive's
    original `group`. `make_benign_variant` always appends exactly this
    suffix (see synth_v4_benign.py)."""
    return twin_group[: -len("_fenced")] if twin_group.endswith("_fenced") else twin_group


def _make_twins(records: List[dict], cls: str) -> List[dict]:
    return [make_benign_variant(r, vuln_class=cls) for r in records]


def build_one_class(
    cls: str,
    seed: int = 0,
    v55h_train_path: Path = DEFAULT_V55H_TRAIN_PATH,
    repo_root: Path = REPO_ROOT,
    with_synth_twins: bool = False,
    out_root: Optional[Path] = None,
) -> dict:
    """Build the train-add/heldout split for one class and write both
    output files. Returns a summary dict for reporting.

    `out_root` (default: `repo_root`) is where the two outputs are written.
    Inputs and outputs are separable on purpose: the tests read the real
    corpus under `repo_root` but must not write the repo's committed
    heldout/train files as a side effect of running the suite, so they pass
    a tmp_path here.

    `with_synth_twins=False` (default): positives-only, byte-identical to
    this module's original behavior.

    `with_synth_twins=True`: additionally generates a fenced BENIGN twin
    (`synth_v4_benign.make_benign_variant`) of EACH train-add positive and
    of EACH held-out positive, and folds each twin into the same side of
    the split as its positive (its `group` is `<origgroup>_fenced`, so it
    stays on that side by construction -- asserted below).
    """
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

    train_add_twins: List[dict] = []
    heldout_twins: List[dict] = []
    twin_source: Optional[str] = None

    if with_synth_twins:
        train_add_twins = _make_twins(train_add, cls)
        heldout_twins = _make_twins(heldout, cls)

        train_groups_set = set(train_groups)
        heldout_groups_set = set(heldout_groups)
        train_twin_origins = {_origin_group(t["group"]) for t in train_add_twins}
        heldout_twin_origins = {_origin_group(t["group"]) for t in heldout_twins}

        # A twin's origin group must match a positive on the SAME side of
        # the split -- no twin may leak across the split.
        assert train_twin_origins.issubset(train_groups_set), (
            f"{cls}: a train-add twin's origin group is not among the train-add groups"
        )
        assert heldout_twin_origins.issubset(heldout_groups_set), (
            f"{cls}: a heldout twin's origin group is not among the heldout groups"
        )
        assert train_twin_origins.isdisjoint(heldout_groups_set), (
            f"{cls}: a train-add twin's origin group leaked onto the heldout side"
        )
        assert heldout_twin_origins.isdisjoint(train_groups_set), (
            f"{cls}: a heldout twin's origin group leaked onto the train-add side"
        )
        assert len(train_add_twins) == len(train_add), (
            f"{cls}: expected exactly one train-add twin per train-add positive"
        )
        assert len(heldout_twins) == len(heldout), (
            f"{cls}: expected exactly one heldout twin per heldout positive"
        )

        all_twins = train_add_twins + heldout_twins
        if all_twins:
            twin_source = all_twins[0]["source"]
            assert all(t["source"] == twin_source for t in all_twins), (
                f"{cls}: mixed twin sources within one class"
            )
            assert all(t["label"] == "BENIGN" for t in all_twins)

    merged_train = v55h_train + train_add + train_add_twins
    assert len(merged_train) == len(v55h_train) + len(train_add) + len(train_add_twins)

    heldout_all = heldout + heldout_twins

    out_root = out_root if out_root is not None else repo_root
    hp = heldout_path(cls, out_root)
    tp = train_out_path(cls, out_root)
    write_jsonl(hp, heldout_all)
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
        "train_twins": len(train_add_twins),
        "heldout_twins": len(heldout_twins),
        "twin_source": twin_source,
    }


def build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--classes", nargs="+", default=DEFAULT_CLASSES,
                    help=f"vulnerability classes to split (default: {DEFAULT_CLASSES})")
    p.add_argument("--seed", type=int, default=0,
                    help="RNG seed for the deterministic group-shuffle split (default 0)")
    p.add_argument("--v55h-train-path", type=Path, default=DEFAULT_V55H_TRAIN_PATH)
    p.add_argument("--repo-root", type=Path, default=REPO_ROOT,
                    help="repo root to resolve real/heldout/train-out paths against (default: this repo)")
    p.add_argument("--out-root", type=Path, default=None,
                    help="root to write heldout/train outputs under (default: --repo-root)")
    p.add_argument("--with-synth-twins", action="store_true", default=False,
                    help="also generate a fenced BENIGN twin per positive on each side of "
                         "the split (synth_v4_benign.make_benign_variant), so a "
                         "false-positive rate can be measured for MDS/L1TF/SPECTRE_V1 the "
                         "way build_hwv4_dataset.py already does for SPECTRE_V4. Default "
                         "OFF keeps output positives-only and byte-identical to before.")
    return p


def main(argv: Optional[List[str]] = None) -> None:
    args = build_parser().parse_args(argv)
    classes = [c.upper() for c in args.classes]
    repo_root = args.repo_root

    print("=== Real-hardware transfer split (per class, group-disjoint) ===")
    for cls in classes:
        rp = real_path(cls, repo_root)
        if not rp.exists():
            print(f"{cls}: SKIP ({rp} not found -- run convert_revizor_gadgets.py first)")
            continue
        summary = build_one_class(
            cls, seed=args.seed, v55h_train_path=args.v55h_train_path,
            repo_root=repo_root, with_synth_twins=args.with_synth_twins,
            out_root=args.out_root,
        )
        print(f"{cls}: total={summary['total']} "
              f"train-add={summary['train_add']} (groups: {summary['train_groups']}) "
              f"heldout={summary['heldout']} (groups: {summary['heldout_groups']})")
        print(f"  wrote {summary['train_out']}")
        print(f"  wrote {summary['heldout_out']}")
        if args.with_synth_twins:
            print(f"  twins: +{summary['train_twins']} train, +{summary['heldout_twins']} "
                  f"heldout (source={summary['twin_source']})")


if __name__ == "__main__":
    main(sys.argv[1:])
