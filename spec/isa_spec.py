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
                    return cats[rule["cat"]]

            elif kind == "mem_load":
                if has_mem and any(self._pat[p].search(instr) for p in rule["load_pats"]):
                    if rule.get("stack_token", "") and rule["stack_token"] in low:
                        return cats[rule["stack_cat"]]
                    return cats[rule["cat"]]

            elif kind == "contains":
                if rule["token"] in low:
                    return cats[rule["cat"]]

            else:
                raise ValueError(f"unknown classify rule kind: {kind}")

        return cats[self.spec["default_category"]]

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

    # ---- helpers --------------------------------------------------------
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
