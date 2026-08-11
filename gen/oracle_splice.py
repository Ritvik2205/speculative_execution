"""Splice algorithm: ground a "realized" instruction sequence (concrete
opcodes but ARBITRARY register choices, produced by the generator/decoder
pipeline) into real, compilable inline-asm text that is grounded to a REAL
C pointer or value operand.

This module is intentionally self-contained: it knows nothing about the
gadget templates that will embed its output (that wiring is Task 2/3), and
nothing about the leak oracles that will judge the resulting gadget (Task
5/6). Its only job is: given a list of realized instructions, produce a
`(asm_body_text, clobber_list)` pair such that

    __asm__ __volatile__(
        "<asm_body_text>"
        : : "r"(input_expr), "r"(output_expr) : <clobber_list>, "memory");

assembles cleanly, seeds the realized sequence's first-referenced register
from a REAL operand (`input_expr`), and always ends by writing a
cache-line-scaled probe byte into `output_expr` -- the classic
secret-dependent-address side-channel shape every hand-written gadget
template in this repo already uses (`probe[x*64] = 1` /
`probe_array[x*CACHE_LINE_SIZE] = 1`).

Design notes (see task-1-brief.md for the full design points this
implements):

- Register identities are canonicalized across width aliases before
  assignment (x86: %eax/%ax/%al collapse to the `rax` identity; arm64:
  w0/x0 collapse to the `arm0` identity) -- same bug class fixed in
  scripts/translate_riscv_inline_asm.py's canonical_reg(), reimplemented
  here against `%reg`-style realized-instruction tokens instead of that
  translator's bare-literal token surface.
- The realized sequence's FIRST canonical register is seeded from the
  extended-asm input operand (%0) via a fixed, unlikely-to-collide
  physical register (x86: %r15, arm64: x9) that is also placed in the
  clobber list -- clobbering it is what guarantees GCC won't ever assign
  %0/%1 to that same physical register, so there's no real collision risk
  despite the register being "hardcoded".
- Every OTHER canonical register in the realized sequence is assigned a
  fresh register from a small fixed scratch pool, disjoint from the seed.
- For convention="pointer", the seed register additionally gets a byte
  dereferenced out of it (materializing a value) UNLESS the realized
  sequence's own first instruction already dereferences the seed register
  as a memory operand (a common shape -- e.g. "movzbl (%rax), %ebx" IS
  itself the pointer-materializing load). Adding a second, redundant
  dereference in that case would clobber the seed register with the
  loaded byte value before the realized sequence's own load runs off of
  it, breaking that load's addressing. Detecting the already-dereferenced
  case avoids that footgun. For convention="value" no dereference is ever
  added; the input constraint already delivers a byte value into %0.
- A fixed sink sequence is unconditionally appended: shift the sink
  register by CACHE_LINE_SHIFT and store a 1 byte at
  output_expr[sink << CACHE_LINE_SHIFT]. The sink register is whichever
  register the remapped sequence last wrote to (AT&T: rightmost operand
  of the last instruction that has a register destination; arm64:
  leftmost operand, matching this repo's ARM convention of dest-first
  syntax) -- falling back to the seed register when no such destination
  exists (e.g. a pure `nop` sequence).
"""
from __future__ import annotations

import re

CACHE_LINE_SHIFT = 6

# ---------------------------------------------------------------------------
# x86_64 register canonicalization
# ---------------------------------------------------------------------------

# legacy (non r8-r15) register families: (64, 32, 16, 8)-bit names
_X86_LEGACY_GROUPS = [
    ("rax", "eax", "ax", "al"),
    ("rbx", "ebx", "bx", "bl"),
    ("rcx", "ecx", "cx", "cl"),
    ("rdx", "edx", "dx", "dl"),
    ("rsi", "esi", "si", "sil"),
    ("rdi", "edi", "di", "dil"),
    ("rbp", "ebp", "bp", "bpl"),
    ("rsp", "esp", "sp", "spl"),
]

_X86_TABLE: dict[str, tuple[str, str]] = {}  # token -> (family, width)
for _group in _X86_LEGACY_GROUPS:
    _fam = _group[0]
    for _tok, _w in zip(_group, ("q", "d", "w", "b")):
        _X86_TABLE[_tok] = (_fam, _w)
# legacy high-byte registers (no REX needed): ah/bh/ch/dh
for _tok, _fam in (("ah", "rax"), ("bh", "rbx"), ("ch", "rcx"), ("dh", "rdx")):
    _X86_TABLE[_tok] = (_fam, "b")
# extended registers r8-r15, each with q/d/w/b width suffixes
for _n in range(8, 16):
    _fam = f"r{_n}"
    _X86_TABLE[_fam] = (_fam, "q")
    _X86_TABLE[f"r{_n}d"] = (_fam, "d")
    _X86_TABLE[f"r{_n}w"] = (_fam, "w")
    _X86_TABLE[f"r{_n}b"] = (_fam, "b")

_X86_REG_TOKEN_RE = re.compile(r'%([a-z][a-z0-9]*)')
_X86_EXT_FAMILY_RE = re.compile(r'^r(?:8|9|1[0-5])$')


