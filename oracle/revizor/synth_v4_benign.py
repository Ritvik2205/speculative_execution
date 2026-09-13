#!/usr/bin/env python3
"""oracle/revizor/synth_v4_benign.py — synthesize V4-shaped BENIGN negatives
by fencing the real hardware-confirmed SPECTRE_V4 gadgets.

Background (docs/NEXT_STEPS_PLAN_2026-09-10.md, Step 2): the Revizor SSBP-on
control confirmed that fencing the store->load pair in a real V4 gadget
turns 15/15 leaks -> 0 (see oracle/revizor/HARDWARE_VALIDATION_RESULTS.md).
So a fenced (mitigated) version of a real leak gadget is a genuine V4-shaped
BENIGN negative: same instruction mix, same sandbox-masking idiom, same
structural shape as the positives -- the ONLY difference is the serializing
`lfence` that kills the speculative store-bypass. Training/testing on these
gives the classifier a V4-shaped decision boundary to learn instead of just
"V4-shaped code always leaks", and lets us measure a real V4 false-positive
rate instead of only a positives-only recall number.

`fence_gadget()` is the reusable primitive: insert an `lfence` immediately
after every memory-WRITING instruction in a sequence (a plain store, or a
read-modify-write arithmetic/logic/shift/bit op whose memory operand is the
destination, or any `lock`-prefixed instruction with a memory operand --
`lock` always means an atomic RMW of memory). This is a local, text-only
equivalent of spec/spec_pdg_builder.py's P3b `_writes_mem` (which needs a
built PDG node with an opcode category); it makes the same three judgment
calls: cmp/test/bt never write regardless of operand position, a `lock`
prefix always writes, and (matching the P3b module's comment about "real
Revizor V4 ... gadgets leak through read-modify-write arithmetic/logic ops
with a memory destination") AT&T mem-operand-in-destination-position is
otherwise the write signal.

Fencing after EVERY memory write (not just ones later read from) is
deliberately conservative: it matches what the real SSBP-on hardware
mitigation does (a store-bypass barrier does not know in advance which
later load, if any, would have forwarded) and guarantees the resulting
sequence has no unfenced store->load pair left for the classifier (or a
human) to find.

Usage:
    python3 oracle/revizor/synth_v4_benign.py
        [--in eval/data/revizor_v4_real.jsonl]
        [--out eval/data/revizor_v4_benign.jsonl]

Emits one BENIGN record per input gadget:
    {"label": "BENIGN", "arch": "x86_64", "sequence": <fenced>,
     "group": "<origgroup>_fenced", "source": "revizor_hw_mitigated"}

The `_fenced` group suffix keeps `<origgroup>` intact as a PREFIX, so the
same `revizor_v4_<GENSEED>_<hash>` generator-seed parsing used to
leakage-split the positives (oracle/revizor/build_hwv4_dataset.py's
`extract_gen_seed`) still matches a fenced twin's group unchanged, and
therefore always assigns a gadget and its fenced twin to the same side of
the train/heldout split.
"""
from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path
from typing import List, Optional, Tuple

REPO_ROOT = Path(__file__).resolve().parents[2]

DEFAULT_IN_PATH = REPO_ROOT / "eval" / "data" / "revizor_v4_real.jsonl"
DEFAULT_OUT_PATH = REPO_ROOT / "eval" / "data" / "revizor_v4_benign.jsonl"

FENCE_INSTR = "lfence"

# ---------------------------------------------------------------------------
# Local equivalent of spec/spec_pdg_builder.py's P3b _writes_mem, operating
# directly on a raw AT&T instruction string (no PDG node/opcode-category
# needed).
# ---------------------------------------------------------------------------

# cmp/test never write regardless of operand position (matches P3b's
# COMPARE-category special case); `bt` (bit-TEST) reads a bit but never
# writes -- unlike its RMW siblings `bts`/`btr`/`btc`, which DO write.
_NEVER_WRITES_ROOTS = {"cmp", "test", "bt"}
_X86_SIZE_SUFFIXES = "qlwb"


def _strip_lock_prefix(instr: str) -> Tuple[str, bool]:
    """Split a leading AT&T `lock` prefix token off `instr`. A `lock`
    prefix always means an atomic read-modify-write of the memory operand,
    whatever the mnemonic."""
    m = re.match(r"^\s*lock\s+(.*)$", instr, re.IGNORECASE)
    if m:
        return m.group(1), True
    return instr, False


