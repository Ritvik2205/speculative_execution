#!/usr/bin/env python3
"""
fix_sequence_leak.py — G11 fix (SPECDISCOVER_VERIFICATION_GAPS.md).

Some `sequence` arrays in v54_train.jsonl/v54_test.jsonl contain a bare,
non-instruction element that literally spells the vulnerability class as a
function name (e.g. "inception_train_arm", "l1tf_flush_all_probe_lines",
"branch_history_conditioner_bhi") — discovered while exporting the Phase-1
MLM's vocabulary (spec/export_learned_features.py), which showed these
strings as literal vocabulary tokens.

Detection rule (conservative, no false positives on real assembly):
  - element contains an UNDERSCORE (no real x86/ARM/RISC-V mnemonic ever
    does — mnemonics are letters/digits/dots only), AND
  - element has no TAB character (real instructions in this corpus are
    tab-separated opcode+operands; a bare label/function-name has none), AND
  - element matches the same attack-keyword regex already used for the
    (already-neutralized) calls_attack_fn check in v54/inline_features.py.

This is deliberately narrow: it does NOT touch "bhi" as a bare mnemonic
(legit ARM branch-if-higher, e.g. "bhi\t.LBB0_5" — has a tab, kept) or any
other real instruction. Removes the offending elements from `sequence`
entirely (does not replace with a placeholder — they were never real
instructions).

Run:  python3 v54/fix_sequence_leak.py
"""

from __future__ import annotations

import json
import re
import shutil
from pathlib import Path
from collections import Counter

ROOT = Path(__file__).resolve().parent.parent
FILES = [ROOT / "v54" / "data" / "v54_train.jsonl", ROOT / "v54" / "data" / "v54_test.jsonl"]

# Same keyword set as v54/inline_features.py's _CALL_ATK_RE (kept in sync
# deliberately — this is the same leak family, just as a bare pseudo-instruction
# element instead of a call target).
_ATK_KW = re.compile(
    r'bhi|spectre|retbleed|l1tf|inception|meltdown|downfall|'
    r'flush_reload|clearbhb|branch_history|victim_function|'
    r'gadget_[a-z]|cache_set|_rdtsc|_clflush',
    re.I,
)


def is_leaked_element(s: str) -> bool:
    return ('_' in s) and ('\t' not in s) and bool(_ATK_KW.search(s))


def clean_file(path: Path):
    lines_out = []
    n_records_touched = 0
    n_elements_removed = 0
    removed_by_class = Counter()
    removed_examples = []
    min_len_after = []

    for line in open(path):
        line = line.rstrip("\n")
        if not line.strip():
            continue
        r = json.loads(line)
        seq = r["sequence"]
        cleaned = [s for s in seq if not is_leaked_element(s)]
        if len(cleaned) != len(seq):
            n_records_touched += 1
            n_elements_removed += len(seq) - len(cleaned)
            removed_by_class[r["label"]] += 1
            for s in seq:
                if is_leaked_element(s) and len(removed_examples) < 10:
                    removed_examples.append((r["label"], s))
            r["sequence"] = cleaned
            min_len_after.append(len(cleaned))
        lines_out.append(json.dumps(r))

    with open(path, "w") as f:
        f.write("\n".join(lines_out) + "\n")

    return {
        "records_touched": n_records_touched,
        "elements_removed": n_elements_removed,
        "removed_by_class": dict(removed_by_class),
        "examples": removed_examples,
        "min_len_after_fix": min(min_len_after) if min_len_after else None,
    }


def main():
    for path in FILES:
        backup = path.with_suffix(".pre_g11_fix.jsonl")
        if not backup.exists():
            shutil.copy(path, backup)
        stats = clean_file(path)
        print(f"\n{path.name}:")
        print(f"  records touched: {stats['records_touched']}")
        print(f"  elements removed: {stats['elements_removed']}")
        print(f"  by class: {stats['removed_by_class']}")
        print(f"  shortest cleaned sequence: {stats['min_len_after_fix']} instructions")
        print(f"  examples removed: {stats['examples'][:5]}")


if __name__ == "__main__":
    main()
