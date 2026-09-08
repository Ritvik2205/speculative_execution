#!/usr/bin/env python3
"""
taint_slice.py — shift-magnitude-independent secret-source/transmitter
taint slice (Task 4.2, W4, closes G2).

Supersedes the ``PROBE_SHIFT_AMOUNTS`` gate in ``spec/dataflow_taint.py``
(dataflow_taint.py:89), which only recognizes the Meltdown/L1TF/MDS
page-or-cache-line-scale SHIFT idiom and therefore MISSES any gadget that
scales an attacker-controlled index by a non-shift instruction — most
commonly x86 ``lea (%base,%idx,8)`` (a scaled-index LEA, no ``shl``
anywhere), but also ``imul``/``mul``-scaled indices on any ISA. G2 in the
verification-gap audit calls this out explicitly.

## The algorithm

This module marks secret-source/transmitter by DATAFLOW REACHABILITY from an
attacker-controlled input to a memory-op ADDRESS operand, using Task 4.1's
disassembler-grounded def-use (``spec/ir_defuse.py::defuse_for_sequence``)
instead of a DATA_DEP-edge graph walk gated on a specific instruction shape:

1. Seed a taint set with ``attacker_inputs`` (canonical register names —
   typically the calling convention's argument registers; see
   ``default_attacker_inputs``).
2. Walk the sequence in program order. For each instruction (using its
   Task-4.1 ``(defs, uses)`` pair):
   a. If the instruction is a LOAD or STORE (``pdg.nodes[i].opcode_category``)
      AND any of its ADDRESS registers (see "flows into an address" below)
      is currently tainted:
        - the FIRST such node encountered is marked ``is_secret_source``
          (this is the classic ``secret = array1[attacker_idx]`` step: an
          attacker-controlled value selects WHAT gets read);
        - every SUCH node encountered AFTER that is marked ``is_transmitter``
          (``array2[secret * stride]``: a value that is itself downstream of
          the first tainted access is now steering a second memory op —
          the transmission step, independent of what instruction produced
          the scaled index).
   b. Standard forward taint propagation (independent of (a)): if the
      instruction USES a currently-tainted register, every register it DEFS
      also becomes tainted. This is what lets a scaling instruction (LEA,
      IMUL, SHL, ADD, ...) carry taint from an index register into the
      register that then serves as a later memory op's address — no
      allowlist of "scaling instructions" is consulted, so any instruction
      shape that moves a tainted value into a register works.

Because step (b) doesn't care whether the register calculation used a shift,
an LEA, a multiply, or three ADDs in a row, this closes G2 without adding a
new instruction-shape allowlist to replace the old shift-magnitude one.

## The precision guard

The first taint attempt at this problem (see dataflow_taint.py's own
docstring, "FIRST ATTEMPT (superseded)") fired on ordinary pointer chasing
(``mov (%rax),%rbx; mov (%rbx),%rcx``) because it treated "reachable from
ANY earlier LOAD" as sufficient — 89.5% of the signal landed on BENIGN.
This module avoids that failure mode two ways, both required:

1. **The taint source is attacker input, not "any earlier LOAD."** A
   register only starts tainted if it's in ``attacker_inputs`` (by default,
   the calling convention's argument registers — see
   ``default_attacker_inputs``). Ordinary struct/array/pointer-chase code
   with no attacker-controlled seed never taints anything, so it can never
   trigger a mark, regardless of how many LOADs it chains.
2. **Only an ADDRESS operand counts, not any use.** A register that is
   tainted but is only ever used as a VALUE (e.g. a stored value, or an
   arithmetic operand that isn't fed into a later address) never triggers a
   mark. "Flows into an address" is decided by ``address_regs_of``: the
   registers that appear textually inside the memory-operand delimiters of
   an instruction (``(...)`` for x86/RISC-V, ``[...]`` for ARM64) — i.e.
   exactly the registers that participate in computing the effective
   address, as opposed to (for a STORE) the value register, which sits
   outside those delimiters.

Usage:
    from taint_slice import mark_secret_transmitter, default_attacker_inputs
    from ir_defuse import defuse_for_sequence

    defuse = defuse_for_sequence(sequence, "x86_64")
    mark_secret_transmitter(pdg, defuse, default_attacker_inputs("x86_64"))
"""

from __future__ import annotations

import re
import sys
from pathlib import Path
from typing import List, Set, Tuple

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

from pdg_builder import PDG, OPCODE_CATEGORIES, SPEC_FLAGS  # noqa: E402
from ir_defuse import _ARCH_SPEC_FILES, _engine_for, _regs_in  # noqa: E402

LOAD_CAT = OPCODE_CATEGORIES["LOAD"]
STORE_CAT = OPCODE_CATEGORIES["STORE"]
MEM_OP_CATS = (LOAD_CAT, STORE_CAT)
IS_SECRET_SOURCE = SPEC_FLAGS["is_secret_source"]
IS_TRANSMITTER = SPEC_FLAGS["is_transmitter"]

