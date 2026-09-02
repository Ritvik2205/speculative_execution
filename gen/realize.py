#!/usr/bin/env python3
"""
realize.py — turn normalized instruction tokens into concrete assembly (Phase 2).

The generator emits normalized instructions ("movq <mem-idx> <reg>"); this
maps the operand placeholders (<reg>/<imm>/<mem>/<mem-idx>/<fn>/<sym>) back to
concrete ISA syntax using the spec's ``realize`` block (register pool, memory
templates, immediate prefix). Best-effort: it yields syntactically plausible,
PDG-parseable assembly for the downstream oracle; it does not guarantee
semantic well-formedness (that is Phase 4's job to filter via simulation).
"""

from __future__ import annotations

import random
from typing import List

CRITICAL_IMMS = ["0", "1", "64", "256", "4096", "0xff", "8", "16", "32"]


class Realizer:
    def __init__(self, spec: dict, seed: int = 0):
        r = spec["realize"]
        self.pool = r["register_pool"]
        self.mem = r["mem"]
        self.mem_idx = r["mem_idx"]
        self.imm_prefix = r["imm_prefix"]
        self.sym = r["sym"]
        self.fn_sym = r["fn_sym"]
        # Optional, x86-only: map a 64-bit register to its b/w/l/q width variants
        # so a size-suffixed mnemonic (movl, addq) gets a width-matched register
        # instead of always a 64-bit one — the single largest cause of llvm-mc
        # rejections in the "other" bucket (70.4%). ISAs with no such table
        # (arm64, riscv64) leave every register untouched.
        self.reg_widths = r.get("register_widths", {})
        self.suffix_idx = r.get("suffix_width_index", {})
        self.width_stems = set(r.get("width_suffix_stems", []))
        self.mixed_prefixes = tuple(r.get("mixed_width_prefixes", []))
        # x86 AT&T: an indirect call/jmp through a register or memory needs a '*'
        # prefix (call *%rax). Normalization dropped it, so `call <reg>` realized to
        # the invalid `call %rax` and read as a DIRECT call -- which is why x86
        # SPECTRE_V2 (needs an indirect branch) could never be generated. arm has
        # no such marker (blr/br are distinct mnemonics), so this list is x86-only.
        self.indirect_star_ops = set(r.get("indirect_star_ops", []))
        self.rng = random.Random(seed)

    def _suffix_widths(self, opcode):
        """-> (src_idx, dst_idx) width indices for a size-suffixed x86 opcode, or
        None when the opcode carries no size suffix. dst_idx applies to the last
        register operand, src_idx to the others (they differ only for movz/movs)."""
        if not self.reg_widths or len(opcode) < 2:
            return None
        last = opcode[-1]
        if last not in self.suffix_idx:
            return None
        if opcode.startswith(self.mixed_prefixes) and len(opcode) >= 3 \
                and opcode[-2] in self.suffix_idx:
            return self.suffix_idx[opcode[-2]], self.suffix_idx[last]
        if opcode[:-1] in self.width_stems:
            i = self.suffix_idx[last]
            return i, i
        return None

    def _to_width(self, reg, idx):
        v = self.reg_widths.get(reg)
        return v[idx] if v else reg

    def _reg(self, used):
        choices = [x for x in self.pool if x not in used] or self.pool
        r = self.rng.choice(choices)
        used.add(r)
        return r

    def _operand(self, kind, used):
        if kind == "<reg>":
            return self._reg(used)
        if kind == "<imm>":
            return self.imm_prefix + self.rng.choice(CRITICAL_IMMS)
        if kind == "<mem>":
            return self.mem.replace("BASE", self._reg(used).lstrip("%"))
        if kind == "<mem-idx>":
            b = self._reg(used); i = self._reg(used)
            return self.mem_idx.replace("BASE", b.lstrip("%")).replace("IDX", i.lstrip("%"))
        if kind == "<fn>":
            return self.fn_sym
        if kind == "<sym>":
            return self.sym
        return kind

    def realize_instruction(self, norm: str) -> str:
        parts = norm.split()
        if not parts:
            return ""
        opcode, operands = parts[0], parts[1:]
        used: set = set()
        concrete = [self._operand(o, used) for o in operands]
        widths = self._suffix_widths(opcode)
        if widths and concrete:
            src_i, dst_i = widths
            last = len(operands) - 1
            for j, (kind, val) in enumerate(zip(operands, concrete)):
                if kind == "<reg>":              # registers inside <mem>/<mem-idx>
                    concrete[j] = self._to_width( # stay 64-bit (addressing)
                        val, dst_i if j == last else src_i)
        if opcode in self.indirect_star_ops and operands:
            starred = []
            for kind, val in zip(operands, concrete):
                if kind in ("<reg>", "<mem>", "<mem-idx>") and not val.startswith("*"):
                    starred.append("*" + val)
                else:
                    starred.append(val)
            concrete = starred
        return f"{opcode}\t{', '.join(concrete)}" if concrete else opcode

    def realize_sequence(self, norm_seq: List[str]) -> List[str]:
        return [self.realize_instruction(n) for n in norm_seq if n.strip()]
