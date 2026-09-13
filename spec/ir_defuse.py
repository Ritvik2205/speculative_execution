#!/usr/bin/env python3
"""
ir_defuse.py — disassembler-grounded def-use extraction (Task 4.1, W4).

Replaces the PDG builder's regex def-use heuristic ("first register found in
the text is the destination, everything else is a source, a few whole
categories are all-source") with an operand-order-aware parse that gets
read-modify-write, sub-register aliasing, and load/store/compare direction
right.

## Why this is NOT angr/VEX (deviation from the plan text)

The plan names angr's VEX IR (or Ghidra P-Code) as the def-use source.
Neither is installed in this environment (verified: `angr`/`pyvex` absent
from both the base interpreter and the repo venv). `capstone` 5.0.6 *is*
installed, but only in `venv/bin/python3` — and capstone's `regs_access()`
(the API that gives real def-use, including implicit operands) requires an
already-*disassembled* instruction, i.e. **bytes**, not the assembly text our
records are stored as. There is no keystone (or other assembler) available
to turn our AT&T/ARM/RISC-V text lines into bytes, so capstone cannot be
made to run on this repo's actual input without a much bigger dependency
change than Task 4.1 authorizes.

Ruling (per controller): implement the improvement achievable on text input —
an operand-order-aware parser with explicit read-modify-write, sub-register
canonicalization, and load/store/compare direction rules — as the primary,
tested path. Keep an **optional** `capstone`-on-bytes path
(`defuse_from_capstone_bytes`) for callers that do have bytes; it degrades to
raising `RuntimeError` when capstone is unavailable and is never imported at
module load time (the whole module must import and run under the base
interpreter, which has no capstone).

## The rules

For every instruction, registers are canonicalized to their 64-bit (or,
for ARM64 vector/FP registers, `v<n>`) root: x86 `al/ah/ax/eax/rax` -> `rax`,
ARM64 `w0` -> `x0`, RISC-V register names are already root-width.

Per-category def-use:
- **STORE** (incl. ARM64/x86 stores): no register def (the def is the memory
  location); every register operand — value AND address — is a use. This is
  the pre-existing "all-source" treatment, kept because it's already correct.
- **COMPARE** (`cmp`/`test`/`cmn`/`tst`/...): no def; both operands are uses.
- **BRANCH_COND/BRANCH_UNCOND/CALL/CALL_INDIRECT/JUMP_INDIRECT**: no def; any
  register operand (e.g. an indirect branch/call target) is a use. (This
  module also treats JUMP_INDIRECT as all-source, closing a gap in the
  existing spec engine's `register_extraction.all_source_categories`, which
  omits it — `jmp *%rax` does read `rax`.)
- **Everything else** (LOAD, MOVE, ARITHMETIC, LOGIC, SHIFT, STACK, ...): the
  operand list is split on top-level commas and oriented using the spec's
  `operand_order` (`"src_first"` for AT&T x86 — `op src, dst` — vs.
  `dst_first`, the default, for ARM64/RISC-V — `op dst, src...`). The last
  (`src_first`) or first (`dst_first`) operand's registers are the defs; every
  other operand's registers are uses. This alone fixes both required cases:
  - `mov (%rax,%rbx,8), %rcx` (LOAD): dest operand is `%rcx` (last operand,
    src_first) -> def; `%rax`/`%rbx` live in the *other* operand -> uses.
    No LOAD-specific code needed — operand-order splitting does it for free.
  - `mov %al, %bl` (MOVE): dest operand is `%bl` (last, src_first) -> def
    `rbx`; `%al` -> use `rax`. This is the bug the plan calls out: the old
    heuristic ("first reg in the text is dest") got this backwards.
  - **Read-modify-write**: x86 AT&T arithmetic/logic/shift is 2-address
    (`add %rax, %rbx` means `rbx op= rax`) so the destination operand's
    registers are ALSO added to uses — but only when the category is
    ARITHMETIC/LOGIC/SHIFT, the arch is x86_64, and the (suffix-stripped)
    mnemonic is one of `add/sub/and/or/xor/shl/shr/sar/rol/ror/sal/inc/dec/
    neg/not/adc/sbb`. ARM64/RISC-V 3-address forms (`add x0, x1, x2` /
    `add t0, t1, t2`) are NOT RMW — the destination register doesn't appear
    among the sources — so this rule never fires for them, which is exactly
    what the plan's RISC-V case requires.
  - Single-operand x86 RMW (`neg %rax`, `not %rax`, `inc %rax`, `dec %rax`):
    the one operand is both def and use.
  - STACK (`push`/`pop`, the only opcode family the spec engine reclassifies
    out of LOAD/STORE by looking for `push`/`pop` in the text):
    `push` -> use-only (value read, memory is the def); `pop` -> def-only.
  - Any other single-operand, non-RMW instruction (e.g. `clflush (%rax)`,
    `dc civac, x0`, a bare CACHE/TIMING/FENCE operand) defaults to use-only
    (reads an address/value, defines no register) rather than the old
    default's "first reg is a def" — conservative and matches every
    instruction of this shape that actually appears in the corpus.
"""

