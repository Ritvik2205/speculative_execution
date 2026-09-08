"""Tests for Task 4.4 (W4, closes G4): CFG-path-bounded speculative edges.

The base ``PDGBuilder.build()`` draws SPEC_CONDITIONAL edges from a
conditional branch to security-relevant nodes within ``speculative_window``
INSTRUCTION-INDEX positions, regardless of control flow — an unconditional
jump to an unresolved external target does not stop the token-window scan,
so a load placed after such a jump (which can never actually execute on the
branch's speculative path) still gets an edge.

This adds an opt-in ``cfg_spec_edges`` flag to ``SpecBackedPDGBuilder`` that,
when True, removes the base builder's index-window SPEC_CONDITIONAL edges
and replaces them with edges bounded by a lightweight intra-sequence CFG:
BFS from each conditional branch over CFG successors (fall-through + resolved
branch target), depth <= speculative_window, to security-relevant nodes.

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

SPEC_CONDITIONAL = EDGE_TYPES["SPEC_CONDITIONAL"]

_ENGINE = load_engine("x86_64.json")


def _build(sequence, cfg_spec_edges):
    return SpecBackedPDGBuilder(
        _ENGINE, dataflow_taint=False, cfg_spec_edges=cfg_spec_edges
    ).build(sequence)


def _spec_conditional_edges(pdg):
    return [e for e in pdg.edges if e.edge_type == SPEC_CONDITIONAL]


def test_fallthrough_load_after_bb_boundary_gets_edge_when_opted_in():
    """branch -> (basic-block boundary label) -> load on the fall-through
    path, within the CFG window, still gets a SPEC_CONDITIONAL edge."""
    seq = [
        "cmp $0, %rax",       # node 0
        "jne .Lelse",         # node 1 (BRANCH_COND)
        ".Lfoo:",             # label, no node
        "mov (%rbx), %rcx",   # node 2 (LOAD, fall-through successor of branch)
        ".Lelse:",
        "mov (%rdx), %rsi",   # node 3 (LOAD, branch-target successor)
    ]
    pdg = _build(seq, cfg_spec_edges=True)
    edges = {(e.src, e.dst) for e in _spec_conditional_edges(pdg)}
    assert (1, 2) in edges, edges


def test_load_after_unresolved_external_jmp_not_on_speculative_path():
    """Discriminating case: a LOAD placed after an unconditional jmp to an
    unresolved external target (<fn>) is NOT reachable via the CFG from the
    branch (the jmp is a sequence-exit when unresolved) — so no CFG-bounded
    edge is drawn to it, even though it sits well within the token window.
    The OLD index-window heuristic (cfg_spec_edges=False) DOES draw that
    edge, proving this is a genuine behavioral difference, not just an
    absence."""
    seq = [
        "cmp $0, %rax",       # node 0
        "jne .Lelse",         # node 1 (BRANCH_COND) -> fallthrough node2, target node4
        "jmp <fn>",           # node 2 (BRANCH_UNCOND, unresolved -> no CFG successor)
        "mov (%rbx), %rcx",   # node 3 (LOAD) -- unreachable via CFG from branch
        ".Lelse:",
        "mov (%rdx), %rsi",   # node 4 (LOAD) -- reachable via branch target
    ]

    old_pdg = _build(seq, cfg_spec_edges=False)
    old_edges = {(e.src, e.dst) for e in _spec_conditional_edges(old_pdg)}
    # The old token-window heuristic doesn't understand control flow, so it
    # DOES connect branch -> node 3 (the unreachable load) here.
    assert (1, 3) in old_edges, old_edges

    new_pdg = _build(seq, cfg_spec_edges=True)
    new_edges = {(e.src, e.dst) for e in _spec_conditional_edges(new_pdg)}
    # CFG-bounded: node 3 is not on any speculative path from the branch.
    assert (1, 3) not in new_edges, new_edges
    # But node 4 (real branch-target successor) IS on a speculative path.
    assert (1, 4) in new_edges, new_edges


def test_default_off_matches_base_index_window_behavior():
    seq = [
        "cmp $0, %rax",
        "jne .Lelse",
        "jmp <fn>",
        "mov (%rbx), %rcx",
        ".Lelse:",
        "mov (%rdx), %rsi",
    ]
    default_pdg = SpecBackedPDGBuilder(_ENGINE, dataflow_taint=False).build(seq)
    explicit_off_pdg = _build(seq, cfg_spec_edges=False)
    assert _spec_conditional_edges(default_pdg) == _spec_conditional_edges(explicit_off_pdg)

    # And it matches the plain (non-spec-backed) base builder's behavior
    # for the same node classification -- i.e. cfg_spec_edges defaulting to
    # False changes nothing about SPEC_CONDITIONAL edge construction.
    on_pdg = _build(seq, cfg_spec_edges=True)
    assert _spec_conditional_edges(default_pdg) != _spec_conditional_edges(on_pdg)
