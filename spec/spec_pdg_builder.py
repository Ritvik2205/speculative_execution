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

import re
import sys
from pathlib import Path
from typing import Optional, Set, Tuple

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


def _parse_mem_operand(instr: str) -> Tuple[Optional[str], Optional[int], bool]:
    """Parse the base register and displacement of the first memory operand
    in ``instr``, for the Task 4.3 conservative may-alias check.

    Returns ``(base_reg, offset, offset_is_constant)``:
      - ``base_reg``: lowercased base register name, or ``None`` if no
        memory operand could be parsed (caller must then treat aliasing as
        MAY — conservative for recall, per the plan).
      - ``offset``: the displacement as an int (0 if none written).
      - ``offset_is_constant``: False when an index register is present
        (x86 ``disp(%base,%index[,scale])``) or the ARM form uses a register
        offset (``[base, reg]``) — the effective address then varies at
        runtime, so a numeric offset comparison can't prove no-alias.

    x86 AT&T: ``disp(%base[,%index[,scale]])``. ARM: ``[base, #imm]`` or
    ``[base, reg]``.
    """
    m = re.search(
        r'(-?\d+)?\(%([A-Za-z][A-Za-z0-9]*)\s*'
        r'(?:,\s*%([A-Za-z][A-Za-z0-9]*)(?:\s*,\s*\d+)?)?\)',
        instr,
    )
    if m:
        disp_str, base, index = m.groups()
        offset = int(disp_str) if disp_str else 0
        return base.lower(), offset, index is None
    m = re.search(
        r'\[\s*([A-Za-z][A-Za-z0-9]*)\s*'
        r'(?:,\s*(?:#(-?\d+)|([A-Za-z][A-Za-z0-9]*)))?\s*\]',
        instr,
    )
    if m:
        base, imm, reg_off = m.groups()
        offset = int(imm) if imm else 0
        return base.lower(), offset, reg_off is None
    return None, None, False


def _may_alias(s_base: Optional[str], s_off: Optional[int], s_const: bool,
                l_base: Optional[str], l_off: Optional[int], l_const: bool) -> bool:
    """Conservative may-alias rule for Task 4.3, given the pre-parsed
    ``(base_reg, offset, offset_is_constant)`` of a store and a candidate
    load's memory operands (see ``_parse_mem_operand``).

    Same base register with no provably-distinct constant offsets ⇒
    MAY-alias (True). Different base registers, or the same base with two
    distinct constant offsets, ⇒ no-alias (False). When either operand
    can't be parsed, default to MAY-alias — conservative for recall, per
    the plan ("when in doubt, MAY-alias").
    """
    if s_base is None or l_base is None:
        return True
    if s_base != l_base:
        return False
    if s_const and l_const and s_off != l_off:
        return False
    return True


class SpecBackedPDGBuilder(pb.PDGBuilder):
    def __init__(self, engine: SpecEngine, speculative_window: int | None = None,
                 dataflow_taint: bool = True, dataflow_taint_max_hops: int = 4,
                 taint_mode: str = "shift", mem_order_edges: bool = False):
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
        # Task 4.3 (W4, closes G1): opt-in MEMORY_ORDER edge (store -> later
        # may-aliasing load within self.speculative_window), giving V4
        # (speculative store bypass / store-to-load forwarding) a structural
        # signature it currently lacks. DEFAULT OFF: every graph produced
        # with the default is byte-identical to before this task, since the
        # recorded oracle baseline and per-class lift gate depend on it.
        self.mem_order_edges = mem_order_edges

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
        if self.mem_order_edges:
            self._add_v4_memory_order_edges(pdg)
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

    def _add_v4_memory_order_edges(self, pdg) -> None:
        """Task 4.3 (W4, closes G1): for every STORE, add a MEMORY_ORDER edge
        to every LOAD within ``self.speculative_window`` node-positions that
        MAY-alias it (``_may_alias`` above), stopping the scan for a given
        store once an intervening instruction redefines the store's own
        base register (the address is then provably a different location).

        This is a separate, opt-in, text-parsed base-register analysis — it
        does not touch or replace the base ``PDGBuilder.build()``'s own
        unconditional (always-on) src-reg-keyed MEMORY_ORDER edges, which
        key off ``node.src_regs`` rather than the parsed memory-operand base
        register and do not fire for the store/load pairs this task targets
        (see the AT&T dest/src-labeling note in the task report).

        Node-order note: a candidate LOAD at position ``j`` is checked
        *before* checking whether position ``j`` redefines the base
        register, and a redefinition found there only stops the scan for
        positions *after* ``j``. This matters because the base
        ``PDGBuilder``'s AT&T dest/src convention treats the FIRST register
        token in a load like ``mov (%rbx), %rcx`` as ``dest_regs`` (it's
        really the base register being read, not written) — checking
        redefinition before the load-target check would make a load falsely
        veto its own edge. Only a genuinely-earlier instruction (e.g. ``mov
        $0, %rbx``) can suppress an edge this way.
        """
        nodes = pdg.nodes
        n = len(nodes)
        for i, store in enumerate(nodes):
            if store.opcode_category != pb.OPCODE_CATEGORIES['STORE']:
                continue
            s_base, s_off, s_const = _parse_mem_operand(store.raw_instruction)
            window_end = min(n, i + self.speculative_window + 1)
            base_redefined = False
            for j in range(i + 1, window_end):
                if base_redefined:
                    break
                node = nodes[j]
                if node.opcode_category == pb.OPCODE_CATEGORIES['LOAD']:
                    l_base, l_off, l_const = _parse_mem_operand(node.raw_instruction)
                    if _may_alias(s_base, s_off, s_const, l_base, l_off, l_const):
                        pdg.edges.append(pb.PDGEdge(
                            src=store.id, dst=node.id,
                            edge_type=pb.EDGE_TYPES['MEMORY_ORDER'], weight=1.0))
                if s_base is not None and s_base in node.dest_regs:
                    base_redefined = True