from __future__ import annotations

import re
import sys
from pathlib import Path
from typing import Dict, List, Optional, Set, Tuple

ROOT = Path(__file__).resolve().parent.parent
_SPEC_DIR = str(ROOT / "spec")
if _SPEC_DIR not in sys.path:
    sys.path.insert(0, _SPEC_DIR)

from isa_spec import SpecEngine, load_engine  # noqa: E402

# Optional capstone-on-bytes path. Never required — the module must import
# fine under the base interpreter, which has no capstone installed.
try:
    import capstone  # type: ignore
    _HAVE_CAPSTONE = True
except ImportError:  # pragma: no cover - environment dependent
    capstone = None  # type: ignore
    _HAVE_CAPSTONE = False


# ---------------------------------------------------------------------------
# Arch -> spec file, and a small engine cache (SpecEngine construction parses
# JSON + compiles regexes; cheap, but no reason to redo it per call).
# ---------------------------------------------------------------------------

_ARCH_SPEC_FILES = {
    "x86_64": "x86_64.json",
    "x86-64": "x86_64.json",
    "x86_64.json": "x86_64.json",
    "x86": "x86_64.json",
    "amd64": "x86_64.json",
    "arm64": "arm64.json",
    "arm64.json": "arm64.json",
    "aarch64": "arm64.json",
    "riscv64": "riscv.json",
    "riscv": "riscv.json",
    "riscv.json": "riscv.json",
    "rv64": "riscv.json",
}

_engine_cache: Dict[str, SpecEngine] = {}


def _engine_for(arch: str) -> SpecEngine:
    key = arch.strip().lower()
    fname = _ARCH_SPEC_FILES.get(key)
    if fname is None:
        raise ValueError(f"ir_defuse: unknown arch {arch!r}")
    eng = _engine_cache.get(fname)
    if eng is None:
        eng = load_engine(fname)
        _engine_cache[fname] = eng
    return eng


# ---------------------------------------------------------------------------
# Sub-register canonicalization.
# ---------------------------------------------------------------------------

_X86_CANON: Dict[str, str] = {}
for root, subs in {
    "rax": ["rax", "eax", "ax", "al", "ah"],
    "rbx": ["rbx", "ebx", "bx", "bl", "bh"],
    "rcx": ["rcx", "ecx", "cx", "cl", "ch"],
    "rdx": ["rdx", "edx", "dx", "dl", "dh"],
    "rsi": ["rsi", "esi", "si", "sil"],
    "rdi": ["rdi", "edi", "di", "dil"],
    "rbp": ["rbp", "ebp", "bp", "bpl"],
    "rsp": ["rsp", "esp", "sp", "spl"],
}.items():
    for s in subs:
        _X86_CANON[s] = root
for _i in range(8, 16):
    root = f"r{_i}"
    for suf in ("", "d", "w", "b"):
        _X86_CANON[f"r{_i}{suf}"] = root

# Broader than the spec engine's `reg` pattern (which only covers 16/32/64-bit
# a/b/c/d/si/di/bp/sp forms, not 8-bit al/ah/bl/bh/... or r8b/r9w/...): we
# need the full width ladder to canonicalize `mov %al, %bl` correctly.
_X86_REG_RE = re.compile(
    r"%(" + "|".join(sorted(_X86_CANON.keys(), key=len, reverse=True)) + r")\b",
    re.IGNORECASE,
)


def _canon_x86(reg: str) -> str:
    return _X86_CANON.get(reg.lower(), reg.lower())


