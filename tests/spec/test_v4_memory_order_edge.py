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

Update (ISA-normalisation fix): the base heuristic's silence on these x86
pairs was itself the AT&T dest/src bug. With register direction fixed it
fires on same-register store/load pairs on x86 exactly as it always did on
ARM, so the tests below measure what the OPT-IN pass adds on top of the
base graph (`_added_edges`), and the opt-in pass de-duplicates against it.
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


def _added_edges(sequence):
    """MEMORY_ORDER edges present with the opt-in pass but not without it."""
    base = {(e.src, e.dst) for e in _memory_order_edges(_build(sequence, False))}
    return [e for e in _memory_order_edges(_build(sequence, True))
            if (e.src, e.dst) not in base]


def _pairs(edges):
    return sorted((e.src, e.dst) for e in edges)


def test_base_heuristic_fires_on_x86_like_arm():
    """ISA parity: the always-on same-register store->load edge fires on x86
    AT&T syntax exactly as on ARM (it never did on x86 before the fix)."""
    x86 = _build(["mov %rax, (%rbx)", "mov (%rbx), %rcx"], False)
    arm = SpecBackedPDGBuilder(load_engine("arm64.json"), dataflow_taint=False,
                               mem_order_edges=False).build(["str x0, [x1]", "ldr x2, [x1]"])
    assert _pairs(_memory_order_edges(x86)) == _pairs(_memory_order_edges(arm)) == [(0, 1)]


def test_same_base_produces_memory_order_edge_when_opted_in():
    seq = ["mov %rax, (%rbx)", "mov (%rbx), %rcx"]
    pdg = _build(seq, mem_order_edges=True)
    edges = _memory_order_edges(pdg)
    assert _pairs(edges) == [(0, 1)], edges     # once — no duplicate of the base edge


def test_default_off_produces_no_memory_order_edge():
    """Off by default: the opt-in pass contributes nothing — the only
    MEMORY_ORDER edges are the base heuristic's, identical to an explicit
    mem_order_edges=False build."""
    seq = ["mov %rax, (%rdx)", "mov (%rdx,%rsi), %rcx", "addl %ebx, (%r14,%rdi)",
           "movl (%r14,%rdi), %ecx"]
    off = _pairs(_memory_order_edges(_build(seq, mem_order_edges=False)))
    default_pdg = SpecBackedPDGBuilder(_ENGINE, dataflow_taint=False).build(seq)
    assert _pairs(_memory_order_edges(default_pdg)) == off
    assert (2, 3) not in off     # RMW->load pair is the opt-in pass's alone


def test_different_base_register_no_edge():
    seq = ["mov %rax, (%rbx)", "mov (%rdx), %rcx"]
    assert _added_edges(seq) == []


def test_same_base_distinct_constant_offsets_no_edge():
    seq = ["mov %rax, -8(%rbp)", "mov -16(%rbp), %rcx"]
    assert _added_edges(seq) == []


def test_intervening_base_redefinition_no_edge():
    seq = ["mov %rax, (%rbx)", "mov $0, %rbx", "mov (%rbx), %rcx"]
    assert _added_edges(seq) == []


def test_multiple_aliasing_loads_all_get_edges_fix_round_1():
    """Fix round 1: neither load redefines %rbx (ir_defuse correctly keeps a
    load's base register out of its defs, unlike the base PDGBuilder's
    dest_regs), so the scan must not hard-stop after the first aliasing
    load — both loads get a MEMORY_ORDER edge from the one store."""
    seq = ["mov %rax,(%rbx)", "mov (%rbx),%rcx", "mov (%rbx),%rdx"]
    pdg = _build(seq, mem_order_edges=True)
    edges = _memory_order_edges(pdg)
    assert _pairs(edges) == [(0, 1), (0, 2)], edges


# ---------------------------------------------------------------------------
# P3b: RMW-to-memory ops (`classify_opcode` puts these in OTHER, not
# STORE/LOAD) must still be recognized as writers/readers of memory — real
# Revizor V4 gadgets leak through exactly this shape.
# ---------------------------------------------------------------------------

def test_rmw_store_then_load_produces_edge():
    """`addl %ebx, (%r14,%rdi)` writes memory via a read-modify-write op
    (classifies as OTHER, not STORE) — a later load of the same base must
    still get a MEMORY_ORDER edge from it."""
    seq = ["addl %ebx, (%r14,%rdi)", "movl (%r14,%rdi), %ecx"]
    pdg = _build(seq, mem_order_edges=True)
    edges = _memory_order_edges(pdg)
    assert len(edges) == 1, edges
    assert edges[0].src == 0 and edges[0].dst == 1


def test_rmw_to_rmw_produces_edge():
    """Both nodes are RMW ops touching the same base (`%r14`) — the second
    RMW reads before it writes, so it's both a writer and a reader; the
    writer->reader edge must still fire."""
    seq = ["addl %ebx,(%r14,%rdi)", "subl $8,(%r14,%rdi)"]
    pdg = _build(seq, mem_order_edges=True)
    edges = _memory_order_edges(pdg)
    assert len(edges) == 1, edges
    assert edges[0].src == 0 and edges[0].dst == 1


def test_rmw_different_base_no_edge():
    seq = ["addl %ebx,(%r14,%rdi)", "movl (%r15,%rdx),%ecx"]
    pdg = _build(seq, mem_order_edges=True)
    assert _memory_order_edges(pdg) == []


def test_rmw_default_off_no_edge():
    seq = ["addl %ebx, (%r14,%rdi)", "movl (%r14,%rdi), %ecx"]
    pdg = _build(seq, mem_order_edges=False)
    assert _memory_order_edges(pdg) == []
