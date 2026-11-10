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
        if mode not in ("mnemonic", "canonical", "neutral"):
            raise ValueError(f"unknown tokenizer mode: {mode}")
        # 'neutral' = canonical op, with the spec's ISA-only ops merged into
        # their shared form (arm ldp/stp pairs, x86 push/pop, test vs cmp, ...)
        # and operands reduced to the SET of operand kinds: operand count and
        # order are ISA conventions (x86 two-address vs arm/riscv three-address),
        # indexed addressing is an x86/arm addressing mode riscv lacks (the
        # index dependency is still in the graph's DATA_DEP edges), and
        # control-flow targets/registers (riscv compare-in-branch, `jr ra`)
        # are dropped entirely. Both tables live in base.json.
        self._merge = engine.spec.get("neutral_op_merge", {})
        self._operandless = set(engine.spec.get("neutral_operandless_ops", []))
        self._implicit_mem = set(engine.spec.get("neutral_implicit_mem_ops", []))
        # memory-op immediates are offsets / arm post-index write-back — addressing
        # details, not operands (`ldp x29,x30,[sp],#16` vs riscv `ld ra,8(sp)`)
        self._drop_imm = set(engine.spec.get("neutral_drop_imm_ops", []))
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

    def _neutral_kind(self, operand: str) -> str:
        """Operand kind for neutral mode: any memory reference is <mem>
        (riscv `%lo(sym)(a5)` included — relocation syntax is not a symbol
        operand), and <fn>/<sym> collapse (whether a symbol survived name
        neutralisation is a toolchain detail)."""
        if self._mem.search(operand) or self._mem_idx.search(operand):
            return "<mem>"
        k = self._classify_operand(operand)
        return "<sym>" if k == "<fn>" else k

    def normalize(self, instr: str) -> Optional[str]:
        instr = instr.strip()
        if not instr or instr.endswith(':') or instr.startswith('.'):
            return None
        parts = instr.split(None, 1)
        if self.mode == "neutral":
            raw_op = self.engine.canonical_op(instr)
            op = self._merge.get(raw_op, raw_op)
            if op in self._operandless or len(parts) == 1:
                return op
            kinds = {self._neutral_kind(o) for o in _operands(parts[1])}
            if (raw_op in self._implicit_mem       # x86 push/pop touch memory
                    or self.engine._pat["stack_push"].search(instr)
                    or self.engine._pat["stack_pop"].search(instr)):
                kinds.add("<mem>")                  # like arm stp / riscv sd to sp
            if op in self._drop_imm:
                kinds.discard("<imm>")
            return " ".join([op] + sorted(kinds))
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


    # ---- register-identity ("slot") stream (step 1, 2026-11-11) -----------
    # normalize() erases register identity (`movzbl (%rax),%ebx` ->
    # `movzbl <mem> <reg>`), so a model over that vocabulary cannot express
    # dataflow (load into rX, then use rX as an address) -- every realised
    # instruction draws a fresh register. The slot stream keeps the template
    # token unchanged and follows it with one slot token per register position,
    # in the order the realiser fills them (gen/realize.py _operand: <reg> 1,
    # <mem> base, <mem-idx> base+index). A slot is the first-appearance index of
    # the register's width-canonical family within the sequence (<S0>..<S{k-1}>,
    # <SX> beyond k); stack/frame/pc registers keep fixed tokens. Additive:
    # normalize()/tokenize_sequence() are unchanged. x86_64 only for now; other
    # ISAs return the plain stream.
    SLOT_SPECIAL_X86 = {"rsp": "<SSP>", "rbp": "<SFP>", "rip": "<SIP>"}
    _SLOT_POSITIONS = {"<reg>": 1, "<mem>": 1, "<mem-idx>": 2}

    def tokenize_sequence_slots(self, sequence: List[str], k: int = 6,
                                arch: str = "x86_64", values: bool = True,
                                k_disp: int = 8) -> List[str]:
        if arch != "x86_64" or self.mode == "neutral":
            return self.tokenize_sequence(sequence)
        import re
        from ir_defuse import _X86_REG_RE, _canon_x86
        slot: dict = {}
        out: List[str] = []

        def tok_for(fam):
            if fam is None:
                return "<SX>"
            if fam in self.SLOT_SPECIAL_X86:
                return self.SLOT_SPECIAL_X86[fam]
            if fam not in slot:
                slot[fam] = len(slot)
            return f"<S{slot[fam]}>" if slot[fam] < k else "<SX>"

        disp_id: dict = {}

        def disp_tok(opnd):
            # memory-cell identity: which displacement (number or symbol) the
            # operand uses, by first appearance in the sequence. Collapsing all
            # displacements to 0 merged distinct struct fields / spill slots and
            # flipped 10/22 real benign leak verdicts (oracle-measured).
            head = opnd.split("(", 1)[0].strip()
            if head in ("", "0", "0x0", "-0"):
                return "<DZ>"
            if head not in disp_id:
                disp_id[head] = len(disp_id)
            return f"<D{disp_id[head]}>" if disp_id[head] < k_disp else "<DX>"

        for instr in sequence:
            n = self.normalize(instr)
            if n is None:
                continue
            out.append(n)
            parts = instr.strip().split(None, 1)
            kinds = n.split()[1:]
            ops = _operands(parts[1]) if len(parts) > 1 else []
            for kind, opnd in zip(kinds, ops):
                if kind == "<imm>" and values:
                    out.append(self.imm_token(opnd))
                    continue
                npos = self._SLOT_POSITIONS.get(kind, 0)
                if not npos:
                    continue
                fams = [m.group(0).lstrip("%").lower() if m.group(0).lower() == "%rip"
                        else _canon_x86(m.group(1))
                        for m in re.finditer(r"%rip\b|" + _X86_REG_RE.pattern, opnd, re.I)]
                fams = (fams + [None] * npos)[:npos]
                out.extend(tok_for(f) for f in fams)
                if values and kind in ("<mem>", "<mem-idx>"):
                    out.append(disp_tok(opnd))
        return out

    # immediates whose exact value carries attack semantics (shift amounts,
    # masks, cache-line / page strides, small offsets) keep their value;
    # randomising immediates flipped 9/18 synthetic attack leak verdicts.
    @staticmethod
    def imm_value_exact(v: int) -> bool:
        return (-64 <= v <= 64 or (v > 0 and v & (v - 1) == 0 and v <= 1 << 16)
                or v in (0xff, 0xfff, 0x1fff, 0xffff, 0x3f, 0x7f, 0xfffff))

    def imm_token(self, opnd: str) -> str:
        t = opnd.strip().lstrip("$")
        try:
            v = int(t, 16) if t.lower().lstrip("-").startswith("0x") else int(t)
        except ValueError:
            return "<I_other>"
        return f"<I:{v}>" if self.imm_value_exact(v) else "<I_other>"


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
        if mode in ("canonical", "neutral"):
            self._by_arch = {a: AsmTokenizer(load_engine(f), mode=mode)
                             for a, f in SPEC_FOR_ARCH.items()}
        else:
            base = AsmTokenizer(load_engine("base.json"), mode="mnemonic")
            self._by_arch = {a: base for a in SPEC_FOR_ARCH}

    def for_arch(self, arch: str) -> AsmTokenizer:
        return self._by_arch.get(arch, self._by_arch["unknown"])

    def tokenize_record(self, record: dict) -> List[str]:
        return self.for_arch(record.get("arch", "unknown")).tokenize_sequence(
            record["sequence"])
