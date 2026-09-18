#!/usr/bin/env python3
"""oracle/revizor/synth_v4_benign.py — synthesize per-class fenced-BENIGN
twins from real hardware-confirmed vulnerability gadgets (SPECTRE_V4,
SPECTRE_V1, L1TF, MDS).

HONESTY NOTE (read before trusting a twin as a ground-truth BENIGN):
  - SPECTRE_V4 twins are HARDWARE-CONFIRMED mitigations: the Revizor SSBP-on
    control measured the fenced sequences going from 15/15 leaks -> 0 (see
    oracle/revizor/HARDWARE_VALIDATION_RESULTS.md). These are genuine,
    verified BENIGN negatives.
  - SPECTRE_V1, L1TF, and MDS twins are STRUCTURAL only: this script places
    an `lfence` at the textbook speculation boundary for each class (see
    `fence_gadget_for_class` below) and nothing more. They have the same
    instruction shape as their positive, plus a serializing barrier, but
    this script does NOT symbolically or hardware-verify that the barrier
    actually kills the leak. Treat their `source` field
    ("synth_mitigated_twin") as a flag that they are unverified. To make
    them as trustworthy as the V4 twins they should ideally be re-run
    through Revizor on the i5 (fenced -> 0 leaks expected) and/or, for
    SPECTRE_V1 specifically, checked with the Spectector oracle
    (oracle/revizor/spectector_oracle.py or similar) since it already
    exists in this repo for x86.

Per-class speculation boundary (why each fence goes where it does):
  - SPECTRE_V4 (store-bypass): leaks through a store->load pair, so the
    fix is `lfence` AFTER every memory WRITE (see `fence_gadget` below,
    unchanged from before this file grew multi-class support).
  - SPECTRE_V1 (bounds-check bypass): leaks by speculating past a
    conditional guard branch, so the fix is `lfence` AFTER every Jcc
    (conditional branch) -- the textbook V1 mitigation serializes
    speculation right at the guard.
  - L1TF / MDS (faulting / sampling transient LOAD): leaks through a
    transient load itself (a faulting load for L1TF, a stale
    fill-buffer/store-buffer/load-port sample for MDS), so the fix is
    `lfence` BEFORE every memory-READING instruction, serializing the load
    so it cannot execute speculatively. Real MDS hardware mitigation uses
    `verw` (buffer-overwrite), not `lfence` -- `lfence` is used here only
    to keep the twin structurally comparable (same barrier primitive) to
    the other three classes; it is not the literal MDS fix.

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
# SPECTRE_V1 boundary: lfence AFTER every conditional (Jcc) branch -- the
# guard branch a bounds-check-bypass gadget speculates past.
# ---------------------------------------------------------------------------

# x86 Jcc mnemonics (AT&T), including synonyms of the same condition code
# under a different mnemonic (jz==je, jnb==jae, etc.). Deliberately excludes
# `jmp`/`jmpq` (unconditional) and `jrcxz`/`loop*` (not guard-branch idioms
# this corpus uses). Jcc mnemonics never take x86 size suffixes, so no
# suffix-stripping is needed here (unlike `_mnemonic_root`).
_JCC_MNEMONICS = {
    "je", "jne", "jg", "jge", "jl", "jle", "ja", "jae", "jb", "jbe",
    "jc", "jnc", "jo", "jno", "js", "jns", "jp", "jnp",
    "jz", "jnz", "jnb", "jnbe", "jna", "jnae", "jng", "jnge", "jnl", "jnle",
}


def _is_cond_branch(instr: str) -> bool:
    """True if `instr`'s mnemonic is an x86 Jcc (conditional branch).
    Operands (the target and any `<symbol>` annotation) are ignored --
    only the mnemonic is inspected."""
    stripped = instr.strip()
    if not stripped:
        return False
    mnemonic = stripped.split(None, 1)[0].lower()
    return mnemonic in _JCC_MNEMONICS


def fence_after_cond_branch(sequence: List[str]) -> List[str]:
    """SPECTRE_V1 twin primitive: insert an `lfence` immediately after
    every conditional branch in `sequence`. This is the textbook V1
    (bounds-check-bypass) mitigation: it serializes execution right at the
    guard branch so the CPU cannot speculate past a mispredicted bounds
    check into the code that reads out-of-bounds.

    Returns a NEW list; `sequence` is not mutated.
    """
    out: List[str] = []
    for instr in sequence:
        out.append(instr)
        if _is_cond_branch(instr):
            out.append(FENCE_INSTR)
    return out


# ---------------------------------------------------------------------------
# L1TF / MDS boundary: lfence BEFORE every memory-READING instruction -- the
# transient load itself is the leak for these two classes (a faulting load
# for L1TF, a stale sampled value for MDS), unlike V4 where the leak needs a
# store first.
# ---------------------------------------------------------------------------

# `mov`/`movb`/`movw`/`movl`/`movq` storing a register or immediate INTO
# memory is a pure write: it never reads the memory operand first (unlike
# every other mnemonic that can target memory, which is a read-modify-write
# when its memory operand is the destination). `movz*`/`movs*` (movzbl,
# movsbl, ...) are excluded on purpose -- those are always widening LOADS
# (mem, if present, is the source), so they must NOT be treated as a
# pure-store mov here.
_PURE_STORE_MOV_MNEMONICS = {"mov", "movb", "movw", "movl", "movq"}

# `lea`/`leaq`/`leal`/`leaw`/`leab` compute an address; despite the
# `(...)` syntax they never actually access memory, so they must never be
# reported as a memory read.
_NO_MEM_ACCESS_MNEMONICS = {"lea", "leab", "leaw", "leal", "leaq"}


def _reads_mem(instr: str) -> bool:
    """True if `instr` reads a memory operand as a source.

    Judgment calls (deliberately conservative -- see module docstring):
      - No `(` at all -> never a memory access.
      - `lea*` -> never a real memory access despite the `(...)` syntax
        (address computation only).
      - A memory operand in any NON-last operand position is a source
        (AT&T convention: destination is last) -> always a read, e.g. a
        plain load (`movl (%rax), %rbx`) or a widening load
        (`movzbl (%rax), %ebx`).
      - A memory operand ONLY in the last (destination) position is a
        read too, UNLESS the mnemonic is a plain `mov` family member
        (`mov`/`movb`/`movw`/`movl`/`movq`), which is a pure store with no
        read -- every other mnemonic that can write memory
        (`and`/`or`/`xor`/`add`/`sub`/`inc`/`dec`/`not`/`neg`/`bts`/`btr`/
        `btc`/...) is a read-modify-write and DOES read the memory operand
        first. `cmp`/`test`/`bt` (see `_NEVER_WRITES_ROOTS`) never write
        but always read their memory operand -- they fall into this same
        "not a plain mov" case, so they correctly come out `True`.
      - A `lock` prefix is stripped first (it never changes whether the
        underlying op reads memory) via `_strip_lock_prefix`.
    """
    stripped = instr.strip()
    if not stripped or "(" not in stripped:
        return False
    body, _has_lock = _strip_lock_prefix(stripped)
    parts = body.split(None, 1)
    if not parts:
        return False
    mnemonic = parts[0].lower()
    if mnemonic in _NO_MEM_ACCESS_MNEMONICS:
        return False
    if len(parts) < 2:
        return False

    operands = _split_operands(parts[1])
    if not operands:
        return False
    mem_positions = [i for i, o in enumerate(operands) if "(" in o and ")" in o]
    if not mem_positions:
        return False

    last_idx = len(operands) - 1
    if any(pos != last_idx for pos in mem_positions):
        return True  # mem operand in a source position -- always a read

    # Mem operand only in the destination (last) position. Reduce the
    # mnemonic the same way instr_writes_mem's helper does (for
    # documentation/consistency -- cmp/test/bt land here too and are
    # correctly `True` since they aren't in _PURE_STORE_MOV_MNEMONICS).
    _mnemonic_root(mnemonic)
    return mnemonic not in _PURE_STORE_MOV_MNEMONICS


def fence_before_mem_read(sequence: List[str]) -> List[str]:
    """L1TF/MDS twin primitive: insert an `lfence` immediately BEFORE
    every memory-reading instruction in `sequence`. Serializes the
    transient load so it cannot execute speculatively -- unlike V4, the
    leak here IS the load, so there is no later instruction to fence
    after.

    Returns a NEW list; `sequence` is not mutated.
    """
    out: List[str] = []
    for instr in sequence:
        if _reads_mem(instr):
            out.append(FENCE_INSTR)
        out.append(instr)
    return out


# ---------------------------------------------------------------------------
# Per-class dispatch
# ---------------------------------------------------------------------------

_VULN_CLASS_FENCERS = {
    "SPECTRE_V4": fence_gadget,
    "SPECTRE_V1": fence_after_cond_branch,
    "L1TF": fence_before_mem_read,
    "MDS": fence_before_mem_read,
}


def fence_gadget_for_class(sequence: List[str], vuln_class: str) -> List[str]:
    """Dispatch to the right speculation-boundary fencer for `vuln_class`.

    Returns a NEW list; `sequence` is never mutated. If the fencer finds no
    boundary to fence (e.g. a SPECTRE_V1 record with no conditional
    branch), the returned list is equal to (but not the same object as)
    `sequence` -- a twin identical to its positive is useless as a BENIGN
    negative, and callers (the CLI below) should warn about it.
    """
    fencer = _VULN_CLASS_FENCERS.get(vuln_class)
    if fencer is None:
        raise ValueError(
            f"unknown vuln_class {vuln_class!r}; expected one of "
            f"{sorted(_VULN_CLASS_FENCERS)}"
        )
    return fencer(sequence)


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


# SPECTRE_V4 twins are hardware-confirmed (Revizor SSBP-on: 15 leaks -> 0);
# V1/L1TF/MDS twins are structural-only (see module docstring HONESTY NOTE).
_HW_CONFIRMED_SOURCE = "revizor_hw_mitigated"
_STRUCTURAL_SOURCE = "synth_mitigated_twin"


def make_benign_variant(record: dict, vuln_class: Optional[str] = None) -> dict:
    """One real gadget record -> its fenced BENIGN twin.

    `vuln_class` picks the speculation boundary to fence (see
    `fence_gadget_for_class`); if omitted it falls back to
    `record["vuln_class"]`, then `record["label"]` (the field the real
    revizor_*_real.jsonl corpora actually use), then SPECTRE_V4 to preserve
    this function's original no-argument behavior.
    """
    cls = vuln_class or record.get("vuln_class") or record.get("label") or "SPECTRE_V4"
    source = _HW_CONFIRMED_SOURCE if cls == "SPECTRE_V4" else _STRUCTURAL_SOURCE
    return {
        "label": "BENIGN",
        "arch": record.get("arch", "x86_64"),
        "sequence": fence_gadget_for_class(record["sequence"], cls),
        "group": f"{record['group']}_fenced",
        "source": source,
    }


def convert_all(records: List[dict], vuln_class: Optional[str] = None) -> List[dict]:
    return [make_benign_variant(r, vuln_class) for r in records]


def build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--in", dest="in_path", type=Path, default=DEFAULT_IN_PATH,
                    help="input real-V4 JSONL (default: eval/data/revizor_v4_real.jsonl)")
    p.add_argument("--out", dest="out_path", type=Path, default=DEFAULT_OUT_PATH,
                    help="output BENIGN JSONL (default: eval/data/revizor_v4_benign.jsonl)")
    p.add_argument("--vuln-class", dest="vuln_class",
                    choices=sorted(_VULN_CLASS_FENCERS),
                    default="SPECTRE_V4",
                    help="which class's speculation boundary to fence "
                         "(default: SPECTRE_V4, preserving prior no-arg behavior)")
    return p


def main(argv: Optional[List[str]] = None) -> None:
    args = build_parser().parse_args(argv)

    real = load_jsonl(args.in_path)
    benign = convert_all(real, args.vuln_class)

    write_jsonl(args.out_path, benign)

    n_fenced_instr = sum(len(r["sequence"]) for r in benign)
    n_orig_instr = sum(len(r["sequence"]) for r in real)
    n_identical = sum(
        1 for orig, twin in zip(real, benign)
        if twin["sequence"] == orig["sequence"]
    )

    print(f"Read {len(real)} real {args.vuln_class} gadgets from {args.in_path}")
    print(f"Wrote {len(benign)} fenced BENIGN records to {args.out_path}")
    print(f"Inserted {n_fenced_instr - n_orig_instr} lfence instructions total "
          f"({n_orig_instr} -> {n_fenced_instr} instructions)")
    if n_identical:
        print(
            f"WARNING: {n_identical} twin(s) identical to their positive "
            f"(no {args.vuln_class} speculation boundary found) -- useless "
            f"as BENIGN negatives",
            file=sys.stderr,
        )


if __name__ == "__main__":
    main(sys.argv[1:])