def _canon_arm64(reg: str) -> str:
    r = reg.lower()
    if r in ("sp", "lr", "fp", "pc", "xzr"):
        return r
    if r == "wzr":
        return "xzr"
    m = re.match(r"^([xwbhsdq])([0-9]+)$", r)
    if m:
        letter, num = m.groups()
        if letter in ("x", "w"):
            return f"x{num}"
        return f"v{num}"  # b/h/s/d/q<n> are FP/vector aliases of v<n>, not x<n>
    return r


def _canon_riscv(reg: str) -> str:
    return reg.lower()  # RISC-V register names are already root-width


_CANON_FN = {
    "x86_64.json": _canon_x86,
    "arm64.json": _canon_arm64,
    "riscv.json": _canon_riscv,
}

# Fall back to the (narrower) spec-engine `reg` pattern for arm64/riscv, which
# already covers every general-purpose form those ISAs use; x86 needs the
# wider ladder above to see 8-bit registers at all.
_REG_RE_OVERRIDE = {
    "x86_64.json": _X86_REG_RE,
}


def _regs_in(text: str, spec_fname: str, engine: SpecEngine) -> List[str]:
    pat = _REG_RE_OVERRIDE.get(spec_fname) or engine._pat["reg"]
    canon = _CANON_FN[spec_fname]
    return [canon(m) for m in pat.findall(text)]


# ---------------------------------------------------------------------------
# x86 read-modify-write mnemonics (AT&T 2-address arithmetic/logic/shift).
# ---------------------------------------------------------------------------

_RMW_ROOTS_X86 = {
    "add", "sub", "and", "or", "xor", "shl", "shr", "sar", "rol", "ror",
    "sal", "inc", "dec", "neg", "not", "adc", "sbb",
}


def _x86_mnemonic_root(mnemonic: str) -> str:
    m = mnemonic.lower()
    if m in _RMW_ROOTS_X86:
        return m
    if len(m) > 1 and m[-1] in "qlwb" and m[:-1] in _RMW_ROOTS_X86:
        return m[:-1]
    return m


# Categories that are entirely source operands (no register def): the memory
# location (for STORE) or the branch/call target (for control transfers) is
# the "def", not a register. Base on the spec engine's own
# `register_extraction.all_source_categories`, plus JUMP_INDIRECT (an
# indirect jump reads its target register; the base spec omits this — a
# pre-existing gap this module does not need to reproduce).
_ALL_SOURCE_EXTRA = {"JUMP_INDIRECT"}


def _all_source_categories(engine: SpecEngine) -> Set[int]:
    cats = engine.opcode_categories
    names = set(engine.spec["register_extraction"]["all_source_categories"]) | _ALL_SOURCE_EXTRA
    return {cats[n] for n in names if n in cats}


def _cat_name(engine: SpecEngine, cat: int) -> str:
    for name, idx in engine.opcode_categories.items():
        if idx == cat:
            return name
    return "OTHER"


def _is_instruction(line: str) -> bool:
    s = line.strip()
    return bool(s) and not s.endswith(":") and not s.startswith(".")


def _split_mnemonic_operands(instr: str) -> Tuple[str, List[str]]:
    parts = instr.strip().split(None, 1)
    mnemonic = parts[0].lower() if parts else ""
    if len(parts) < 2:
        return mnemonic, []
    return mnemonic, SpecEngine._split_operands(parts[1])


# ---------------------------------------------------------------------------
# Public API.
# ---------------------------------------------------------------------------

