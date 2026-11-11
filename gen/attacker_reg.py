#!/usr/bin/env python3
"""Attacker-controlled register search for the indexed V1 victim.

A window of code is a Spectre-V1 gadget *with respect to an input*: some
register that is live into the window, is used to form a memory address, and
is under the attacker's control (an unchecked index / pointer). Corpus windows
do not say which register that is, so we ask the oracle about each candidate:
`find_attacker_register` returns the first live-in address register for which
the indexed victim (gen.decode.gate_source(victim="indexed", attacker_reg=..))
leaks. `to_attacker_canonical` then renames that register to %r15, the
register the slot stream spells `<SSEC>` -- so a generator trained on the
result has to SAY which register the attacker controls.
"""
from __future__ import annotations

import re
import sys
from pathlib import Path
from typing import Callable, List, Optional

ROOT = Path(__file__).resolve().parents[1]
for _p in (ROOT, ROOT / "gen", ROOT / "spec", ROOT / "v54"):
    if str(_p) not in sys.path:
        sys.path.insert(0, str(_p))

ATTACKER_REG = "r15"
_NEVER = {"rsp", "rbp", "rip"}
_MEM = re.compile(r"\(([^()]*)\)")
_ALLOWED = {"rax", "rbx", "rcx", "rdx", "rsi", "rdi", "r8", "r9", "r10", "r11",
            "r12", "r13", "r15"}


def _addr_regs(instr: str) -> List[str]:
    from ir_defuse import _X86_REG_RE, _canon_x86
    out = []
    for m in _MEM.finditer(instr):
        for r in _X86_REG_RE.finditer(m.group(1)):
            f = _canon_x86(r.group(1))
            if f not in out:
                out.append(f)
    return out


_CELL = re.compile(r"[-\w@.$+]*\(%(?:rbp|rsp|rip)\)")
_NO_WRITE = re.compile(r"^(cmp|test|bt|push|j|call|ucomis|comis)", re.I)
_POOL = ["rax", "rbx", "rcx", "rdx", "rsi", "rdi", "r8", "r9", "r10", "r11", "r12", "r13"]


def _cells(instr: str):
    """(cells read, cell written) among frame / global operands of `instr`."""
    parts = instr.strip().split(None, 1)
    if len(parts) < 2:
        return [], None
    ops = [o.strip() for o in re.split(r",(?![^()]*\))", parts[1])]
    hits = [(i, o) for i, o in enumerate(ops) if _CELL.fullmatch(o)]
    written = None
    reads = []
    for i, o in hits:
        is_dest = i == len(ops) - 1 and len(ops) > 1 and not _NO_WRITE.match(parts[0])
        if is_dest and parts[0].lower().startswith(("mov", "lea", "set", "pop")):
            written = o
        else:
            reads.append(o)
            if is_dest:
                written = o          # read-modify-write
    return reads, written


def attacker_candidates(window: List[str], cells: bool = False) -> List[str]:
    """Inputs an attacker could control: register families used in a memory
    address before the window defines them (first-use order; never rsp / rbp /
    rip), then -- with cells=True -- frame / global memory cells the window
    reads before writing, as "mem:<operand>" (-O0 code keeps its index there)."""
    from ir_defuse import defuse_for_sequence
    du = defuse_for_sequence(list(window), "x86_64")
    defined, out = set(), []
    for instr, (defs, _uses) in zip(window, du):
        for f in _addr_regs(instr):
            if f not in defined and f not in _NEVER and f in _ALLOWED and f not in out:
                out.append(f)
        defined |= set(defs)
    if cells:
        written, mem = set(), []
        for instr in window:
            reads, w = _cells(instr)
            for c in reads:
                if c not in written and "mem:" + c not in mem:
                    mem.append("mem:" + c)
            if w:
                written.add(w)
        out += mem
    return out


def without_attacker_reg(window: List[str]) -> List[str]:
    """Rename the window's own uses of %r15 to a register it does not use."""
    from oracle_splice import find_registers, remap_instrs
    used = set(find_registers(list(window), "x86_64"))
    if ATTACKER_REG not in used:
        return list(window)
    free = [r for r in _POOL if r not in used] or ["r14"]
    return remap_instrs(list(window), "x86_64", {ATTACKER_REG: free[0]})


def to_attacker_canonical(window: List[str], cand: str) -> List[str]:
    """Rewrite the window so the attacker's input is %r15: a register
    candidate is swapped with %r15 throughout (width-preserving); a cell
    candidate "mem:<op>" gets an explicit spill `movq %r15, <op>` in front."""
    from oracle_splice import remap_instrs
    if cand.startswith("mem:"):
        return [f"movq %{ATTACKER_REG}, {cand[4:]}"] + without_attacker_reg(window)
    reg = cand.lstrip("%")
    if reg == ATTACKER_REG:
        return list(window)
    return remap_instrs(list(window), "x86_64", {reg: ATTACKER_REG, ATTACKER_REG: reg})


def find_attacker_register(window: List[str],
                           leaks: Callable[[List[str], str], bool]) -> Optional[str]:
    for reg in attacker_candidates(window):
        if leaks(window, reg):
            return reg
    return None
