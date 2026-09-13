#!/usr/bin/env python3
"""
spec_features.py — generic, ISA-agnostic structural feature tier (B1/B4).

The hand-58 inline features (v54/inline_features.py) are full of ISA literals:
`frac_movq`, `frac_clflush`, `_X86_ONLY`/`_ARM_ONLY` opcode lists, AT&T/ARM
regexes. Porting them to a new ISA means editing code. This module computes an
interpretable structural feature vector purely from the SpecEngine, so the
*extraction code carries no opcode, register, or architecture literal* — a new
ISA needs only a spec file. This is the "keep some handcrafted features, but
generic (not language/arch specific)" tier that complements the learned MLM
tier.

Feature groups (all derived from the spec, per record, normalized by length):
  1. opcode-category histogram        (len = #categories, e.g. 19)
  2. speculation-flag aggregate        (len = #spec flags, e.g. 14)
  3. memory-access-type histogram      (len = #mem types, e.g. 5)
  4. universal structural counters     (4): log length, unique-opcode fraction,
       max identical-opcode run fraction, mean operand count
None of these name a mnemonic; the semantics live in the spec's taxonomy.
"""

from __future__ import annotations

from typing import List
import math

import numpy as np

from isa_spec import SpecEngine


def _is_instr(line: str) -> bool:
    s = line.strip()
    return bool(s) and not s.endswith(":") and not s.startswith(".")


def feature_names(engine: SpecEngine) -> List[str]:
    cats = sorted(engine.opcode_categories, key=engine.opcode_categories.get)
    flags = sorted(engine.spec_flags, key=engine.spec_flags.get)
    mems = sorted(engine.mem_access_types, key=engine.mem_access_types.get)
    names = [f"catfrac_{c}" for c in cats]
    names += [f"flagfrac_{f}" for f in flags]
    names += [f"memfrac_{m}" for m in mems]
    names += ["log_len", "unique_opcode_frac", "max_opcode_run_frac", "mean_operands"]
    return names


def compute_spec_features(sequence: List[str], engine: SpecEngine,
                           use_taint: bool = False) -> np.ndarray:
    """Compute the spec-driven structural feature vector.

    ``use_taint`` is OPT-IN and defaults to False. With it off, this function
    is byte-identical to its pre-taint behavior: the two taint-eligible flags
    (``is_secret_source`` / ``is_transmitter``) are read straight off
    ``engine.spec_flags_vector`` per instruction, exactly as before — the
    default path feeds every measurement in the repo and must not move.

    With ``use_taint=True``, a PDG is additionally built via
    ``SpecBackedPDGBuilder`` (which runs ``apply_dataflow_taint`` internally),
    and the flag histogram is instead accumulated from
    ``PDGNode.spec_flags`` — the union of the regex-based flags and the
    ISA-agnostic DATA_DEP-reachability taint (see spec/dataflow_taint.py).
    This is strictly additive: it can only turn flag bits on relative to the
    OFF path, never off. Vector length and column order (see
    ``feature_names``) are unaffected either way; only the two flag-fraction
    VALUES can change.
    """
    nc = engine.num_categories
    nf = engine.num_spec_flags
    nm = len(engine.mem_access_types)
    cat_h = np.zeros(nc, dtype=np.float32)
    flag_h = np.zeros(nf, dtype=np.float32)
    mem_h = np.zeros(nm, dtype=np.float32)

    opcodes: List[str] = []
    operand_counts: List[int] = []
    n = 0
    for line in sequence:
        if not _is_instr(line):
            continue
        n += 1
        cat = engine.classify_opcode(line)
        mem = engine.memory_access_type(line)
        cat_h[cat] += 1.0
        mem_h[mem] += 1.0
        if not use_taint:
            flag_h += engine.spec_flags_vector(line, cat, mem)
        toks = line.strip().split(None, 1)
        opcodes.append(toks[0].rstrip(":").lower() if toks else "")
        operand_counts.append(0 if len(toks) < 2 else len([o for o in toks[1].split(",") if o.strip()]))

    if use_taint:
        # Local import: keeps the OFF path free of the PDG-builder import
        # cost, and avoids a module-level import cycle (spec_pdg_builder
        # imports v54/pdg_builder, which this module has no other reason to
        # touch).
        from spec_pdg_builder import SpecBackedPDGBuilder
        pdg = SpecBackedPDGBuilder(engine, dataflow_taint=True).build(sequence)
        for node in pdg.nodes:
            flag_h += node.spec_flags

    denom = max(n, 1)
    cat_h /= denom
    flag_h /= denom
    mem_h /= denom

    # universal, ISA-agnostic structural counters
    log_len = math.log1p(n)
    unique_frac = (len(set(opcodes)) / denom) if opcodes else 0.0
    max_run = 0
    run = 0
    prev = None
    for op in opcodes:
        run = run + 1 if op == prev else 1
        max_run = max(max_run, run)
        prev = op
    max_run_frac = max_run / denom
    mean_operands = float(np.mean(operand_counts)) if operand_counts else 0.0

    universal = np.array([log_len, unique_frac, max_run_frac, mean_operands],
                         dtype=np.float32)
    return np.concatenate([cat_h, flag_h, mem_h, universal]).astype(np.float32)
