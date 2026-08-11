#!/usr/bin/env python3
"""
build_riscv_labeled.py -- builds a family-grouped, labeled jsonl slice of
riscv_corpus/*.s for use as REAL training data (not just zero-shot eval).

Reuses spec/eval_riscv_real.py's exact label mapping (KEYWORD_TO_LABEL,
EXCLUDED_KEYWORDS, extract_sequence) -- already correct and already used by
the existing zero-shot eval scripts -- but replaces its per-opt-level
`group` field with a family-collapsed group that also merges `_gen_N`
mutation variants of the same base template into one group. This matters
for a real train/eval split: distinct `_gen_N` variants of the same source
are near-duplicates, and leaving them in separate groups would let a
near-duplicate of a training example land in the held-out eval set --
exactly the kind of leakage this project already found and fixed once
this session (the spec-vs-hand-features locked-split sign reversal).

Run:  python3 eval/build_riscv_labeled.py
Output: eval/data/riscv_labeled.jsonl
"""
from __future__ import annotations

import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "spec"))

from eval_riscv_real import (  # noqa: E402
    CORPUS, EXCLUDED_KEYWORDS, label_for_stem, extract_sequence,
)

_OPT_SUFFIX = re.compile(r'\.O[0-9]+\.riscv64\.s$')
FAMILY_RE = re.compile(r'^(.*?)(_arm64|_x86_64)?_gen_\d+')
OUT_PATH = ROOT / "eval" / "data" / "riscv_labeled.jsonl"


def family_group(stem: str) -> str:
    """Collapse `_gen_N` mutation variants of the same base template into
    one group; falls back to the full opt-stripped stem when no `_gen_N`
    suffix is present (e.g. hand-written one-off sources). Always prefixed
    `riscv_` so it can never collide with an x86/ARM group id once merged
    into the shared training pool (Task 3)."""
    m = FAMILY_RE.match(stem)
    base = m.group(1) if m else stem
    return f"riscv_{base}"


def build_records():
    records = []
    excluded = 0
    skipped_unlabeled = 0
    for f in sorted(CORPUS.glob("*.s")):
        stem = _OPT_SUFFIX.sub("", f.name)
        low = stem.lower()
        if any(kw in low for kw in EXCLUDED_KEYWORDS):
            excluded += 1
            continue
        label = label_for_stem(stem)
        if label is None:
            skipped_unlabeled += 1
            continue
        seq = extract_sequence(f)
        if len(seq) < 3:
            continue
        records.append({
            "label": label,
            "sequence": seq,
            "arch": "riscv64",
            "group": family_group(stem),
            "source_file": str(f.relative_to(ROOT)),
        })
    print(f"riscv_corpus files={len(list(CORPUS.glob('*.s')))}  "
          f"labeled records={len(records)}  "
          f"excluded(no ground truth)={excluded}  "
          f"skipped(unrecognized keyword)={skipped_unlabeled}  "
          f"families={len({r['group'] for r in records})}")
    return records


def main():
    if not CORPUS.exists():
        print(f"missing {CORPUS}")
        sys.exit(2)
    records = build_records()
    if not records:
        print("no labeled RISC-V records built")
        sys.exit(2)
    OUT_PATH.parent.mkdir(parents=True, exist_ok=True)
    with open(OUT_PATH, "w") as f:
        for r in records:
            f.write(json.dumps(r) + "\n")
    print(f"wrote {len(records)} records to {OUT_PATH}")


if __name__ == "__main__":
    main()
