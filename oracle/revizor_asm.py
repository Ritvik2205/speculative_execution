#!/usr/bin/env python3
"""revizor_asm.py — make a Revizor `program.asm` assemblable, keeping its
control flow intact.

Why not use the AT&T `sequence` field of the corpus records instead: that field
comes from an assemble/disassemble round trip, so its branches survive only as
objdump annotations (`jnp 0x7e <.bb_0.1>`). No assembler accepts that, and the
numeric offset refers to the original encoding, so it cannot be reconstructed
reliably after instructions are inserted. Anything that needs to *execute* a
real violation (the speculative emulator) therefore has to start from
`program.asm`, which still has real labels.

Three edits, and nothing else:
  1. drop `.intel_syntax`/`.section` (the caller passes the syntax to llvm-mc
     and supplies its own section);
  2. rename dotted labels to `.L`-prefixed underscore labels, because
     `.macro.measurement_start:` begins with the GAS directive `.macro` and is
     parsed as one;
  3. rewrite branch and jump targets to the renamed labels.

Instruction text, operand order and instruction count are untouched, so the
assembled bytes are the program Revizor ran.
"""
from __future__ import annotations

import re
from pathlib import Path

_LABEL_RE = re.compile(r"^(\.[\w.]+):(.*)$")
_TARGET_RE = re.compile(r"\b(j[a-z]+)\s+(\.[\w.]+)")


def _rename(label: str) -> str:
    return ".L" + label.replace(".", "_").lstrip("_")


def clean_lines(text: str) -> list[str]:
    """Revizor program text -> assemblable Intel-syntax lines."""
    out: list[str] = []
    for raw in text.splitlines():
        code = raw.split("#", 1)[0].rstrip()
        if not code.strip():
            continue
        if code.startswith(".intel_syntax") or code.startswith(".section"):
            continue
        m = _LABEL_RE.match(code.strip())
        if m:
            out.append(f"{_rename(m.group(1))}:")
            rest = m.group(2).strip()
            if rest:
                out.append("  " + rest)
            continue
        out.append("  " + code.strip())
    joined = "\n".join(out)
    joined = _TARGET_RE.sub(lambda m: f"{m.group(1)} {_rename(m.group(2))}", joined)
    return joined.splitlines()


def load_program(path) -> list[str]:
    return clean_lines(Path(path).read_text())


def variant_program(results_dir, vuln_class: str, violation_dir: str,
                    variant: str) -> Path:
    """Where `hw_label_variants.py plan` wrote one variant's program."""
    return (Path(results_dir) / vuln_class.lower() / violation_dir / variant
            / "program.asm")
