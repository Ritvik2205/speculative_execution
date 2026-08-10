#!/usr/bin/env python3
"""
translate_riscv_inline_asm.py — regenerate the RISC-V corpus at the source
level (SPECDISCOVER_VERIFICATION_GAPS.md G6, corpus-contamination fix).

Confirmed this session: 488/498 (98%) of riscv_corpus/*.s fail to actually
assemble (`riscv64-elf-gcc -c` errors) because the original pipeline used
`gcc -S` and never invoked the assembler. The reason they fail: 139 C source
files under c_vulns/c_code/** contain __asm__ blocks written in ARM64 or x86
AT&T syntax (inline asm is opaque to the compiler backend — it is copied
verbatim regardless of compilation target). Catalogued every distinct
inline-asm STATEMENT actually used (2081 blocks -> 89 distinct statements,
dominated by ~20 real primitives) by reading the C sources directly.

This script:
  1. Finds every __asm__ / __asm__ __volatile__(...) invocation in the
     affected files.
  2. Per block, identifies literal hardcoded scratch registers (ARM x0-x31/
     w0-w31, x86 %%eax/%%ebx/.../bare eax-style) used OUTSIDE of %N operand
     placeholders (which GCC's register allocator already substitutes
     correctly per-target — confirmed by reading real compiled output) and
     remaps them to safe RISC-V temporaries (t0..t6, never x0/zero).
  3. Translates each statement via a table built from the exact catalog
     found (see TRANSLATION_TABLE below).
  4. Wraps the result in #if defined(__riscv) / #else / #endif so the
     existing x86_64/arm64 compilation path (which the real x86/ARM training
     corpus is built from — a separate compile of these same .c files) is
     completely untouched.
  5. Anything that doesn't match the catalog is FLAGGED, not guessed.

Two special whole-snippet cases handled separately from the per-statement
table (they need surrounding C-level restructuring, not just a mnemonic
swap): the x86 "rdtsc" timer-read helper (splits into hi/lo halves via
fixed "=a"/"=d" constraints — no %N placeholder to hook a line-translator
onto) and the "cmp;sbb" x86 mask-generation trick (flags-based, no direct
RISC-V one-line equivalent).

Run (dry-run, no files touched):
  python3 scripts/translate_riscv_inline_asm.py --report

Run (apply, writes files, keeps a .pre_riscv_fix backup of each):
  python3 scripts/translate_riscv_inline_asm.py --apply
"""

from __future__ import annotations

import argparse
import glob
import re
import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

# ---------------------------------------------------------------------------
# Block-level register remap: literal hardcoded scratch registers found in
# inline-asm text (never a %N placeholder — those are already GCC-allocated
# correctly for whatever target) get remapped, in first-appearance order per
# block, to these safe RISC-V temporaries. Never x0 (hardwired zero) or a0-a7
# (could collide with real ABI args if reused carelessly — temporaries are
# always safe for a self-contained clobbered scratch register).
RISCV_TEMPS = ["t0", "t1", "t2", "t3", "t4", "t5", "t6"]

# Recognize literal scratch-register tokens (ARM Xn/Wn, x86 32/64-bit names)
# appearing in asm text OUTSIDE %N placeholders.
_ARM_REG_RE = re.compile(r'\b[xw](\d{1,2})\b')
_X86_REG_RE = re.compile(r'%%?(eax|ebx|ecx|edx|esi|edi|ebp|esp|'
                          r'rax|rbx|rcx|rdx|rsi|rdi|rbp|rsp|al|bl)\b')

# ARM w0/x0 (32-bit/64-bit views of the same physical register) and x86
# eax/rax-style width aliases must canonicalize to ONE identity before
# remap-slot assignment — otherwise the same physical register gets split
# across two different RISC-V temps, silently breaking the data-flow edge
# between instructions that read/write it at different widths (confirmed:
# this broke the LOAD->SHIFT edge dataflow_taint.py needs for the L1TF/MDS
# page-probe idiom, see eval/RISCV_DEEPER_ROOT_CAUSE.md H1).
_X86_WIDTH_ALIAS = {
    "eax": "rax", "al": "rax",
    "ebx": "rbx", "bl": "rbx",
    "ecx": "rcx", "edx": "rdx",
    "esi": "rsi", "edi": "rdi",
    "ebp": "rbp", "esp": "rsp",
}


