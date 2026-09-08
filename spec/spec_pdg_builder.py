#!/usr/bin/env python3
"""
spec_pdg_builder.py — spec-backed PDG builder (Phase 0).

Subclasses v54/pdg_builder.PDGBuilder and overrides ONLY the four node-decision
methods so they delegate to a data-driven SpecEngine instead of the hardcoded
regex logic. All edge construction in the inherited ``build()`` derives from
node category / spec-flags / registers, so identical node decisions ⇒ identical
graphs (proven by ``validate_graph.py``).

All three edge-window parameters (speculative_window, cache_window,
rsb_pair_window) are sourced from the spec's ``pipeline`` block, making them
spec-driven rather than hardcoded. The base ``PDGBuilder`` now reads
``self.rsb_pair_window`` in ``build()`` (default = the module global, so default
behavior is unchanged), so the RSB window is honored from the spec without a
build() rewrite and without the old assert-agreement limitation.

Usage:
    from spec.isa_spec import load_engine
    from spec.spec_pdg_builder import SpecBackedPDGBuilder
    b = SpecBackedPDGBuilder(load_engine("x86_64.json"))
    pdg = b.build(sequence)
"""

from __future__ import annotations

import sys
from pathlib import Path
from typing import Set, Tuple

import numpy as np

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

import pdg_builder as pb  # noqa: E402
from isa_spec import SpecEngine  # noqa: E402
from dataflow_taint import apply_dataflow_taint  # noqa: E402
from ir_defuse import defuse_for_sequence  # noqa: E402
from taint_slice import mark_secret_transmitter  # noqa: E402


def _is_instruction_line(line: str) -> bool:
    """Same skip predicate as pb.PDGBuilder.build()'s loop (blank/label/
    directive lines never get a node) and ir_defuse's `_is_instruction` —
    used to filter `defuse_for_sequence`'s per-line output down to exactly
    the lines that produced a pdg node, so it lines up 1:1 with pdg.nodes."""
    s = line.strip()
    return bool(s) and not s.endswith(':') and not s.startswith('.')


class SpecBackedPDGBuilder(pb.PDGBuilder):
    def __init__(self, engine: SpecEngine, speculative_window: int | None = None,
                 dataflow_taint: bool = True, dataflow_taint_max_hops: int = 4,
                 taint_mode: str = "shift"):
        pipe = engine.pipeline
        spec_win = speculative_window if speculative_window is not None \
            else int(pipe.get("speculative_window", 10))
        super().__init__(speculative_window=spec_win)
        self.engine = engine
        # Spec-driven edge windows (override parent defaults). All three now come
        # from the spec pipeline block; build() reads self.rsb_pair_window.
        self.cache_window = int(pipe.get("cache_window", self.cache_window))
        self.rsb_pair_window = int(pipe.get("rsb_pair_window", self.rsb_pair_window))
        # G6 follow-up: derive is_secret_source/is_transmitter from DATA_DEP
        # graph reachability (gated on a page/cache-line-scale SHIFT), not just
        # single-instruction indexed-addressing syntax. Fixes ISAs (RISC-V)
        # where that syntax doesn't exist; validated not to over-fire on
        # x86/ARM (spec/validate_dataflow_taint.py). Opt-out via the flag for
        # exact backward-compatible graphs when needed (e.g. re-deriving the
        # pre-fix baseline for comparison).
        self.dataflow_taint = dataflow_taint
        self.dataflow_taint_max_hops = dataflow_taint_max_hops
        # Task 4.2 (W4, closes G2): "shift" (default, UNCHANGED) keeps the
        # PROBE_SHIFT_AMOUNTS-gated apply_dataflow_taint above — every graph
        # produced with the default stays byte-identical to before this task,
        # since the recorded oracle baseline and per-class lift gate depend
        # on it. "slice" is the opt-in shift-magnitude-independent path:
        # attacker-input reachability to a memory-op ADDRESS operand via
        # Task 4.1's def-use (spec/taint_slice.py), independent of whatever
        # instruction did the address-scaling (shift, LEA, IMUL, ...).
        if taint_mode not in ("shift", "slice"):
            raise ValueError(f"taint_mode must be 'shift' or 'slice', got {taint_mode!r}")
        self.taint_mode = taint_mode

    # ---- delegate the four node decisions to the spec engine ------------
    def _classify_opcode(self, instr: str) -> int:
        return self.engine.classify_opcode(instr)

    def _extract_registers(self, instr: str, category: int) -> Tuple[Set[str], Set[str]]:
        return self.engine.extract_registers(instr, category)

    def _get_memory_access_type(self, instr: str) -> int:
        return self.engine.memory_access_type(instr)

    def _compute_spec_flags(self, instr: str, category: int, mem_type: int) -> np.ndarray:
        return self.engine.spec_flags_vector(instr, category, mem_type)

    def build(self, sequence):
        pdg = super().build(sequence)
        if not self.dataflow_taint:
            return pdg
        if self.taint_mode == "slice":
            defuse_raw = defuse_for_sequence(sequence, self.engine.arch)
            defuse = [du for line, du in zip(sequence, defuse_raw)
                      if _is_instruction_line(line)]
            mark_secret_transmitter(pdg, defuse, arch=self.engine.arch)
        else:
            apply_dataflow_taint(pdg, max_hops=self.dataflow_taint_max_hops)
        return pdg