def _x86_lookup(tok: str) -> tuple[str, str]:
    """Return (canonical_family, width) for a bare (no leading %) x86
    register token. Unrecognized tokens (e.g. %rip, segment overrides)
    are treated as their own singleton family at 64-bit width, so they
    pass through remap untouched (never assigned a scratch slot since
    no realized instruction we build will happen to target them)."""
    return _X86_TABLE.get(tok, (tok, "q"))


def _x86_render(target_family: str, width: str) -> str:
    """Render `target_family` (one of our scratch pool names, e.g. r14)
    at the given width, matching the r8-r15 uniform suffix convention."""
    if _X86_EXT_FAMILY_RE.match(target_family):
        suffix = {"q": "", "d": "d", "w": "w", "b": "b"}[width]
        return f"{target_family}{suffix}"
    return target_family


# ---------------------------------------------------------------------------
# arm64 register canonicalization
# ---------------------------------------------------------------------------

_ARM_REG_TOKEN_RE = re.compile(r'\b([xw])(\d{1,2})\b')


# ---------------------------------------------------------------------------
# find_registers / remap_instrs
# ---------------------------------------------------------------------------

def find_registers(instrs: list[str], arch: str) -> list[str]:
    """Return distinct canonical register identities referenced across
    `instrs`, in first-appearance order (width aliases collapsed)."""
    seen: list[str] = []
    if arch == "x86_64":
        for instr in instrs:
            for m in _X86_REG_TOKEN_RE.finditer(instr):
                family, _width = _x86_lookup(m.group(1))
                if family not in seen:
                    seen.append(family)
    elif arch == "arm64":
        for instr in instrs:
            for m in _ARM_REG_TOKEN_RE.finditer(instr):
                canon = f"arm{m.group(2)}"
                if canon not in seen:
                    seen.append(canon)
    else:
        raise ValueError(f"unknown arch: {arch!r}")
    return seen


def remap_instrs(instrs: list[str], arch: str, remap_dict: dict[str, str]) -> list[str]:
    """Substitute every register token in `instrs` per `remap_dict`
    (canonical identity -> target physical register name/number),
    leaving unmapped tokens untouched. Width is preserved: a 32-bit
    source token remapped to family "r14" renders as "r14d", etc."""
    if arch == "x86_64":
        def _x86_repl(m: re.Match) -> str:
            tok = m.group(1)
            family, width = _x86_lookup(tok)
            if family in remap_dict:
                return "%" + _x86_render(remap_dict[family], width)
            return m.group(0)

        return [_X86_REG_TOKEN_RE.sub(_x86_repl, instr) for instr in instrs]

    if arch == "arm64":
        def _arm_repl(m: re.Match) -> str:
            prefix, num = m.group(1), m.group(2)
            canon = f"arm{num}"
            if canon in remap_dict:
                return f"{prefix}{remap_dict[canon]}"
            return m.group(0)

        return [_ARM_REG_TOKEN_RE.sub(_arm_repl, instr) for instr in instrs]

    raise ValueError(f"unknown arch: {arch!r}")


# ---------------------------------------------------------------------------
# splice
# ---------------------------------------------------------------------------

_X86_SEED = "r15"
_X86_SCRATCH_POOL = ["r14", "r13", "r12", "r11", "r10", "r9", "r8"]

_ARM_SEED = "9"
_ARM_SCRATCH_POOL = ["10", "11", "12", "13", "14"]
_ARM_CONST_REG = "8"  # dedicated register for the literal "1" probe write


def _split_top_level(operand_text: str, open_ch: str, close_ch: str) -> list[str]:
    """Split a comma-separated operand list on top-level commas only,
    respecting nesting inside open_ch/close_ch (so x86 indexed addressing
    like "(%rbx,%r15,1)" or arm64 "[x1, x2]" isn't split internally)."""
    tokens: list[str] = []
    depth = 0
    cur = ""
    for c in operand_text:
        if c == open_ch:
            depth += 1
            cur += c
        elif c == close_ch:
            depth -= 1
            cur += c
        elif c == "," and depth == 0:
            tokens.append(cur.strip())
            cur = ""
        else:
            cur += c
    if cur.strip():
        tokens.append(cur.strip())
    return tokens


_X86_SINK_CANDIDATE_RE = re.compile(r'^%r(?:8|9|1[0-5])[dwb]?$')
_ARM_SINK_CANDIDATE_RE = re.compile(r'^[xw](?:9|1[0-4])$')


