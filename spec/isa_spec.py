#!/usr/bin/env python3
"""
isa_spec.py — generic, data-driven ISA specification engine (Phase 0).

Replaces the hardcoded per-ISA classification logic in v54/pdg_builder.py
(``_classify_opcode``, ``_get_memory_access_type``, ``_extract_registers``,
``_compute_spec_flags``) with a spec-driven engine. All opcode taxonomies,
regex patterns, ordered classification rules, spec-flag rules, and pipeline
parameters live in an external JSON spec instead of Python constants.

Design contract: given the ``base`` spec exported from the current
pdg_builder (see ``_export_base.py``), this engine reproduces the original
node classification **exactly** on real data (verified by ``validate_spec.py``).
Per-ISA specs (``x86_64.json``, ``arm64.json``) extend base and set pipeline /
edge-window parameters; later phases prune patterns to true per-ISA subsets.

JSON is used here only because pyyaml is absent in this environment; YAML is
the intended authoring surface and maps 1:1 onto this schema.
"""

from __future__ import annotations

import json
import re
from pathlib import Path
from typing import Dict, List, Set, Tuple, Optional

import numpy as np


SPEC_DIR = Path(__file__).resolve().parent


def _deep_merge(base: dict, over: dict) -> dict:
    """Merge ``over`` onto ``base`` (over wins). Dicts merge recursively;
    everything else (lists, scalars) is replaced wholesale."""
    out = dict(base)
    for k, v in over.items():
        if k in out and isinstance(out[k], dict) and isinstance(v, dict):
            out[k] = _deep_merge(out[k], v)
        else:
            out[k] = v
    return out


def load_spec(path: str | Path) -> dict:
    """Load a spec JSON, resolving a single-level ``extends`` reference
    (relative to the spec's own directory)."""
    path = Path(path)
    if not path.is_absolute():
        path = SPEC_DIR / path
    with open(path) as f:
        spec = json.load(f)
    parent = spec.pop("extends", None)
    if parent:
        base = load_spec(SPEC_DIR / parent)
        spec = _deep_merge(base, spec)
    return spec