# Registers that participate in computing an effective address sit inside
# the memory-operand delimiters: x86/RISC-V `(...)` (`(%rax,%rbx,8)`,
# `0(t0)`), ARM64 `[...]` (`[x0, x1, lsl #3]`). Matching either, ISA-agnostic,
# and letting `_regs_in` (Task 4.1's canonicalizing register finder) do the
# per-arch extraction on the captured substring keeps this free of any new
# per-ISA literal.
_MEM_OPERAND_RE = re.compile(r"\(([^)]*)\)|\[([^\]]*)\]")

# Calling-convention argument registers, canonicalized to match
# `ir_defuse.defuse_for_sequence`'s output convention exactly (64-bit/x-root
# for x86/arm64; RISC-V ABI names are already root-width).
_DEFAULT_ATTACKER_INPUTS = {
    "x86_64.json": {"rdi", "rsi", "rdx", "rcx", "r8", "r9"},
    "arm64.json": {"x0", "x1", "x2", "x3", "x4", "x5", "x6", "x7"},
    "riscv.json": {"a0", "a1", "a2", "a3", "a4", "a5", "a6", "a7"},
}


def default_attacker_inputs(arch: str) -> Set[str]:
    """Function-argument registers for `arch`, in the canonical form
    `ir_defuse.defuse_for_sequence` uses: x86_64 {rdi,rsi,rdx,rcx,r8,r9},
    arm64 {x0..x7}, riscv {a0..a7}."""
    spec_fname = _ARCH_SPEC_FILES.get(arch.strip().lower())
    if spec_fname is None or spec_fname not in _DEFAULT_ATTACKER_INPUTS:
        raise ValueError(f"taint_slice: unknown arch {arch!r}")
    return set(_DEFAULT_ATTACKER_INPUTS[spec_fname])


def address_regs_of(raw_instruction: str, arch: str = "x86_64") -> Set[str]:
    """Registers used to compute the effective address of `raw_instruction`'s
    memory operand — i.e. the registers textually inside `(...)`/`[...]` —
    canonicalized the same way `ir_defuse.defuse_for_sequence` canonicalizes
    its (defs, uses). Returns an empty set for an instruction with no memory
    operand (or one written with no parens/brackets)."""
    spec_fname = _ARCH_SPEC_FILES.get(arch.strip().lower())
    if spec_fname is None:
        raise ValueError(f"taint_slice: unknown arch {arch!r}")
    engine = _engine_for(arch)
    regs: Set[str] = set()
    for m in _MEM_OPERAND_RE.finditer(raw_instruction):
        inner = m.group(1) if m.group(1) is not None else m.group(2)
        regs |= set(_regs_in(inner, spec_fname, engine))
    return regs


def mark_secret_transmitter(
    pdg: PDG,
    defuse: List[Tuple[Set[str], Set[str]]],
    attacker_inputs: Set[str],
    arch: str = "x86_64",
) -> PDG:
    """Mutate `pdg.nodes`' spec_flags in place: mark `is_secret_source` on
    the first LOAD/STORE whose address registers are reachable (by forward
    taint, from Task 4.1's def-use) from `attacker_inputs`, and
    `is_transmitter` on every subsequent LOAD/STORE whose address is
    likewise tainted — independent of what instruction(s) computed the
    tainted address register (shift, LEA, IMUL, chained ADDs, ...).

    `defuse` must be index-aligned 1:1 with `pdg.nodes` (i.e. already
    filtered down to the instruction lines that produced a node — see
    `spec_pdg_builder.py`'s "slice" taint_mode for how that alignment is
    produced from `ir_defuse.defuse_for_sequence`'s per-line output).
    """
    if len(defuse) != len(pdg.nodes):
        raise ValueError(
            f"taint_slice: defuse length {len(defuse)} != pdg.nodes length "
            f"{len(pdg.nodes)} — defuse must be index-aligned with pdg.nodes"
        )

    tainted: Set[str] = set(attacker_inputs)
    secret_source_marked = False

    for node, (defs, uses) in zip(pdg.nodes, defuse):
        if node.opcode_category in MEM_OP_CATS:
            addr_regs = address_regs_of(node.raw_instruction, arch)
            if addr_regs and (addr_regs & tainted):
                if not secret_source_marked:
                    node.spec_flags[IS_SECRET_SOURCE] = 1.0
                    secret_source_marked = True
                else:
                    node.spec_flags[IS_TRANSMITTER] = 1.0

        # Standard forward taint propagation, independent of the mark above:
        # any instruction (mem op or not) that USES a tainted register taints
        # everything it DEFS. This is what carries taint through scaling
        # instructions (LEA/IMUL/SHL/ADD/...) with no per-instruction allowlist.
        if uses & tainted:
            tainted |= defs

    return pdg