def _find_sink_register(remapped: list[str], arch: str) -> str | None:
    """Return the physical scratch register (bare family name for x86,
    bare number for arm64) that the remapped sequence last wrote to, or
    None if no instruction has a plain-register destination."""
    if arch == "x86_64":
        for instr in reversed(remapped):
            parts = instr.strip().split(None, 1)
            if len(parts) < 2:
                continue
            operands = _split_top_level(parts[1], "(", ")")
            if not operands:
                continue
            last = operands[-1]
            m = _X86_SINK_CANDIDATE_RE.match(last)
            if m:
                # strip leading % and width suffix -> bare family, e.g. "r14"
                bare = last.lstrip("%")
                fam_match = re.match(r'r(8|9|1[0-5])', bare)
                return f"r{fam_match.group(1)}"
        return None

    if arch == "arm64":
        for instr in reversed(remapped):
            parts = instr.strip().split(None, 1)
            if len(parts) < 2:
                continue
            operands = _split_top_level(parts[1], "[", "]")
            if not operands:
                continue
            first = operands[0]
            m = _ARM_SINK_CANDIDATE_RE.match(first)
            if m:
                return first[1:]  # strip leading x/w -> bare number
        return None

    raise ValueError(f"unknown arch: {arch!r}")


def _x86_seed_used_as_memory_operand(instr: str, seed: str) -> bool:
    """True if `seed` (bare family, e.g. "r15") appears inside a
    parenthesized memory operand of `instr` -- i.e. the instruction
    already dereferences the seed register itself."""
    for m in re.finditer(r'\(([^)]*)\)', instr):
        if re.search(rf'%{re.escape(seed)}\b', m.group(1)):
            return True
    return False


def _arm_seed_used_as_memory_operand(instr: str, seed: str) -> bool:
    """True if `seed` (bare number, e.g. "9") appears inside a
    bracketed memory operand of `instr` (arm64 [xN] / [xN, ...])."""
    for m in re.finditer(r'\[([^\]]*)\]', instr):
        if re.search(rf'\b[xw]{re.escape(seed)}\b', m.group(1)):
            return True
    return False


def splice(realized: list[str], arch: str, convention: str,
           input_expr: str, output_expr: str) -> tuple[str, list[str]]:
    """Ground `realized` into compilable inline-asm text.

    Returns (asm_body_text, clobber_list). `asm_body_text` uses "\\n\\t"
    (literal backslash-escape text, not raw newlines -- required since
    this text is embedded directly inside a quoted C string literal by
    the caller) to separate instructions, and doubles every literal '%'
    on physical register references (required by GCC/clang extended-asm
    syntax, which treats a single '%' as an operand-substitution
    marker). `input_expr`/`output_expr` are not used directly here --
    they are the caller's job to wrap as "r"(input_expr)/"r"(output_expr)
    supplying %0/%1; this function only emits the %0/%1 references.
    """
    if arch not in ("x86_64", "arm64"):
        raise ValueError(f"unknown arch: {arch!r}")
    if convention not in ("pointer", "value"):
        raise ValueError(f"unknown convention: {convention!r}")

    canon_regs = find_registers(realized, arch)
    seed = _X86_SEED if arch == "x86_64" else _ARM_SEED
    scratch_pool = _X86_SCRATCH_POOL if arch == "x86_64" else _ARM_SCRATCH_POOL

    remap: dict[str, str] = {}
    used_targets: list[str] = []
    if canon_regs:
        remap[canon_regs[0]] = seed
        for i, reg in enumerate(canon_regs[1:]):
            target = scratch_pool[i % len(scratch_pool)]
            remap[reg] = target
            if target not in used_targets:
                used_targets.append(target)

    remapped = remap_instrs(realized, arch, remap)

    sink = _find_sink_register(remapped, arch) or seed
    if sink not in used_targets and sink != seed:
        used_targets.append(sink)

    lines: list[str] = []

    if arch == "x86_64":
        lines.append(f"movq %0, %{seed}")
        needs_deref = convention == "pointer" and not (
            remapped and _x86_seed_used_as_memory_operand(remapped[0], seed)
        )
        if needs_deref:
            lines.append(f"movzbl (%{seed}), %{seed}d")
        lines.extend(remapped)
        lines.append(f"shlq ${CACHE_LINE_SHIFT}, %{sink}")
        lines.append(f"movb $1, (%1,%{sink})")

        clobbers = [seed] + used_targets + ["cc"]
        asm_text = "\\n\\t".join(line.replace("%", "%%") for line in lines)
        # %0/%1 placeholders must stay single-percent -- undo the blanket
        # escape for those two specific tokens.
        asm_text = asm_text.replace("%%0", "%0").replace("%%1", "%1")
        return asm_text, clobbers

    # arm64
    lines.append(f"mov x{seed}, %0")
    needs_deref = convention == "pointer" and not (
        remapped and _arm_seed_used_as_memory_operand(remapped[0], seed)
    )
    if needs_deref:
        lines.append(f"ldrb w{seed}, [x{seed}]")
    lines.extend(remapped)
    lines.append(f"lsl x{sink}, x{sink}, #{CACHE_LINE_SHIFT}")
    lines.append(f"mov w{_ARM_CONST_REG}, #1")
    lines.append(f"strb w{_ARM_CONST_REG}, [%1, x{sink}]")

    clobbers = [f"x{seed}"] + [f"x{t}" for t in used_targets] + [f"x{_ARM_CONST_REG}", "cc"]
    asm_text = "\\n\\t".join(line.replace("%", "%%") for line in lines)
    asm_text = asm_text.replace("%%0", "%0").replace("%%1", "%1")
    return asm_text, clobbers