class SpecEngine:
    """Interprets an ISA spec dict to classify instructions and build node
    feature vectors, mirroring v54/pdg_builder.PDGBuilder semantics."""

    def __init__(self, spec: dict):
        self.spec = spec
        self.arch = spec.get("arch", "unknown")

        # Index maps (opcode categories, memory-access types, spec flags).
        self.opcode_categories: Dict[str, int] = spec["opcode_categories"]
        self.mem_access_types: Dict[str, int] = spec["mem_access_types"]
        self.spec_flags: Dict[str, int] = spec["spec_flags"]
        self.num_categories = len(self.opcode_categories)
        self.num_spec_flags = len(self.spec_flags)

        # Compile named patterns once.
        self._pat: Dict[str, re.Pattern] = {
            name: re.compile(src, re.IGNORECASE)
            for name, src in spec["patterns"].items()
        }

        self.classify_rules: List[dict] = spec["classify_rules"]
        self.mem_rules: List[dict] = spec["mem_access_rules"]
        self.flag_rules: List[dict] = spec["spec_flag_rules"]
        self.reg_all_source_cats: Set[str] = set(spec["register_extraction"]["all_source_categories"])
        self.reg_pattern_names: List[str] = spec["register_extraction"]["patterns"]

        # Pipeline / edge-window parameters (used by later phases).
        self.pipeline: dict = spec.get("pipeline", {})

        # Addressing-mode grammar for the Phase-1 tokenizer (operand
        # normalization). Sourced from the spec so the tokenizer carries no
        # ISA-literal regex. Compiled without IGNORECASE to match the original
        # tokenizer semantics exactly.
        self.addressing: dict = spec.get("addressing", {})
        self._addr_pat: Dict[str, re.Pattern] = {
            name: re.compile(src) for name, src in self.addressing.items()
        }

        # Canonical (ISA-neutral) operation vocabulary. Per-ISA specs map their
        # own mnemonic spellings onto shared semantic names, so `addq` (x86),
        # `adds` (arm64) and `addi` (riscv) all normalize to "ADD" — letting the
        # learned encoder's vocabulary transfer to an ISA it never trained on.
        self.canonical_op_vocab: List[str] = spec.get("canonical_op_vocab", [])
        self._canon_from_cat: Dict[str, str] = spec.get("canonical_op_from_category", {})
        self._canon_authoritative: Set[str] = set(
            spec.get("canonical_category_authoritative", []))
        self._canon_rules: List[Tuple[re.Pattern, str]] = [
            (re.compile(r["mnemonic"], re.IGNORECASE), r["op"])
            for r in spec.get("canonical_ops", [])
        ]

    # ---- opcode category ------------------------------------------------
    def classify_opcode(self, instr: str) -> int:
        cats = self.opcode_categories
        is_indirect = bool(self._pat["indirect"].search(instr))
        has_mem = bool(self._pat["memory_operand"].search(instr))
        low = instr.lower()

        for rule in self.classify_rules:
            kind = rule["kind"]

            if kind == "simple":
                if self._pat[rule["pat"]].search(instr):
                    return cats[rule["cat"]]

            elif kind == "call_split":
                if self._pat[rule["pat"]].search(instr):
                    return cats[rule["indirect"]] if is_indirect else cats[rule["direct"]]

            elif kind == "indirect_jump":
                if is_indirect and self._pat[rule["pat"]].search(instr):
                    return cats[rule["cat"]]

            elif kind == "mem_store":
                if has_mem and any(self._pat[p].search(instr) for p in rule["store_pats"]):
                    if rule.get("stack_token", "") and rule["stack_token"] in low:
                        return cats[rule["stack_cat"]]
                    # Disambiguate a mnemonic that matches BOTH load and store
                    # patterns (x86 `movq` does: it is one mnemonic for both
                    # directions). Without this the first-listed rule wins and
                    # every x86 load is recorded as a store — which also kills
                    # is_secret_source/is_transmitter, since those gate on LOAD.
                    d = self._mem_direction(instr)
                    if d == "LOAD" and self._matches_load(instr):
                        return cats["LOAD"]
                    return cats[rule["cat"]]

            elif kind == "mem_load":
                if has_mem and any(self._pat[p].search(instr) for p in rule["load_pats"]):
                    if rule.get("stack_token", "") and rule["stack_token"] in low:
                        return cats[rule["stack_cat"]]
                    d = self._mem_direction(instr)
                    if d == "STORE" and self._matches_store(instr):
                        return cats["STORE"]
                    return cats[rule["cat"]]

            elif kind == "contains":
                if rule["token"] in low:
                    return cats[rule["cat"]]

            else:
                raise ValueError(f"unknown classify rule kind: {kind}")

        return cats[self.spec["default_category"]]

    # ---- load/store direction (only used when a mnemonic is ambiguous) ---
    def _matches_load(self, instr: str) -> bool:
        return bool(self._pat["load"].search(instr))

    def _matches_store(self, instr: str) -> bool:
        return bool(self._pat["store"].search(instr))

    def _mem_direction(self, instr: str) -> Optional[str]:
        """LOAD / STORE / None, from which operand holds the memory reference.

        Only meaningful for ISAs whose mnemonics don't encode direction (x86's
        `mov` family). `operand_order` comes from the spec — "src_first" for
        AT&T syntax (`movq src, dst`), "dst_first" for Intel/ARM-style — so this
        method carries no ISA literal. ISAs that omit the key (ARM, RISC-V,
        whose `ldr`/`str` and `ld`/`sd` are unambiguous) return None and keep
        their existing behavior exactly.
        """
        order = self.spec.get("operand_order")
        if not order:
            return None
        parts = instr.strip().split(None, 1)
        if len(parts) < 2:
            return None
        ops = self._split_operands(parts[1])
        if len(ops) < 2:
            return None
        mem = self._addr_pat.get("mem")
        if mem is None:
            return None
        first, last = bool(mem.search(ops[0])), bool(mem.search(ops[-1]))
        if first == last:
            return None                      # both or neither — no evidence
        src_first = order == "src_first"
        mem_is_source = first if src_first else last
        return "LOAD" if mem_is_source else "STORE"

    @staticmethod
    def _split_operands(rest: str) -> List[str]:
        """Split on top-level commas, ignoring those inside () or []."""
        out, buf, depth = [], [], 0
        for ch in rest:
            if ch in "([":
                depth += 1
            elif ch in ")]":
                depth = max(0, depth - 1)
            if ch == "," and depth == 0:
                out.append("".join(buf).strip())
                buf = []
            else:
                buf.append(ch)
        if buf:
            out.append("".join(buf).strip())
        return [o for o in out if o]

    # ---- memory access type ---------------------------------------------
    def memory_access_type(self, instr: str) -> int:
        m = self.mem_access_types
        if not self._pat["memory_operand"].search(instr):
            return m["NONE"]
        for rule in self.mem_rules:
            if self._pat[rule["pat"]].search(instr):
                return m[rule["type"]]
        return m[self.spec["default_mem_type"]]

    # ---- register def/use extraction ------------------------------------
    def extract_registers(self, instr: str, category: int) -> Tuple[Set[str], Set[str]]:
        dest: Set[str] = set()
        src: Set[str] = set()
        regs: List[str] = []
        for pname in self.reg_pattern_names:
            regs.extend(r.lower() for r in self._pat[pname].findall(instr))
        if not regs:
            return dest, src
        all_source = category in {self.opcode_categories[c] for c in self.reg_all_source_cats}
        if all_source:
            src = set(regs)
        else:
            dest.add(regs[0])
            if len(regs) > 1:
                src = set(regs[1:])
        return dest, src

    # ---- speculative flags ----------------------------------------------
    def spec_flags_vector(self, instr: str, category: int, mem_type: int) -> np.ndarray:
        flags = np.zeros(self.num_spec_flags, dtype=np.float32)
        low = instr.lower().strip()
        toks = low.split()
        opcode = toks[0] if toks else ""
        cat_name = self._cat_name(category)
        mem_name = self._mem_name(mem_type)

        for rule in self.flag_rules:
            fire = False
            if "when_cat_in" in rule:
                fire = cat_name in rule["when_cat_in"]
                if fire and "when_mem_in" in rule:
                    fire = mem_name in rule["when_mem_in"]
                if not fire and rule.get("or_contains") and rule["or_contains"] in low:
                    fire = True
            elif "opcode_in" in rule:
                fire = opcode in rule["opcode_in"]
            elif "opcode_regex" in rule:
                fire = bool(re.match(rule["opcode_regex"], opcode, re.IGNORECASE))
            if fire:
                flags[self.spec_flags[rule["set"]]] = 1.0
        return flags

    # ---- canonical operation name ---------------------------------------
    def canonical_op(self, instr: str) -> str:
        """ISA-neutral semantic name for this instruction's operation.

        Resolution order, and why:
          1. If the opcode category is one the *operands* determine rather than
             the mnemonic (LOAD/STORE/STACK/RET/CALL/CALL_INDIRECT/
             JUMP_INDIRECT — see ``canonical_category_authoritative``), trust
             the category. x86 ``movq (%rsi),%rax`` is a LOAD despite being
             spelled as a move; RISC-V ``jr ra`` is a RET while ``jr t0`` is an
             indirect jump — only operand context separates those.
          2. Otherwise try the per-ISA mnemonic rules, which are strictly more
             informative than a coarse category (they split ARITHMETIC into
             ADD/SUB/MUL/DIV, and they recognize size-suffixed spellings like
             ``addq`` that the category patterns miss).
          3. Otherwise fall back to mapping the category through
             ``canonical_op_from_category``.
        """
        cat_name = self._cat_name(self.classify_opcode(instr))
        if cat_name in self._canon_authoritative:
            return self._canon_from_cat.get(cat_name, "OTHER")
        toks = instr.strip().split()
        mnem = toks[0].rstrip(":").lower() if toks else ""
        for pat, op in self._canon_rules:
            if pat.fullmatch(mnem):
                return op
        return self._canon_from_cat.get(cat_name, "OTHER")

    # ---- helpers --------------------------------------------------------
    def mnemonic_valid(self, opcode: str) -> bool:
        """Is `opcode` a real mnemonic for this ISA? True when the per-ISA rules
        name its operation (canonical_op != OTHER) OR it is an operand-determined
        load/store (str/ldr/... resolve to OTHER on the bare mnemonic because
        LOAD vs STORE needs operands, but they ARE valid mnemonics). Used by the
        arch-purity mask, which sees only opcodes; canonical_op alone would wrongly
        drop arm str/ldr and (correctly) push/pop, this keeps the loads/stores.
        """
        op = opcode.split()[0] if opcode else ""
        if not op:
            return False
        if self.canonical_op(op) != "OTHER":
            return True
        return self._matches_load(op) or self._matches_store(op)

    def _cat_name(self, idx: int) -> str:
        for name, i in self.opcode_categories.items():
            if i == idx:
                return name
        return "OTHER"

    def _mem_name(self, idx: int) -> str:
        for name, i in self.mem_access_types.items():
            if i == idx:
                return name
        return "NONE"


def load_engine(path: str | Path) -> SpecEngine:
    return SpecEngine(load_spec(path))
