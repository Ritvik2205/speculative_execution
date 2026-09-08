"""Tests for Task 4.3 (W4, closes G1): V4 store-forwarding MEMORY_ORDER edge.

SPECTRE_V4 (speculative store bypass / store-to-load forwarding) currently
has no structural signature in the PDG: a store followed by a may-aliasing
load within the speculation window (the actual forwarding hazard) produces
no distinguishing edge. This adds an opt-in ``mem_order_edges`` flag to
``SpecBackedPDGBuilder`` that adds a MEMORY_ORDER edge store->load for every
such pair, using a conservative same-base-register may-alias rule that is
independent of (and additional to) the base ``PDGBuilder``'s own
src-reg-keyed MEMORY_ORDER heuristic (which does not fire for these cases —
see the AT&T-syntax dest/src mislabeling noted in the report).

Default is False so all existing graphs (and the recorded oracle baseline /
per-class lift gate, which depend on byte-identical graphs) are unaffected.
"""
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

from pdg_builder import EDGE_TYPES  # noqa: E402
from isa_spec import load_engine  # noqa: E402
from spec_pdg_builder import SpecBackedPDGBuilder  # noqa: E402

MEMORY_ORDER = EDGE_TYPES["MEMORY_ORDER"]

_ENGINE = load_engine("x86_64.json")


def _build(sequence, mem_order_edges):
    return SpecBackedPDGBuilder(
        _ENGINE, dataflow_taint=False, mem_order_edges=mem_order_edges
    ).build(sequence)


def _memory_order_edges(pdg):
    return [e for e in pdg.edges if e.edge_type == MEMORY_ORDER]


def test_same_base_produces_memory_order_edge_when_opted_in():
    seq = ["mov %rax, (%rbx)", "mov (%rbx), %rcx"]
    pdg = _build(seq, mem_order_edges=True)
    edges = _memory_order_edges(pdg)
    assert len(edges) == 1, edges
    assert edges[0].src == 0 and edges[0].dst == 1


def test_default_off_produces_no_memory_order_edge():
    seq = ["mov %rax, (%rbx)", "mov (%rbx), %rcx"]
    pdg = _build(seq, mem_order_edges=False)
    assert _memory_order_edges(pdg) == []
    # Also confirm the constructor default (no explicit kwarg) matches.
    default_pdg = SpecBackedPDGBuilder(_ENGINE, dataflow_taint=False).build(seq)
    assert _memory_order_edges(default_pdg) == []


def test_different_base_register_no_edge():
    seq = ["mov %rax, (%rbx)", "mov (%rdx), %rcx"]
    pdg = _build(seq, mem_order_edges=True)
    assert _memory_order_edges(pdg) == []


def test_same_base_distinct_constant_offsets_no_edge():
    seq = ["mov %rax, -8(%rbp)", "mov -16(%rbp), %rcx"]
    pdg = _build(seq, mem_order_edges=True)
    assert _memory_order_edges(pdg) == []


def test_intervening_base_redefinition_no_edge():
    seq = ["mov %rax, (%rbx)", "mov $0, %rbx", "mov (%rbx), %rcx"]
    pdg = _build(seq, mem_order_edges=True)
    assert _memory_order_edges(pdg) == []


def test_multiple_aliasing_loads_all_get_edges_fix_round_1():
    """Fix round 1: neither load redefines %rbx (ir_defuse correctly keeps a
    load's base register out of its defs, unlike the base PDGBuilder's
    dest_regs), so the scan must not hard-stop after the first aliasing
    load — both loads get a MEMORY_ORDER edge from the one store."""
    seq = ["mov %rax,(%rbx)", "mov (%rbx),%rcx", "mov (%rbx),%rdx"]
    pdg = _build(seq, mem_order_edges=True)
    edges = _memory_order_edges(pdg)
    assert len(edges) == 2, edges
    assert {(e.src, e.dst) for e in edges} == {(0, 1), (0, 2)}
