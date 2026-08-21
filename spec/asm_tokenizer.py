#!/usr/bin/env python3
"""
asm_tokenizer.py — spec-driven instruction normalization (Phase 1).

Turns a raw assembly instruction into a normalized, low-vocabulary token
(instruction2vec / asm2vec style) using the ISA spec's register patterns so
operand kinds are recognized without per-ISA hardcoding here:

  movq  (%rsi,%rcx), %rax   ->  "movq <mem-idx> <reg>"
  add   $1, %eax            ->  "add <imm> <reg>"
  callq <fn>                ->  "callq <fn>"
  b.eq  .L2                 ->  "b.eq <sym>"

Normalization collapses register names, immediates, and memory operands so the
learned encoder sees structure, not spellings — the same vocabulary-reduction
trick FastSpec used (<reg>/<imm>/<label>).

All operand-recognition regexes (registers AND the addressing grammar for
immediates / memory / indexed-memory / function placeholders) come from the ISA
spec, so this file contains NO ISA-literal regex — a new ISA needs only a spec.
"""

from __future__ import annotations

from typing import List, Optional

from isa_spec import SpecEngine


def _operands(rest: str) -> List[str]:
    """Split an operand string on top-level commas (ignore commas inside
    () or [] memory operands)."""
    out, buf, depth = [], [], 0
    for ch in rest:
        if ch in '([':
            depth += 1
        elif ch in ')]':
            depth = max(0, depth - 1)
        if ch == ',' and depth == 0:
            out.append(''.join(buf).strip())
            buf = []
        else:
            buf.append(ch)
    if buf:
        out.append(''.join(buf).strip())
    return [o for o in out if o]


class AsmTokenizer:
    def __init__(self, engine: SpecEngine, mode: str = "mnemonic"):
        """mode='mnemonic' keeps the literal opcode (original behavior, so the
        existing mlm_large.pt checkpoint stays reproducible); mode='canonical'
        replaces it with the spec's ISA-neutral operation name, so a vocabulary
        learned on one ISA transfers to another (see SPECDISCOVER_CANONICAL_OPS_PLAN.md)."""
        if mode not in ("mnemonic", "canonical"):
            raise ValueError(f"unknown tokenizer mode: {mode}")
        self.mode = mode
        self.engine = engine
        # Register patterns come from the spec (arm_reg / x86_reg by default).
        self._reg_pats = [engine._pat[p] for p in engine.reg_pattern_names]
        # Addressing grammar also from the spec (no hardcoded regex here).
        a = engine._addr_pat
        self._imm = a["imm"]
        self._fn = a["fn"]
        self._mem = a["mem"]
        self._mem_idx = a["mem_idx"]

    def _is_reg(self, operand: str) -> bool:
        return any(p.search(operand) for p in self._reg_pats)

    def _classify_operand(self, operand: str) -> str:
        if self._fn.search(operand):
            return "<fn>"
        if self._mem_idx.search(operand):
            return "<mem-idx>"
        if self._mem.search(operand):
            return "<mem>"
        if self._imm.search(operand):
            return "<imm>"
        if self._is_reg(operand):
            return "<reg>"
        return "<sym>"

    def normalize(self, instr: str) -> Optional[str]:
        instr = instr.strip()
        if not instr or instr.endswith(':') or instr.startswith('.'):
            return None
        parts = instr.split(None, 1)
        opcode = (self.engine.canonical_op(instr) if self.mode == "canonical"
                  else parts[0].rstrip(':').lower())
        toks = [opcode]
        if len(parts) > 1:
            for operand in _operands(parts[1]):
                toks.append(self._classify_operand(operand))
        return " ".join(toks)

    def tokenize_sequence(self, sequence: List[str]) -> List[str]:
        out = []
        for instr in sequence:
            n = self.normalize(instr)
            if n is not None:
                out.append(n)
        return out


# Which spec each arch string resolves to. Mirrors the mapping already used by
# v54/train_gine_v38.py's spec-builder path, kept in one place so tokenizer and
# graph builder can't drift apart.
SPEC_FOR_ARCH = {
    "x86_64": "x86_64.json",
    "arm64": "arm64.json",
    "arm32": "arm64.json",
    "riscv64": "riscv.json",
    "unknown": "base.json",
}


class MultiArchTokenizer:
    """Dispatches to the right per-ISA tokenizer for each record.

    Canonical mode *requires* this: the mnemonic->canonical-op rules live in
    each ISA's own spec, so tokenizing a RISC-V record with the x86 engine
    would silently produce OTHER for everything. Mnemonic mode keeps using a
    single base engine, preserving the exact behavior the existing
    spec/mlm_large.pt checkpoint was trained under.
    """

    def __init__(self, mode: str = "canonical"):
        from isa_spec import load_engine
        self.mode = mode
        if mode == "canonical":
            self._by_arch = {a: AsmTokenizer(load_engine(f), mode="canonical")
                             for a, f in SPEC_FOR_ARCH.items()}
        else:
            base = AsmTokenizer(load_engine("base.json"), mode="mnemonic")
            self._by_arch = {a: base for a in SPEC_FOR_ARCH}

    def for_arch(self, arch: str) -> AsmTokenizer:
        return self._by_arch.get(arch, self._by_arch["unknown"])

    def tokenize_record(self, record: dict) -> List[str]:
        return self.for_arch(record.get("arch", "unknown")).tokenize_sequence(
            record["sequence"])
