#!/usr/bin/env python3
"""
Build v55 dataset.

Changes from v54:
  - Augmentation bug fixes applied (6 bugs fixed in scripts/augment_asm_windows.py):
      1. rename_registers: x86_r64 pool was contaminated with r8-r15 (x86_r family) ->
         collision where rcx and r9 could both map to r13. Fixed: disjoint pools.
         Also extended X86_REG to recognize rax/rbx/rcx/rdx/rsi/rdi for def-use tracking.
      2. can_swap: only checked ARM64 branches; x86 jcc opcodes (jne, jge, ...) were
         not guarded, allowing incorrect reordering across conditional branches.
      3. _X86_FLAG_CLOBBER: word-boundary regex `\badd\b` missed size-suffixed mnemonics
         like addq/subl/cmpw — making substitution overly conservative or unsafe.
      4. _ARM_BARRIER_SYNONYMS["dsb sy"] included weaker barriers (dsb ish, dsb ishst),
         violating the "only upgrade" contract. Fixed: each entry only lists equal/stronger.
      5. X86_LOAD only matched bare "mov"/"lea" — missed movq/movl/etc. in
         insert_barrier_counterfactual, preventing fence insertion on x86 sequences.
      6. flip_branch_polarity only guarded "jmp *"/"call *" but not "jmpq *"/"callq *"
         (AT&T 64-bit forms), allowing indirect branches to be mishandled.

  - Re-augmentation: 774 original records from v54 are re-augmented with the FIXED code.
    Old augmented records (generated with buggy code) are discarded and regenerated.
  - External data (SafeSide/Spectector/FastSpec, 601 records) unchanged — no augmentation
    was applied to these, so they are inherited directly.
  - Test set LOCKED — identical to v53/v54 (1670 test records).

Run from SpecExec/v55/:
  python3 build_dataset.py
"""

import json
import random
import sys
from collections import Counter
from pathlib import Path
from typing import List

ROOT   = Path(__file__).resolve().parent.parent
OUTDIR = Path(__file__).resolve().parent / "data"
OUTDIR.mkdir(parents=True, exist_ok=True)

# Use fixed augmentation code from scripts/
sys.path.insert(0, str(ROOT / "scripts"))
from augment_asm_windows import (
    rename_registers,
    insert_nops,
    swap_locally,
    perturb_immediates,
    stride_synonym_swap,
    substitute_equivalent,
    flip_branch_polarity,
    swap_barrier_variants,
    recompose_from_slices,
)

SEED = 42
random.seed(SEED)

# Target augmented total per class (based on v54 class distribution).
# BENIGN gets fewer copies (already plentiful); attack classes get more.
# Classes not in this table use BENIGN_CAP.
BENIGN_CAP = 2500          # BENIGN cap — v54 had 2820, keep similar
ATTACK_TARGET = {
    "BRANCH_HISTORY_INJECTION": 600,
    "INCEPTION":                 800,
    "L1TF":                     600,
    "MDS":                      600,
    "RETBLEED":                  700,
    "SPECTRE_RSB":               450,
    "SPECTRE_V1":                800,
    "SPECTRE_V2":                700,
    "SPECTRE_V4":                600,
}


def load_jsonl(path: Path) -> List[dict]:
    records = []
    with path.open() as f:
        for line in f:
            line = line.strip()
            if line:
                records.append(json.loads(line))
    return records


def write_jsonl(path: Path, records: List[dict]):
    path.parent.mkdir(parents=True, exist_ok=True)
    with open(path, "w") as f:
        for r in records:
            f.write(json.dumps(r) + "\n")


