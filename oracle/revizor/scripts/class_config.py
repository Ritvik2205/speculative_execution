#!/usr/bin/env python3
"""oracle/revizor/scripts/class_config.py — class -> Revizor demo-config
mapping shared by `run_multiclass_campaign.sh` and its tests.

Growing the real-hardware gadget corpus (see
`.superpowers/sdd/2026-09-07-specexec-research-grade-plan/`) needs one
`rvzr fuzz` demo config per vulnerability class. This module is the single
source of truth for that mapping so the shell driver and the test suite
can't drift apart.

Config filenames are relative to `oracle/revizor/demo_configs/`.

NOTE on directory naming: the class key's lowercased form (`spectre_v4`,
`mds`, `l1tf`, `spectre_v1`) is also the exact marker
`oracle/revizor/convert_revizor_gadgets.py`'s `infer_class_from_path` looks
for as a whole path component. `run_multiclass_campaign.sh` names its run
directories `$CAMPAIGN_ROOT/<class-lower>/<seed>/` for exactly this reason
-- so the existing converter can classify freshly produced violations
without modification.
"""
from __future__ import annotations

import argparse
import re
import sys
from typing import List, Optional

CLASS_CONFIG = {
    "SPECTRE_V4": "detect-v4.yaml",
    "MDS": "detect-mds.yaml",
    "L1TF": "detect-foreshadow.yaml",
    "SPECTRE_V1": "detect-v1.yaml",
}

DEFAULT_CLASSES = list(CLASS_CONFIG.keys())

# --- shared-config mode (paper sec:detector T2) --------------------------------
# The per-class demo configs differ in instruction categories and program
# shape, so a bag-of-opcodes model tells the classes apart from the CONFIG,
# not the leak (scaled-opcode LR = 0.97 on real gadgets). Shared mode gives
# every class the same instruction set and shape and keeps only what defines
# the class: its contract, actors/page properties, and executor knobs.
#
# COND_BR stays V1-only. V1 needs branches; and the MDS (seq-assist) and L1TF
# (delayed-exception-handling) contracts cannot also permit branch
# speculation (rvzr only combines `cond` with bpas / nullinj-fault), so
# giving them branches would file ordinary V1 leaks under MDS/L1TF.
# Every other category is the union of the four configs (= detect-foreshadow).
SHARED_CATEGORIES = [
    "BASE-BINARY", "BASE-BITBYTE", "BASE-CMOV", "BASE-CONVERT", "BASE-DATAXFER",
    "BASE-LOGICAL", "BASE-MISC", "BASE-NOP", "BASE-POP", "BASE-PUSH", "BASE-SETCC",
]
SHARED_BLOCKLIST = ["DIV", "IDIV"]
SHARED_PROGRAM_SIZE = 24      # between V1/L1TF (16), MDS (20) and V4 (48)
SHARED_AVG_MEM_ACCESSES = 12  # between 8, 10 and 20
# keys the overlay owns; removed from the base config before appending
SHARED_KEYS = (
    "instruction_categories", "instruction_blocklist_append", "program_size",
    "avg_mem_accesses", "max_bb_per_function", "min_bb_per_function",
    "min_successors_per_bb", "max_successors_per_bb",
)


def shared_overlay(base_text: str, cls: str) -> str:
    """`base_text` (a class demo config) with the shape/instruction keys
    replaced by the shared ones. A key is removed together with its block
    (the indented / `- ` lines under it)."""
    out, skipping = [], False
    for line in base_text.splitlines():
        top = re.match(r"^([A-Za-z_][A-Za-z0-9_]*):", line)
        if top:
            skipping = top.group(1) in SHARED_KEYS
        elif skipping and line.strip() and not re.match(r"^\s|^-", line):
            skipping = False  # unindented non-key line (e.g. a comment) ends the block
        if not skipping:
            out.append(line)
    cats = SHARED_CATEGORIES + (["BASE-COND_BR"] if cls.upper() == "SPECTRE_V1" else [])
    out += ["", "# shared-config overlay (class_config.shared_overlay)",
            "instruction_categories:", *[f"  - {c}" for c in cats],
            "instruction_blocklist_append:", *[f"  - {c}" for c in SHARED_BLOCKLIST],
            f"program_size: {SHARED_PROGRAM_SIZE}",
            f"avg_mem_accesses: {SHARED_AVG_MEM_ACCESSES}", ""]
    return "\n".join(out)


def config_for(cls: str) -> str:
    """Return the demo-config filename for `cls` (case-insensitive).
    Raises KeyError with the known-classes list if `cls` isn't mapped."""
    key = cls.upper()
    if key not in CLASS_CONFIG:
        raise KeyError(
            f"no demo config mapped for class {cls!r}; known classes: "
            f"{sorted(CLASS_CONFIG)}"
        )
    return CLASS_CONFIG[key]


def main(argv: Optional[List[str]] = None) -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--bash", action="store_true",
                     help="print a `declare -A CLASS_CONFIG=(...)` snippet "
                          "for `eval \"$(...)\"` in the shell driver")
    ap.add_argument("--get", default=None,
                     help="print just this one class's config filename")
    ap.add_argument("--shared-overlay", nargs=2, metavar=("BASE_YAML", "CLASS"),
                     help="print BASE_YAML with the shared instruction set / shape")
    args = ap.parse_args(argv)

    if args.shared_overlay is not None:
        base, cls = args.shared_overlay
        print(shared_overlay(open(base).read(), cls), end="")
        return 0

    if args.get is not None:
        try:
            print(config_for(args.get))
        except KeyError as exc:
            print(str(exc), file=sys.stderr)
            return 1
        return 0

    if args.bash:
        print("declare -A CLASS_CONFIG=(")
        for k, v in CLASS_CONFIG.items():
            print(f'  ["{k}"]="{v}"')
        print(")")
        return 0

    for k, v in CLASS_CONFIG.items():
        print(f"{k} {v}")
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
