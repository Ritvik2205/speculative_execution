#!/usr/bin/env python3
"""
check_locked_split_leakage.py — standing diagnostic for the LOCKED v54 split
(see SPECDISCOVER_VERIFICATION_GAPS.md, G4).

eval/splits.py's docstring used to claim "the locked v54 test is a random
record-level split, so augmented variants leak across train/test." This script
checks that claim directly against the real locked files instead of the
synthetic re-split splits.py constructs, and quantifies the one real leakage
channel found: test records that share a source_file stem (same underlying C
function, different arch/opt) with a train record.

Run:  python3 eval/check_locked_split_leakage.py
"""

from __future__ import annotations

import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
TRAIN = ROOT / "v54" / "data" / "v54_train.jsonl"
TEST = ROOT / "v54" / "data" / "v54_test.jsonl"

_ARCH_SUFFIX = re.compile(r'\.(arm64|arm32|x86_64|riscv64)\..*$')


def load(path: Path):
    return [json.loads(l) for l in open(path) if l.strip()]


def stem(source_file: str) -> str:
    """Strip the arch/compiler/opt suffix to recover the underlying source id."""
    return _ARCH_SUFFIX.sub('', source_file or '')


def main():
    if not TRAIN.exists() or not TEST.exists():
        print(f"missing {TRAIN} or {TEST}")
        sys.exit(2)

    tr, te = load(TRAIN), load(TEST)
    print(f"train records={len(tr)}  test records={len(te)}")

    # 1. group overlap
    gtr = {r.get("group") for r in tr}
    gte = {r.get("group") for r in te}
    overlap = gtr & gte
    print(f"\n[1] group overlap: train groups={len(gtr)} test groups={len(gte)} "
          f"overlapping={len(overlap)}")
    if overlap:
        print(f"    sample overlapping groups: {list(overlap)[:10]}")

    # 2. exact sequence duplicates (test row whose full instruction sequence
    #    appears verbatim in train)
    tr_seqs = {tuple(r["sequence"]) for r in tr}
    dup = [r for r in te if tuple(r["sequence"]) in tr_seqs]
    print(f"\n[2] exact-sequence duplicates (test-in-train): {len(dup)}/{len(te)}")

    # 3. source-file stem overlap (same underlying function, different arch/opt).
    #    Exclude blank source_file (synthetic/generated records with no file at
    #    all) — those match on the empty string and are not real overlap.
    tr_stems = {stem(r.get("source_file", "")) for r in tr if r.get("source_file")}
    stem_hits = [r for r in te if r.get("source_file") and stem(r.get("source_file", "")) in tr_stems]
    raw_hits = [r for r in te if stem(r.get("source_file", "")) in (tr_stems | {""})]
    spurious = len(raw_hits) - len(stem_hits)
    print(f"\n[3] source-file stem overlap (test record whose underlying source "
          f"also appears in train, excluding {spurious} spurious blank-source_file "
          f"matches): {len(stem_hits)}/{len(te)} "
          f"({100 * len(stem_hits) / max(len(te), 1):.1f}%)")
    if stem_hits:
        # flag generic/temp build-path stems (e.g. /work/out/g_*.s reused across
        # many unrelated sources) separately — those aren't real content overlap either
        generic = [r for r in stem_hits if re.search(r'/work/out/|/tmp/', r.get("source_file", ""))]
        print(f"    of which generic/temp-build-path stems (not real content overlap): {len(generic)}")
        specific = [r for r in stem_hits if r not in generic]
        print(f"    genuine specific-file stem overlaps: {len(specific)}/{len(te)}")
        if specific:
            print(f"    sample: {sorted({stem(r.get('source_file','')) for r in specific})[:10]}")

    print("\nInterpretation: [1] and [2] being 0 means the locked split carries "
          "no augmentation-group or exact-duplicate leakage. [3]'s genuine "
          "specific-file count (after excluding blank and generic temp-path "
          "matches) is the one real, milder channel worth quantifying further — "
          "score the existing checkpoint on v54_test.jsonl with those records "
          "excluded and report the accuracy delta.")

    return {"group_overlap": len(overlap), "exact_dup": len(dup),
            "stem_overlap": len(stem_hits)}


if __name__ == "__main__":
    main()