def canonical_reg(norm: str) -> str:
    """Map a literal register token to its canonical physical-register
    identity, collapsing width aliases (w0/x0, eax/rax, al/rax, ...)."""
    m = _ARM_REG_RE.fullmatch(norm)
    if m:
        return f"arm{m.group(1)}"
    return _X86_WIDTH_ALIAS.get(norm, norm)


def find_literal_registers(body: str) -> list[str]:
    """Return distinct literal scratch-register tokens in body, in
    first-appearance order. Excludes %N placeholders (handled separately).
    Returns CANONICAL identities (width aliases collapsed), not raw
    tokens — see canonical_reg()."""
    # strip %N / %qN placeholders first so we don't misparse them
    stripped = re.sub(r'%q?\d+', '', body)
    seen: list[str] = []
    for m in re.finditer(r'%%?[a-zA-Z][a-zA-Z0-9]*|\b[xw]\d{1,2}\b', stripped):
        tok = m.group(0)
        norm = tok.lstrip('%')
        if norm in ("memory", "cc"):
            continue
        if _ARM_REG_RE.fullmatch(norm) or norm in (
            "eax", "ebx", "ecx", "edx", "esi", "edi", "ebp", "esp",
            "rax", "rbx", "rcx", "rdx", "rsi", "rdi", "rbp", "rsp", "al", "bl",
        ):
            canon = canonical_reg(norm)
            if canon not in seen:
                seen.append(canon)
    return seen


def build_remap(literal_regs: list[str]) -> dict[str, str]:
    if len(literal_regs) > len(RISCV_TEMPS):
        raise ValueError(f"too many scratch registers to remap: {literal_regs}")
    return {reg: RISCV_TEMPS[i] for i, reg in enumerate(literal_regs)}


def apply_remap(stmt: str, remap: dict[str, str]) -> str:
    def _sub(m):
        tok = m.group(0)
        norm = tok.lstrip('%')
        canon = canonical_reg(norm)
        return remap.get(canon, tok)
    return re.sub(r'%%?[a-zA-Z][a-zA-Z0-9]*|\b[xw]\d{1,2}\b', _sub, stmt)


