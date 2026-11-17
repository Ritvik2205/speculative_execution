#!/usr/bin/env python3
"""Training pairs for ticket 06: the version-2 injected pairs with the tainted pointer renamed.

Every injected core uses `%r15` for the victim's tainted pointer. Left as it is, a model can
learn the name. `rename_tainted` moves it, on both sides of a pair alike, to a register that
neither side uses; the choice is fixed per pair and varies across pairs.

    python3 -m eval.pairs.train_data          # counts per part: renamed, dropped
"""
from __future__ import annotations

import hashlib
import json
import re
import sys
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
V2 = ROOT / "eval" / "pairs" / "data" / "v2"
PARTS = ("train", "val", "test")
# r8..r14 only: same sub-register suffixes as r15 (d, w, b) and no instruction uses them implicitly.
CANDIDATES = tuple(f"r{i}" for i in range(8, 15))
_R15 = re.compile(r"%r15([dwb]?)\b")
_USED = re.compile(r"%(r(?:[89]|1[0-4]))[dwb]?\b")


def rename_tainted(pair):
    """Copy of `pair` with `%r15` (and its sub-registers) renamed on both sides, plus
    `tainted_register`. None when every candidate register is already used by one side."""
    lines = pair["leak"] + pair["safe"]
    used = {m for line in lines for m in _USED.findall(line)}
    free = [r for r in CANDIDATES if r not in used]
    if not free:
        return None
    new = free[int(hashlib.sha256(pair["pair_id"].encode()).hexdigest(), 16) % len(free)]
    swap = lambda seq: [_R15.sub(lambda m: f"%{new}{m.group(1)}", line) for line in seq]
    return {**pair, "leak": swap(pair["leak"]), "safe": swap(pair["safe"]), "tainted_register": new}


def load(part):
    """(renamed pairs, number dropped) for one part of the version-2 injected pairs."""
    rows = [json.loads(l) for l in open(V2 / f"pairs_injected2_{part}.jsonl")]
    out = [r for r in map(rename_tainted, rows) if r is not None]
    return out, len(rows) - len(out)


def main() -> int:
    for part in PARTS:
        pairs, dropped = load(part)
        regs = Counter(p["tainted_register"] for p in pairs)
        kinds = Counter(p["kind"] for p in pairs)
        left = sum("r15" in l for p in pairs for l in p["leak"] + p["safe"])
        print(f"{part}: {len(pairs)} renamed, {dropped} dropped; kinds {dict(kinds)}; "
              f"registers {dict(sorted(regs.items()))}; lines still naming r15: {left}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