def _mnemonic_root(mnemonic: str) -> str:
    """Lowercased mnemonic with an x86 size suffix (q/l/w/b) stripped when
    the un-suffixed form is one of the never-writes roots -- e.g.
    `cmpl` -> `cmp`, `testb` -> `test`, `btw` -> `bt` (but `btsw`/`btrw`/
    `btcw` are left alone since their un-suffixed forms aren't in the set)."""
    m = mnemonic.lower()
    if m in _NEVER_WRITES_ROOTS:
        return m
    if len(m) > 1 and m[-1] in _X86_SIZE_SUFFIXES and m[:-1] in _NEVER_WRITES_ROOTS:
        return m[:-1]
    return m


def _split_operands(operand_str: str) -> List[str]:
    """Comma-split an AT&T operand string, respecting parens (a memory
    operand like `(%r14,%rax,2)` contains commas of its own)."""
    merged: List[str] = []
    buf = ""
    depth = 0
    for tok in operand_str.split(","):
        depth += tok.count("(") - tok.count(")")
        buf = f"{buf},{tok}" if buf else tok
        if depth == 0:
            merged.append(buf.strip())
            buf = ""
    if buf.strip():
        merged.append(buf.strip())
    return [o for o in merged if o]


def instr_writes_mem(instr: str) -> bool:
    """True if `instr` writes a memory operand.

    Covers: a plain store or an RMW arithmetic/logic/shift/bit/xchg op
    with a memory DESTINATION (AT&T convention: the destination is the
    last operand, e.g. `andl $0x53, (%r14,%rdi)`, `movw $0xb26c,
    (%r14,%rdx)`), a single-operand in-place RMW (`incq (%r14,%rsi)`,
    `notb (%r14,%rcx)`), or any `lock`-prefixed instruction with a memory
    operand at all. `cmp`/`test`/`bt` never write, whatever operand
    position their memory operand is in.
    """
    stripped = instr.strip()
    if not stripped:
        return False
    body, has_lock = _strip_lock_prefix(stripped)
    if "(" not in body:
        return False

    parts = body.split(None, 1)
    if not parts:
        return False
    root = _mnemonic_root(parts[0])
    if root in _NEVER_WRITES_ROOTS:
        return False
    if len(parts) < 2:
        return False

    operands = _split_operands(parts[1])
    if not operands:
        return False
    last = operands[-1]
    if "(" in last and ")" in last:
        return True
    if has_lock and any("(" in o and ")" in o for o in operands):
        return True
    return False


def fence_gadget(sequence: List[str]) -> List[str]:
    """Insert an `lfence` immediately after every memory-writing instruction
    in `sequence` -- the textbook SSBP mitigation the Revizor SSBP-on
    control validated (fencing the store->load pair: 15 leaks -> 0). This
    serializes every store (and every memory-destination RMW op) against
    whatever follows, so no store->load forwarding can be sped past.

    Returns a NEW list; `sequence` is not mutated.
    """
    out: List[str] = []
    for instr in sequence:
        out.append(instr)
        if instr_writes_mem(instr):
            out.append(FENCE_INSTR)
    return out


# ---------------------------------------------------------------------------
# JSONL I/O + CLI
# ---------------------------------------------------------------------------

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


def make_benign_variant(record: dict) -> dict:
    """One real V4 gadget record -> its fenced BENIGN twin."""
    return {
        "label": "BENIGN",
        "arch": record.get("arch", "x86_64"),
        "sequence": fence_gadget(record["sequence"]),
        "group": f"{record['group']}_fenced",
        "source": "revizor_hw_mitigated",
    }


def convert_all(records: List[dict]) -> List[dict]:
    return [make_benign_variant(r) for r in records]


def build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--in", dest="in_path", type=Path, default=DEFAULT_IN_PATH,
                    help="input real-V4 JSONL (default: eval/data/revizor_v4_real.jsonl)")
    p.add_argument("--out", dest="out_path", type=Path, default=DEFAULT_OUT_PATH,
                    help="output BENIGN JSONL (default: eval/data/revizor_v4_benign.jsonl)")
    return p


def main(argv: Optional[List[str]] = None) -> None:
    args = build_parser().parse_args(argv)

    real_v4 = load_jsonl(args.in_path)
    benign = convert_all(real_v4)

    write_jsonl(args.out_path, benign)

    n_fenced_instr = sum(len(r["sequence"]) for r in benign)
    n_orig_instr = sum(len(r["sequence"]) for r in real_v4)
    print(f"Read {len(real_v4)} real V4 gadgets from {args.in_path}")
    print(f"Wrote {len(benign)} fenced BENIGN records to {args.out_path}")
    print(f"Inserted {n_fenced_instr - n_orig_instr} lfence instructions total "
          f"({n_orig_instr} -> {n_fenced_instr} instructions)")


if __name__ == "__main__":
    main(sys.argv[1:])