# ---------------------------------------------------------------------------
# Per-statement translation table. Each entry: (regex matching the ORIGINAL
# statement after register-remap has already been applied, replacement
# template using \1 \2 ... backreferences). Order matters: more specific
# patterns first.
#
# %N placeholders pass through unchanged (already correctly allocated).
# mem access syntax: ARM "[reg]" / "[reg, idx]" -> RISC-V "0(reg)" and a
# 2-instruction expansion for indexed forms (no base+index addressing).
STMT_RULES: list[tuple[re.Pattern, object]] = [
    # ---- universal, unchanged across ISAs ----
    (re.compile(r'^nop$'), lambda m: "nop"),
    # ---- barriers / fences ----
    (re.compile(r'^dsb\s+\w+\s*;?\s*isb$'), lambda m: "fence"),
    (re.compile(r'^dsb\s+\w+$'), lambda m: "fence"),
    (re.compile(r'^isb$'), lambda m: "fence.i"),
    (re.compile(r'^lfence$'), lambda m: "fence"),
    (re.compile(r'^mfence$'), lambda m: "fence"),
    (re.compile(r'^sfence$'), lambda m: "fence"),
    # ---- timer read (already uses %N — direct swap) ----
    (re.compile(r'^mrs\s+(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp),\s*cntvct_el0$'), lambda m: f"rdcycle {m.group(1)}"),
    # ---- cache maintenance ----
    (re.compile(r'^dc\s+civac\s*,\s*(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp)$'), lambda m: f"cbo.inval ({m.group(1)})"),
    (re.compile(r'^clflush\s*\((%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp)\)$'), lambda m: f"cbo.flush ({m.group(1)})"),
    # ---- speculation-barrier hint (ARM CSDB): no RISC-V equivalent, drop
    # (the surrounding fence/cbo.inval already provides the closest
    # available serialization — documented approximation, not exact) ----
    (re.compile(r'^hint\s+#0x14$'), lambda m: None),  # None = emit nothing
    # ---- indirect branch / call ----
    (re.compile(r'^br\s+(t\d)$'), lambda m: f"jr {m.group(1)}"),
    (re.compile(r'^br\s+(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp)$'), lambda m: f"jr {m.group(1)}"),
    (re.compile(r'^blr\s+(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp)$'), lambda m: f"jalr {m.group(1)}"),
    (re.compile(r'^jmp\s+\*(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp)$'), lambda m: f"jr {m.group(1)}"),
    (re.compile(r'^call\s*\*(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp)$'), lambda m: f"jalr {m.group(1)}"),
    (re.compile(r'^callq\s*\*(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp)$'), lambda m: f"jalr {m.group(1)}"),
    (re.compile(r'^mov\s+(t\d),\s*(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp)$'), lambda m: f"mv {m.group(1)}, {m.group(2)}"),
    (re.compile(r'^bl\s+(\w+)$'), lambda m: f"call {m.group(1)}"),
    (re.compile(r'^call\s+1f$'), lambda m: "call 1f"),
    (re.compile(r'^ret$'), lambda m: "ret"),
    (re.compile(r'^jmp\s+\.\+4$'), lambda m: "j 1f\n\t1:"),
    (re.compile(r'^b\s+\.\+4$'), lambda m: "j 1f\n\t1:"),
    # ---- x86 frame idiom: decorative in these gadgets (real prologue/
    # epilogue is compiler-generated); approximate with an sp no-op twiddle
    # rather than touching s0/fp (avoids clobber-list complications).
    # NOTE: literal rbp/rsp are already remapped to t\d by the time these
    # rules run (remap happens before rule-matching), so match t\d here,
    # not the original register names. ----
    (re.compile(r'^push\s+(t\d)$'), lambda m: "addi sp, sp, -8"),
    (re.compile(r'^pop\s+(t\d)$'), lambda m: "addi sp, sp, 8"),
    (re.compile(r'^leave$'), lambda m: "nop"),
    # ---- zero idiom ----
    (re.compile(r'^eor\s+(t\d),\s*\1,\s*\1$'), lambda m: f"xor {m.group(1)}, {m.group(1)}, {m.group(1)}"),
    (re.compile(r'^xor\s+(t\d),\s*\1$'), lambda m: f"li {m.group(1)}, 0"),
    # ---- shift ----
    (re.compile(r'^lsl\s+(t\d),\s*\1,\s*#(\d+)$'), lambda m: f"slli {m.group(1)}, {m.group(1)}, {m.group(2)}"),
    (re.compile(r'^shl\s+\$(\d+),\s*(t\d)$'), lambda m: f"slli {m.group(2)}, {m.group(2)}, {m.group(1)}"),
    # ---- add / mov (register-register, both scratch) ----
    (re.compile(r'^add\s+(t\d),\s*(t\d),\s*(t\d)$'), lambda m: f"add {m.group(1)}, {m.group(2)}, {m.group(3)}"),
    # AT&T 2-operand accumulate form ("add src,dst" means dst += src) —
    # generic fallback for any register-register add not caught above.
    (re.compile(r'^add\s+(t\d),\s*(t\d)$'), lambda m: f"add {m.group(2)}, {m.group(2)}, {m.group(1)}"),
    (re.compile(r'^mov\s+(t\d),\s*(t\d)$'), lambda m: f"mv {m.group(2)}, {m.group(1)}"),
    # ---- plain load/store, no index ----
    (re.compile(r'^ldr\s+(t\d|%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp),\s*\[(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp)\]$'), lambda m: f"ld {m.group(1)}, 0({m.group(2)})"),
    (re.compile(r'^ldrb\s+(t\d),\s*\[(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp)\]$'), lambda m: f"lbu {m.group(1)}, 0({m.group(2)})"),
    (re.compile(r'^strb\s+(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp),\s*\[(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp)\]$'), lambda m: f"sb {m.group(1)}, 0({m.group(2)})"),
    (re.compile(r'^str\s+xzr,\s*\[(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp)\]$'), lambda m: f"sd zero, 0({m.group(1)})"),
    (re.compile(r'^movzbl\s+\((%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp)\),\s*(t\d)$'), lambda m: f"lbu {m.group(2)}, 0({m.group(1)})"),
    (re.compile(r'^movb\s+\((%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp)\),\s*(t\d)$'), lambda m: f"lbu {m.group(2)}, 0({m.group(1)})"),
    (re.compile(r'^movq\s+\((%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp)\),\s*(t\d)$'), lambda m: f"ld {m.group(2)}, 0({m.group(1)})"),
    # ---- indexed load/store (the attack instruction itself): 2-instr
    # expansion, needs one extra scratch register from the block's pool ----
    (re.compile(r'^ldrb\s+(t\d),\s*\[(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp),\s*(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp)\]$'),
     lambda m, extra: f"add {extra}, {m.group(2)}, {m.group(3)}\n\tlbu {m.group(1)}, 0({extra})"),
    (re.compile(r'^ldr\s+(t\d|%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp),\s*\[(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp),\s*(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp)\]$'),
     lambda m, extra: f"add {extra}, {m.group(2)}, {m.group(3)}\n\tld {m.group(1)}, 0({extra})"),
    (re.compile(r'^movzbl\s+\((%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp),\s*(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp)\),\s*(t\d)$'),
     lambda m, extra: f"add {extra}, {m.group(1)}, {m.group(2)}\n\tlbu {m.group(3)}, 0({extra})"),
    (re.compile(r'^movq\s+\((%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp),\s*(t\d)(?:,\s*1)?\),\s*(t\d)$'),
     lambda m, extra: f"add {extra}, {m.group(1)}, {m.group(2)}\n\tld {m.group(3)}, 0({extra})"),
    # ---- compare + branch pairs collapse to RISC-V's native
    # compare-and-branch (no flags register, so these must be combined —
    # handled at the multi-statement level in translate_block(), these
    # single-statement rules are the fallback if seen alone) ----
    (re.compile(r'^cmp\s+(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp),\s*(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp)$'), lambda m: None),  # consumed by next branch stmt
    (re.compile(r'^cmp\s+(t\d),\s*(t\d)$'), lambda m: None),
    (re.compile(r'^test\s+(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp),\s*\1$'), lambda m: None),  # consumed similarly
    (re.compile(r'^\d+:$'), lambda m: m.group(0)),  # local numeric labels pass through
]