def defuse_for_sequence(
    sequence: List[str], arch: str
) -> List[Tuple[Set[str], Set[str]]]:
    """Per-instruction (defs, uses) for an assembly-text `sequence`.

    Registers are canonicalized to their 64-bit (x86/RISC-V) or `x<n>`/`v<n>`
    (ARM64) root. Returned list is index-aligned with `sequence` (same
    convention as `v54.pdg_builder.PDGBuilder.build`): a label, directive, or
    blank line gets an empty `(set(), set())` entry rather than being
    dropped, so callers can zip this against the input sequence directly.
    """
    spec_fname = _ARCH_SPEC_FILES.get(arch.strip().lower())
    if spec_fname is None:
        raise ValueError(f"ir_defuse: unknown arch {arch!r}")
    engine = _engine_for(arch)
    all_source = _all_source_categories(engine)
    cats = engine.opcode_categories
    order = engine.spec.get("operand_order")  # "src_first" or None (dst_first)
    is_x86 = spec_fname == "x86_64.json"

    out: List[Tuple[Set[str], Set[str]]] = []
    for line in sequence:
        instr = line.strip()
        if not _is_instruction(instr):
            out.append((set(), set()))
            continue

        category = engine.classify_opcode(instr)
        mnemonic, operands = _split_mnemonic_operands(instr)

        if category in all_source:
            all_regs = set(_regs_in(instr, spec_fname, engine))
            out.append((set(), all_regs))
            continue

        if category == cats.get("STACK"):
            regs = set(_regs_in(instr, spec_fname, engine))
            if mnemonic.startswith("pop"):
                out.append((regs, set()))
            elif mnemonic.startswith("push"):
                out.append((set(), regs))
            else:  # unrecognized STACK op: conservative RMW-ish default
                out.append((regs, regs))
            continue

        if not operands:
            out.append((set(), set()))
            continue

        if len(operands) == 1:
            regs = set(_regs_in(operands[0], spec_fname, engine))
            root = _x86_mnemonic_root(mnemonic) if is_x86 else mnemonic
            rmw_cat = category in (
                cats.get("ARITHMETIC"), cats.get("LOGIC"), cats.get("SHIFT"),
            )
            if is_x86 and rmw_cat and root in _RMW_ROOTS_X86:
                out.append((set(regs), set(regs)))
            else:
                # e.g. `clflush (%rax)`, `dc civac, x0`: reads, defines nothing.
                out.append((set(), regs))
            continue

        # >= 2 operands: orient dest vs. source(s) by ISA operand order.
        if order == "src_first":
            dest_operand, src_operands = operands[-1], operands[:-1]
        else:
            dest_operand, src_operands = operands[0], operands[1:]

        defs = set(_regs_in(dest_operand, spec_fname, engine))
        uses: Set[str] = set()
        for op in src_operands:
            uses |= set(_regs_in(op, spec_fname, engine))

        root = _x86_mnemonic_root(mnemonic) if is_x86 else mnemonic
        rmw_cat = category in (
            cats.get("ARITHMETIC"), cats.get("LOGIC"), cats.get("SHIFT"),
        )
        if is_x86 and rmw_cat and root in _RMW_ROOTS_X86:
            uses |= defs  # 2-address form: dest is also read

        out.append((defs, uses))

    return out


def defuse_from_capstone_bytes(
    code: bytes, arch: str, address: int = 0
) -> List[Tuple[Set[str], Set[str]]]:
    """Optional bytes-input path via capstone's `regs_access()`.

    Only usable when `capstone` is importable (repo venv, not the base
    interpreter) AND the caller has already-assembled machine code — this
    repo's records are assembly *text*, so `defuse_for_sequence` is the path
    actually exercised. Kept for future callers that do have bytes (e.g. a
    disassembled binary corpus) and for symmetry with the plan's original
    IR-lift design.
    """
    if not _HAVE_CAPSTONE:
        raise RuntimeError(
            "ir_defuse.defuse_from_capstone_bytes requires capstone, which "
            "is not installed in this interpreter (it is only present in "
            "venv/bin/python3 in this repo)."
        )
    key = arch.strip().lower()
    if key in ("x86_64", "x86-64", "amd64"):
        md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_64)
        canon = _canon_x86
    elif key in ("arm64", "aarch64"):
        md = capstone.Cs(capstone.CS_ARCH_ARM64, capstone.CS_MODE_ARM)
        canon = _canon_arm64
    elif key in ("riscv64", "riscv", "rv64"):
        md = capstone.Cs(capstone.CS_ARCH_RISCV, capstone.CS_MODE_RISCV64)
        canon = _canon_riscv
    else:
        raise ValueError(f"ir_defuse: unknown arch {arch!r}")
    md.detail = True

    out: List[Tuple[Set[str], Set[str]]] = []
    for insn in md.disasm(code, address):
        regs_read, regs_written = insn.regs_access()
        uses = {canon(insn.reg_name(r)) for r in regs_read}
        defs = {canon(insn.reg_name(r)) for r in regs_written}
        out.append((defs, uses))
    return out
