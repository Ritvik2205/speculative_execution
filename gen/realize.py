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
        self.rng = random.Random(seed)

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
            return "<fn>"
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
        return f"{opcode}\t{', '.join(concrete)}" if concrete else opcode

    def realize_sequence(self, norm_seq: List[str]) -> List[str]:
        return [self.realize_instruction(n) for n in norm_seq if n.strip()]