# Compare+branch pair patterns: (cmp_regex, branch_regex) -> riscv branch mnemonic template
CMP_BRANCH_PAIRS = [
    (re.compile(r'^cmp\s+(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp),\s*(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp)$'), re.compile(r'^jge\s+(\w+)$'), "bge {1}, {2}, {3}"),
    (re.compile(r'^cmp\s+(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp),\s*(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp)$'), re.compile(r'^jae\s+(\w+)$'), "bgeu {1}, {2}, {3}"),
    (re.compile(r'^cmp\s+(t\d),\s*#(\d+)$'), re.compile(r'^b\.ge\s+(\w+)$'), None),  # handled inline below
]


def try_translate_statement(stmt: str, extra_reg: str) -> tuple[str | None, bool]:
    """Return (translated_or_None, matched). matched=False means: no rule
    recognized this statement at all (flag for review)."""
    for rule in STMT_RULES:
        pattern, repl = rule
        m = pattern.match(stmt)
        if m:
            try:
                out = repl(m, extra_reg)
            except TypeError:
                out = repl(m)
            return out, True
    return None, False


def translate_block_body(orig_lines: list[str]) -> tuple[list[str] | None, list[str]]:
    """Translate a full asm block's statement list. Returns (translated_lines
    or None-if-any-unmatched, list_of_unmatched_originals)."""
    unmatched = []
    out_lines = []
    i = 0
    extra_reg_pool = iter(RISCV_TEMPS[::-1])  # borrow from the far end for 2-instr expansions
    while i < len(orig_lines):
        stmt = orig_lines[i].strip()
        if not stmt:
            i += 1
            continue
        # try compare+branch fusion with the NEXT statement first
        fused = False
        if i + 1 < len(orig_lines):
            nxt = orig_lines[i + 1].strip()
            cmp_reg = re.match(r'^cmp\s+(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp),\s*(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp)$', stmt)
            cmp_imm = re.match(r'^cmp\s+(t\d),\s*#(\d+)$', stmt) or re.match(r'^cmp\s+\$(\d+),\s*(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp)$', stmt)
            test_self = re.match(r'^test\s+(%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp),\s*\1$', stmt)
            if cmp_reg:
                a, b = cmp_reg.group(1), cmp_reg.group(2)
                jm = re.match(r'^jge\s+(\w+)$', nxt) or re.match(r'^b\.ge\s+(\w+)$', nxt)
                jm_u = re.match(r'^jae\s+(\w+)$', nxt) or re.match(r'^b\.hs\s+(\w+)$', nxt)
                if jm:
                    out_lines.append(f"bge {a}, {b}, {jm.group(1)}")
                    i += 2; fused = True
                elif jm_u:
                    out_lines.append(f"bgeu {a}, {b}, {jm_u.group(1)}")
                    i += 2; fused = True
            elif cmp_imm:
                reg = cmp_imm.group(1)
                imm = cmp_imm.group(2)
                jm = re.match(r'^jge\s+(\w+)$', nxt) or re.match(r'^b\.ge\s+(\w+)$', nxt)
                if jm:
                    tmp = next(extra_reg_pool)
                    out_lines.append(f"li {tmp}, {imm}\n\tbge {reg}, {tmp}, {jm.group(1)}")
                    i += 2; fused = True
            elif test_self:
                reg = test_self.group(1)
                jm = re.match(r'^js\s+(\w+)$', nxt)
                if jm:
                    out_lines.append(f"bltz {reg}, {jm.group(1)}")
                    i += 2; fused = True
        if fused:
            continue
        # ARM cmp+b.hs / b.ge single-statement forms (compare embedded in one line already handled above)
        try:
            extra = next(extra_reg_pool)
        except StopIteration:
            extra = "t6"
        translated, matched = try_translate_statement(stmt, extra)
        if not matched:
            unmatched.append(stmt)
            i += 1
            continue
        if translated is not None:
            out_lines.append(translated)
        i += 1
    if unmatched:
        return None, unmatched
    return out_lines, []