def print_dist(label: str, records: List[dict]):
    c = Counter(r["label"] for r in records)
    print(f"\n{label} ({len(records)} records):")
    for cls, n in sorted(c.items()):
        bar = "#" * (n // 20)
        print(f"  {cls:<40s} {n:>6d}  {bar}")


def is_x86(seq: List[str]) -> bool:
    return any("%" in l or "rax" in l or "eax" in l for l in seq)


def augment_one(record: dict, aug_name: str) -> dict:
    seq = record["sequence"]
    x86 = is_x86(seq)
    if aug_name == "rename_registers":
        out = rename_registers(seq)
    elif aug_name == "insert_nops":
        out = insert_nops(seq, prob=0.15)
    elif aug_name == "swap_locally":
        out = swap_locally(seq, trials=3)
    elif aug_name == "perturb_immediates":
        out = perturb_immediates(seq, is_x86=x86)
    elif aug_name == "stride_synonym_swap":
        out = stride_synonym_swap(seq)
    elif aug_name == "substitute_equivalent":
        out = substitute_equivalent(seq, is_x86=x86)
    elif aug_name == "flip_branch_polarity":
        out = flip_branch_polarity(seq, is_x86=x86)
    elif aug_name == "swap_barrier_variants":
        out = swap_barrier_variants(seq, is_x86=x86)
    elif aug_name == "recompose_from_slices":
        out = recompose_from_slices(seq)
    else:
        return None
    if out == seq:
        return None
    new = dict(record)
    new["sequence"] = out
    new["augmentation"] = aug_name
    return new


TECHNIQUES = [
    "rename_registers",
    "insert_nops",
    "swap_locally",
    "perturb_immediates",
    "stride_synonym_swap",
    "substitute_equivalent",
    "flip_branch_polarity",
    "swap_barrier_variants",
    "recompose_from_slices",
]


def main():
    v54_train_path = ROOT / "v54" / "data" / "v54_train.jsonl"
    v54_test_path  = ROOT / "v54" / "data" / "v54_test.jsonl"

    print("=== Loading v54 data ===")
    v54_train = load_jsonl(v54_train_path)
    v54_test  = load_jsonl(v54_test_path)
    print(f"v54 train: {len(v54_train)}, v54 test: {len(v54_test)}")

    # Partition v54 train into:
    #   originals: blank augmentation field, no external_source
    #   safe_augmented: p9_* (phase9 compiler pipeline), compiled_c_source,
    #                   compiler_variant, poc_repo_v2 — NOT generated by buggy code
    #   buggy_augmented: records from the 9 Python augmentation functions
    #                    (rename_registers, insert_nops, swap_locally, etc.)
    #                    that had bugs — these will be discarded and regenerated
    #   external: SafeSide / Spectector / FastSpec

    BUGGY_TECHNIQUES = {
        "rename_registers", "insert_nops", "swap_locally",
        "perturb_immediates", "stride_synonym_swap", "substitute_equivalent",
        "flip_branch_polarity", "swap_barrier_variants", "recompose_from_slices",
    }

    originals       = []
    safe_augmented  = []
    buggy_augmented = []
    external        = []

    for r in v54_train:
        aug = r.get("augmentation", "")
        ext = r.get("external_source", "")
        if ext:
            external.append(r)
        elif aug == "":
            originals.append(r)            # true originals (blank field)
        elif aug in BUGGY_TECHNIQUES:
            buggy_augmented.append(r)      # discard + regenerate
        else:
            safe_augmented.append(r)       # p9_*, compiled_c_source, etc.

    print(f"\nOriginals (blank aug, no ext):    {len(originals)}")
    print(f"Safe augmented (p9/compiler):     {len(safe_augmented)}")
    print(f"Buggy augmented (to regenerate):  {len(buggy_augmented)}")
    print(f"External (SafeSide/Spectector):   {len(external)}")

    # Re-augment originals with fixed code — class-proportional caps
    print(f"\n=== Re-augmenting {len(originals)} originals with FIXED code ===")

    # Group originals by class
    from collections import defaultdict
    by_class: dict = defaultdict(list)
    for r in originals:
        by_class[r["label"]].append(r)

    augmented = []
    random.seed(SEED)

    for cls, cls_records in by_class.items():
        cap = BENIGN_CAP if cls == "BENIGN" else ATTACK_TARGET.get(cls, 800)
        # Cycle through (record, technique) pairs until we hit cap
        candidates = []
        for technique in TECHNIQUES:
            for r in cls_records:
                for _ in range(20):  # max 20 tries per (record, technique)
                    new_r = augment_one(r, technique)
                    if new_r is not None:
                        candidates.append(new_r)
                        break
        # Shuffle and cap
        random.shuffle(candidates)
        chosen = candidates[:cap]
        augmented.extend(chosen)
        print(f"  {cls:<40s} originals={len(cls_records):4d}  cap={cap:5d}  generated={len(candidates):5d}  kept={len(chosen):5d}")

    print(f"\nTotal augmented records: {len(augmented)}")
    aug_by_tech = Counter(r["augmentation"] for r in augmented)
    for t, n in aug_by_tech.most_common():
        print(f"  {t}: {n}")

    # Build v55 train: originals + safe_augmented + new_augmented + external
    v55_train = originals + safe_augmented + augmented + external
    v55_test  = v54_test  # LOCKED

    random.shuffle(v55_train)

    print_dist("v55 train (originals)", originals)
    print_dist("v55 safe_augmented (p9/compiler — inherited)", safe_augmented)
    print_dist("v55 augmented (re-generated with fixed code)", augmented)
    print_dist("v55 external (unchanged)", external)
    print_dist("v55 train (combined)", v55_train)
    print_dist("v55 test (locked from v54/v53)", v55_test)

    out_train = OUTDIR / "v55_train.jsonl"
    out_test  = OUTDIR / "v55_test.jsonl"
    write_jsonl(out_train, v55_train)
    write_jsonl(out_test,  v55_test)
    print(f"\nWrote {out_train}  ({len(v55_train)} records)")
    print(f"Wrote {out_test}   ({len(v55_test)} records)")
    print("\nTest set locked — identical to v53/v54 for direct comparison.")


if __name__ == "__main__":
    main()
