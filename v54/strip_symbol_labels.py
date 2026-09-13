#!/usr/bin/env python3
"""strip_symbol_labels.py — remove function-label lines that leaked into
`sequence` as if they were instructions.

Follow-up to `v54/fix_sequence_leak.py` (G11), which fixed the same bug family
with an explicit keyword list:

    bhi|spectre|retbleed|l1tf|inception|meltdown|downfall|flush_reload|
    clearbhb|branch_history|victim_function|gadget_[a-z]|cache_set|
    _rdtsc|_clflush

**`mds` and `v4`/`ssb` are absent from that list**, so every
`mds_zombieload_pattern`, `mds_ridl_with_verw`, `v4_ssb_timing`,
`v4_trigger_ssb` survived it. `eval/audit_leakage.py` found 44 records still
carrying a token that names its own class.

This replaces the keyword list with a structural rule that cannot go stale as
new class names appear:

    a sequence element that is a SINGLE bare token containing '_' is a symbol
    name, not an instruction.

That holds because no mnemonic on x86_64, arm64 or riscv64 contains an
underscore — the ones with punctuation use '.' (`fence.i`, `cbo.inval`,
`sext.w`, `b.eq`, `mov.16b`) — and a real instruction referencing an
underscored *symbol* necessarily has operands, hence whitespace.

Deliberately NOT the rule "contains '_' and no tab": that was measured and is
too broad. It matches real, space-separated instructions such as
`movl      array1_size(%rip), %eax` — 389 elements in v54_train, most of them
genuine code. Requiring a single bare token with no operands removes that
entire false-positive class.

Writes to `<name>.clean.jsonl` rather than mutating in place, so the locked
split stays byte-identical and any before/after comparison remains valid.

Run: python3 v54/strip_symbol_labels.py [--apply]
"""
from __future__ import annotations

import argparse
import json
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
FILES = [ROOT / "v54" / "data" / "v54_train.jsonl",
         ROOT / "v54" / "data" / "v54_test.jsonl"]


def is_symbol_label(element: str) -> bool:
    """True when this sequence element is a bare symbol name, not an instruction."""
    t = element.strip()
    if not t:
        return False
    parts = t.split()
    return len(parts) == 1 and "_" in parts[0]


def clean(path: Path, apply: bool):
    rows, removed, touched = [], Counter(), 0
    by_class, examples = Counter(), Counter()
    short_after = 0
    for line in path.open():
        if not line.strip():
            continue
        r = json.loads(line)
        seq = r["sequence"]
        kept = [s for s in seq if not is_symbol_label(s)]
        if len(kept) != len(seq):
            touched += 1
            by_class[r["label"]] += 1
            for s in seq:
                if is_symbol_label(s):
                    removed[s] += 1
                    examples[s] += 1
            if len(kept) < 3:
                short_after += 1
        r["sequence"] = kept
        rows.append(r)

    print(f"{path.name}: {touched}/{len(rows)} records touched, "
          f"{sum(removed.values())} elements removed, {len(removed)} distinct")
    if by_class:
        print(f"   by class: {dict(by_class)}")
        print(f"   sample  : {[t for t, _ in examples.most_common(8)]}")
    if short_after:
        print(f"   WARNING {short_after} records fall below 3 instructions after "
              f"cleaning and will be dropped by the dataset builder")

    if apply:
        out = path.with_suffix(".clean.jsonl")
        with out.open("w") as f:
            for r in rows:
                f.write(json.dumps(r) + "\n")
        print(f"   wrote {out}")
    return touched, sum(removed.values())


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--apply", action="store_true",
                    help="write <name>.clean.jsonl (default is a dry run)")
    args = ap.parse_args()
    tot_r = tot_e = 0
    for p in FILES:
        if not p.exists():
            print(f"{p} missing; skipped")
            continue
        r, e = clean(p, args.apply)
        tot_r += r
        tot_e += e
    print(f"\ntotal: {tot_r} records, {tot_e} elements")
    if not args.apply:
        print("dry run — pass --apply to write the cleaned files")


if __name__ == "__main__":
    main()