ASM_CALL_RE = re.compile(
    r'__asm__\s*(?:__volatile__)?\s*\(\s*'
    r'((?:"(?:[^"\\]|\\.)*"\s*)+)'
    r'(:[^;]*?)?'
    r'\)\s*;',
    re.DOTALL,
)


def extract_string_body(quoted: str) -> str:
    parts = re.findall(r'"((?:[^"\\]|\\.)*)"', quoted)
    body = "".join(parts)
    return body.replace("\\n\\t", "\n").replace("\\n", "\n").replace("\\t", " ")


RDTSC_RE = re.compile(
    r'__asm__\s*(?:__volatile__)?\s*\(\s*"rdtsc"\s*:\s*"=a"\s*\(\s*(\w+)\s*\)\s*,\s*"=d"\s*\(\s*(\w+)\s*\)\s*\)\s*;'
)


def translate_rdtsc(text: str) -> tuple[str, int]:
    """Special whole-statement case: x86 rdtsc returns its 64-bit result
    split across two fixed registers (edx:eax, addressed via "=a"/"=d"
    constraints — no %N placeholder to hook a line-translator onto, so this
    needs its own regex rather than the per-statement table). RISC-V's
    rdcycle returns the full 64-bit value in one register; populate the same
    lo/hi C variables so the surrounding code (typically
    `return ((uint64_t)hi<<32)|lo;`) needs no changes."""
    count = 0

    def _sub(m):
        nonlocal count
        count += 1
        lo, hi = m.group(1), m.group(2)
        orig = m.group(0)
        return (
            f"\n#if defined(__riscv)\n"
            f"    {{ uint64_t __rv_cyc; __asm__ __volatile__(\"rdcycle %0\" : \"=r\"(__rv_cyc)); "
            f"{lo} = (unsigned)__rv_cyc; {hi} = (unsigned)(__rv_cyc >> 32); }}\n"
            f"#else\n"
            f"    {orig}\n"
            f"#endif\n"
        )

    new_text = RDTSC_RE.sub(_sub, text)
    return new_text, count


