#!/usr/bin/env python3
"""
patch_riscv_corpus_asm.py — regenerate riscv_corpus/*.s by translating the
ARM64/x86 instruction text sitting in #APP...#NO_APP blocks (compiler-opaque
inline-asm passthrough) to real RISC-V, then re-assembling to validate.

Pivoted from patching .c sources + recompiling (SPECDISCOVER_VERIFICATION_GAPS.md
G6 plan): the .c files need a full hosted libc (stdio/setjmp/signal/sys-mman/
x86intrin) that the bare-metal riscv64-elf-gcc toolchain doesn't provide, and
no stub headers survived from however the corpus was originally generated.
Patching the already-compiled .s files' #APP blocks directly sidesteps this
entirely — assembling a .s file needs no C headers at all (already proven:
that's how the 488/498 failure count was measured). Reuses the exact same
per-statement translation table and block-level register-remap logic from
scripts/translate_riscv_inline_asm.py (imported, not duplicated).

Known limitation, not fixable this way: GCC's rdtsc-based timing helper
(`__asm__ __volatile__("rdtsc":"=a"(lo),"=d"(hi))`) uses x86-only register
CONSTRAINT LETTERS ("a"/"d") that are meaningless for the RISC-V backend —
by the time this reaches the compiled .s file, GCC has already silently
compiled it away into a constant (e.g. `li a5,0`), with no #APP block or
original text left to translate. This is invisible to SpecDiscover's
classifier, however: it's a purely STATIC analyzer (never executes the
code), so a semantically-broken timing measurement doesn't affect
classification at all — what matters is the actual leak-mechanism
instructions (loads/shifts/cache-ops), which DO survive as translatable
#APP text and are what this script fixes.

Run (dry-run, no files touched):
  python3 scripts/patch_riscv_corpus_asm.py --report

Run (apply, writes files, keeps *.pre_corpus_fix backups):
  python3 scripts/patch_riscv_corpus_asm.py --apply
"""

from __future__ import annotations

import argparse
import glob
import re
import shutil
import subprocess
from pathlib import Path

import sys
ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "scripts"))
import translate_riscv_inline_asm as tr  # noqa: E402

CORPUS = ROOT / "riscv_corpus"
GCC_LINE_MARKER_RE = re.compile(r'^#\s*\d+\s+"[^"]*"(\s+\d+)*\s*$')
APP_BLOCK_RE = re.compile(r'^ #APP\n(.*?)\n #NO_APP\s*$', re.MULTILINE | re.DOTALL)


def clean_app_block(block_text: str) -> list[str]:
    """Strip GCC's `# N "file" M` line-marker comments, return real
    instruction-line candidates only."""
    lines = []
    for line in block_text.split("\n"):
        line = line.strip()
        if not line:
            continue
        if GCC_LINE_MARKER_RE.match(line):
            continue
        lines.append(line)
    return lines


def patch_file(path: Path, report_only: bool):
    text = path.read_text(errors="ignore")
    n_blocks = n_translated = n_unmatched = 0
    unmatched_examples = []
    out = []
    last = 0

    for m in APP_BLOCK_RE.finditer(text):
        n_blocks += 1
        block_text = m.group(1)
        raw_lines = clean_app_block(block_text)
        # re-split each line on ';' and leading numeric labels, same as the
        # .c-level translator, for full statement-level granularity.
        stmts = []
        for line in raw_lines:
            for stmt in line.split(";"):
                stmt = stmt.strip()
                if not stmt or stmt.startswith("//"):
                    continue
                lm = re.match(r'^(\d+:)\s*(.*)$', stmt)
                if lm:
                    stmts.append(lm.group(1))
                    if lm.group(2):
                        stmts.append(lm.group(2))
                else:
                    stmts.append(stmt)

        if not stmts:
            continue

        joined = "\n".join(stmts)
        literal_regs = tr.find_literal_registers(joined)
        try:
            remap = tr.build_remap(literal_regs)
        except ValueError:
            n_unmatched += 1
            unmatched_examples.append((path, joined, "too many scratch regs"))
            continue

        remapped_stmts = [tr.apply_remap(re.sub(r'%q(\d+)', r'%\1', s), remap) for s in stmts]
        translated_lines, unmatched = tr.translate_block_body(remapped_stmts)

        if translated_lines is None:
            n_unmatched += 1
            unmatched_examples.append((path, joined, f"unmatched stmt(s): {unmatched}"))
            continue

        n_translated += 1
        new_block = "\n".join(translated_lines)
        replacement = f" #APP\n{new_block}\n #NO_APP"

        if not report_only:
            out.append(text[last:m.start()])
            out.append(replacement)
            last = m.end()

    if not report_only and n_translated:
        out.append(text[last:])
        new_text = "".join(out)
        # cbo.inval/cbo.flush (Zicbom cache-block-management) need the
        # extension declared in the file's own .attribute arch string, or
        # the assembler rejects them even with a matching -march flag on
        # the command line (the in-file directive takes precedence).
        if "cbo." in new_text and "zicbom" not in new_text:
            new_text = re.sub(
                r'(\.attribute arch, "[^"]*)"',
                r'\1_zicbom1p0"',
                new_text,
            )
        backup = path.with_suffix(path.suffix + ".pre_corpus_fix")
        if not backup.exists():
            shutil.copy(path, backup)
        path.write_text(new_text)

    return n_blocks, n_translated, n_unmatched, unmatched_examples


def try_assemble(path: Path) -> tuple[bool, str]:
    proc = subprocess.run(
        ["riscv64-elf-gcc", "-c", str(path), "-o", "/dev/null"],
        capture_output=True, text=True, timeout=30,
    )
    return proc.returncode == 0, proc.stderr


def main():
    ap = argparse.ArgumentParser()
    g = ap.add_mutually_exclusive_group(required=True)
    g.add_argument("--report", action="store_true")
    g.add_argument("--apply", action="store_true")
    args = ap.parse_args()

    files = sorted(CORPUS.glob("*.s"))
    total_blocks = total_translated = total_unmatched = 0
    all_unmatched = []
    for f in files:
        nb, nt, nu, examples = patch_file(f, report_only=args.report)
        total_blocks += nb; total_translated += nt; total_unmatched += nu
        all_unmatched.extend(examples)

    print(f"riscv_corpus files: {len(files)}")
    print(f"total #APP blocks found: {total_blocks}")
    print(f"translated: {total_translated}")
    print(f"unmatched (flagged, not guessed): {total_unmatched}")

    if all_unmatched:
        print(f"\n{'='*70}\nUNMATCHED BLOCKS:\n{'='*70}")
        for path, body, reason in all_unmatched[:40]:
            print(f"\n{path.name}\n  reason: {reason}\n  body: {body!r}")

    if args.report:
        print("\n(report-only — no files were modified)")
        return

    print(f"\napplied to {total_translated} blocks (backups saved as *.pre_corpus_fix)")

    print(f"\n{'='*70}\nVALIDATING: actually invoking the assembler on every file\n{'='*70}")
    ok = fail = 0
    fail_details = []
    for f in files:
        success, stderr = try_assemble(f)
        if success:
            ok += 1
        else:
            fail += 1
            fail_details.append((f.name, stderr.strip().splitlines()[:3]))

    print(f"assembles clean: {ok}/{len(files)}  fails: {fail}/{len(files)}")
    if fail_details:
        print(f"\nstill failing (up to 20 shown):")
        for name, errs in fail_details[:20]:
            print(f"  {name}")
            for e in errs:
                print(f"    {e}")


if __name__ == "__main__":
    main()
