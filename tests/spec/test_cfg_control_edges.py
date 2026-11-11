"""Step 5 (docs/NEXT_STEPS_2026-11-10.md §0.3/§5): branch targets in the graph.

Every stored sequence has its label lines stripped, so no direct branch
resolves and the CONTROL_FLOW edges are a plain chain (node i -> i+1) even
across an unconditional jump. ``cfg_control_edges`` (opt-in, default off =
unchanged graphs) makes CONTROL_FLOW follow the intra-sequence CFG when the
sequence keeps its label lines as non-node markers.
"""
import sys
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

from pdg_builder import EDGE_TYPES  # noqa: E402
from isa_spec import load_engine  # noqa: E402
from spec_pdg_builder import SpecBackedPDGBuilder  # noqa: E402

CONTROL_FLOW = EDGE_TYPES["CONTROL_FLOW"]
_ENGINE = load_engine("x86_64.json")


def _build(sequence, **kw):
    return SpecBackedPDGBuilder(_ENGINE, **kw).build(sequence)


def _cf(pdg):
    return {(e.src, e.dst) for e in pdg.edges if e.edge_type == CONTROL_FLOW}


def _all_edges(pdg):
    return sorted((e.src, e.dst, e.edge_type) for e in pdg.edges)


BRANCH_TO_LABEL = [
    "cmpq %rsi, %rdi",           # 0
    "jae .Lout",                 # 1  conditional branch to a local label
    "movzbl (%r14,%rdi), %eax",  # 2
    "shlq $12, %rax",            # 3
    ".Lout:",                    # label: not a node
    "movq (%r14,%rax), %rbx",    # 4  branch target
    "addq $1, %rbx",             # 5
]


def test_conditional_branch_gets_control_edge_to_its_label_target():
    pdg = _build(BRANCH_TO_LABEL, cfg_control_edges=True)
    assert len(pdg.nodes) == 6
    assert all(not n.raw_instruction.strip().endswith(":") for n in pdg.nodes)
    cf = _cf(pdg)
    assert (1, 4) in cf      # taken edge
    assert (1, 2) in cf      # fall-through kept


def test_default_graph_is_unchanged_by_label_lines():
    with_labels = _build(BRANCH_TO_LABEL)
    without = _build([l for l in BRANCH_TO_LABEL if not l.endswith(":")])
    assert _all_edges(with_labels) == _all_edges(without)
    assert (1, 4) not in _cf(with_labels)


def test_unconditional_jump_to_label_drops_the_fall_through_edge():
    seq = [
        "movq (%rdi), %rax",   # 0
        "jmp .Lend",           # 1
        "movq (%rax), %rbx",   # 2  dead code after the jump
        ".Lend:",
        "addq $1, %rax",       # 3
    ]
    cf = _cf(_build(seq, cfg_control_edges=True))
    assert (1, 3) in cf
    assert (1, 2) not in cf


def test_unresolved_target_keeps_the_sequential_chain():
    seq = ["cmpq %rsi, %rdi", "jae .Lelsewhere", "jmp 0x7a <.macro.measurement_end>",
           "movq (%rdi), %rax"]
    assert _cf(_build(seq, cfg_control_edges=True)) == _cf(_build(seq))


def test_branch_to_a_label_at_the_end_of_the_sequence_does_not_crash():
    seq = ["cmpq %rsi, %rdi", "jae .Lexit", "movq (%r14,%rdi), %rax",
           "jmp .Lexit", "movq (%rax), %rbx", ".Lexit:"]
    pdg = _build(seq, cfg_control_edges=True, cfg_spec_edges=True)
    n = len(pdg.nodes)
    assert n == 5
    assert all(e.src < n and e.dst < n for e in pdg.edges)
    # the jump leaves the sequence: no fall-through into the dead load
    assert (3, 4) not in _cf(pdg)


# --- fence on the taken path vs on the fall-through path -------------------

def _fence_variant(fence_on_taken_path: bool):
    body = ["movzbl (%r14,%rdi), %eax", "shlq $12, %rax", "movq (%r14,%rax), %rbx"]
    exit_ = ["addq $1, %rcx", "subq $2, %rdx", "xorq %rsi, %rsi"]
    taken = (["lfence"] if fence_on_taken_path else []) + body
    fall = ([] if fence_on_taken_path else ["lfence"]) + exit_
    return (["cmpq %rsi, %rdi", "jb .Lgadget"] + fall + ["jmp .Ldone", ".Lgadget:"]
            + taken + [".Ldone:", "nop"])


def _opcodes(seq):
    return Counter(l.split()[0] for l in seq if not l.endswith(":"))


def _graph_signature(pdg):
    """Position-free: what the GNN sees if node order is ignored — each edge as
    (edge type, source opcode category, destination opcode category)."""
    return Counter((e.edge_type, pdg.nodes[e.src].opcode_category,
                    pdg.nodes[e.dst].opcode_category) for e in pdg.edges)


def test_fence_on_taken_vs_fallthrough_path_gives_different_graphs():
    a, b = _fence_variant(True), _fence_variant(False)
    assert _opcodes(a) == _opcodes(b)
    kw = dict(cfg_control_edges=True, cfg_spec_edges=True)
    ga, gb = _build(a, **kw), _build(b, **kw)
    assert _graph_signature(ga) != _graph_signature(gb)
    # the fence is the branch TARGET in one and the FALL-THROUGH in the other
    fence = _ENGINE.opcode_categories["FENCE"]
    def branch_succ_cats(pdg):
        return {(pdg.nodes[d].opcode_category == fence, d == 2)
                for s, d in _cf(pdg) if s == 1}
    assert branch_succ_cats(ga) == {(False, True), (True, False)}
    assert branch_succ_cats(gb) == {(True, True), (False, False)}