def process_file(path: Path, report_only: bool):
    text = path.read_text()
    text, n_rdtsc = translate_rdtsc(text)
    out = []
    last = 0
    n_blocks = n_translated = n_unmatched = 0
    unmatched_examples = []

    for m in ASM_CALL_RE.finditer(text):
        n_blocks += 1
        full_match = m.group(0)
        quoted = m.group(1)
        operands = m.group(2) or ""
        body = extract_string_body(quoted)

        # special case: rdtsc (needs whole-snippet handling, done earlier by
        # translate_rdtsc() at the whole-file-text level). Skip both the
        # original ("rdtsc", left untouched in the #else branch) and the
        # freshly-inserted RISC-V replacement ("rdcycle %N", in the #if
        # branch) so this loop doesn't re-process either.
        if body.strip() == "rdtsc" or re.match(r'^rdcycle\s+%q?\d+|t\d|a\d{1,2}|s\d{1,2}|zero|ra|sp|gp|tp|fp$', body.strip()):
            continue
        # skip pure directive-only / empty bodies (e.g. ".rept 256" alone
        # handled as passthrough — directives are GAS-universal)
        if body.strip().startswith('.') or not body.strip():
            continue

        literal_regs = find_literal_registers(body)
        try:
            remap = build_remap(literal_regs)
        except ValueError:
            n_unmatched += 1
            unmatched_examples.append((path, body, "too many scratch regs"))
            continue

        raw_lines = []
        for line in body.split("\n"):
            for stmt in line.split(";"):
                stmt = stmt.strip()
                if not stmt or stmt.startswith("//"):
                    continue
                # split a leading numeric label ("1: ret" -> "1:", "ret")
                lm = re.match(r'^(\d+:)\s*(.*)$', stmt)
                if lm:
                    raw_lines.append(lm.group(1))
                    if lm.group(2):
                        raw_lines.append(lm.group(2))
                else:
                    raw_lines.append(stmt)
        lines = [apply_remap(re.sub(r'%q(\d+)', r'%\1', line), remap) for line in raw_lines]
        translated_lines, unmatched = translate_block_body(lines)

        if translated_lines is None:
            n_unmatched += 1
            unmatched_examples.append((path, body, f"unmatched stmt(s): {unmatched}"))
            continue

        n_translated += 1
        new_body = "\n\t".join(translated_lines)
        # C string literals need the LITERAL two-char sequences \n \t (as
        # text), not real newline/tab bytes (which would be a syntax error
        # spanning source lines) — matches the original files' own style,
        # e.g. "ldr x0,[%0]\n\t\n\tdc civac,%0\n\tisb".
        new_body = new_body.replace("\n", "\\n").replace("\t", "\\t")
        # rebuild clobber section with remapped register names
        new_operands = operands
        for old, new in remap.items():
            new_operands = re.sub(rf'"{re.escape(old)}"', f'"{new}"', new_operands)

        riscv_call = f'__asm__ __volatile__("{new_body}"{new_operands});'
        replacement = f"\n#if defined(__riscv)\n    {riscv_call}\n#else\n    {full_match}\n#endif\n"

        if not report_only:
            out.append(text[last:m.start()])
            out.append(replacement)
            last = m.end()

    if not report_only and (out or n_rdtsc):
        out.append(text[last:])
        new_text = "".join(out) if out else text
        backup = path.with_suffix(path.suffix + ".pre_riscv_fix")
        if not backup.exists():
            shutil.copy(path, backup)
        path.write_text(new_text)

    return n_blocks, n_translated, n_unmatched, unmatched_examples, n_rdtsc


def main():
    ap = argparse.ArgumentParser()
    g = ap.add_mutually_exclusive_group(required=True)
    g.add_argument("--report", action="store_true", help="dry run, no files touched")
    g.add_argument("--apply", action="store_true", help="write #if defined(__riscv) branches")
    args = ap.parse_args()

    files = sorted(set(
        Path(p) for p in glob.glob(str(ROOT / "c_vulns" / "c_code" / "*.c"))
        + glob.glob(str(ROOT / "c_vulns" / "c_code" / "*" / "*.c"))
        if "__asm__" in Path(p).read_text() or "asm volatile" in Path(p).read_text()
    ))

    total_blocks = total_translated = total_unmatched = total_rdtsc = 0
    all_unmatched = []
    for f in files:
        nb, nt, nu, examples, n_rdtsc = process_file(f, report_only=args.report)
        total_blocks += nb; total_translated += nt; total_unmatched += nu
        total_rdtsc += n_rdtsc
        all_unmatched.extend(examples)

    print(f"files with inline asm: {len(files)}")
    print(f"total asm blocks found: {total_blocks} (+ {total_rdtsc} rdtsc whole-snippet cases)")
    print(f"translated: {total_translated} (+ {total_rdtsc} rdtsc)")
    print(f"unmatched (flagged, not guessed): {total_unmatched}")

    if all_unmatched:
        print(f"\n{'='*70}\nUNMATCHED BLOCKS (need manual translation or new rules):\n{'='*70}")
        for path, body, reason in all_unmatched[:60]:
            print(f"\n{path}\n  reason: {reason}\n  body: {body!r}")

    if args.report:
        print("\n(report-only — no files were modified)")
    else:
        print(f"\napplied to {total_translated} blocks across files (backups saved as *.pre_riscv_fix)")


if __name__ == "__main__":
    main()
