"""Opt-in fix: x86 memory-operand reads that are not category LOAD.

Real Revizor gadgets read memory through cmov/ALU/compare forms
(`cmovgq (%r14,%rax), %rdi`, `addq (%r14,%rcx), %rax`, `testl %ecx, (%r14,%rdi)`).
The spec engine files these as MOVE/ARITHMETIC/COMPARE/OTHER, and the
is_memory_access / is_secret_source / is_transmitter rules gate on category
LOAD, so 91-93% of real reads carried none of them
(eval/graph_anatomy/stage12_report.md). `x86_mem_reads=True` sets the flags
from the operand instead. Default False keeps every graph byte-identical.
"""
import sys
from pathlib import Path

import numpy as np

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

from pdg_builder import EDGE_TYPES, SPEC_FLAGS  # noqa: E402
from isa_spec import load_engine  # noqa: E402
from spec_pdg_builder import SpecBackedPDGBuilder  # noqa: E402
from inline_features import compute_inline_features, get_feature_names  # noqa: E402

_X86 = load_engine("x86_64.json")
_ARM = load_engine("arm64.json")

MEM = SPEC_FLAGS["is_memory_access"]
SRC = SPEC_FLAGS["is_secret_source"]
TX = SPEC_FLAGS["is_transmitter"]

GADGET = [
    "cmovgq (%r14,%rax), %rdi",
    "andq $0x1fff, %rdi",
    "addq (%r14,%rdi), %rcx",
    "testl %ecx, (%r14,%rcx)",
    "leaq (%r14,%rcx), %rdx",
    "movq %rax, (%r14,%rbx)",
]


def _flags(seq, engine=_X86, **kw):
    b = SpecBackedPDGBuilder(engine, dataflow_taint=False, **kw)
    return [n.spec_flags for n in b.build(seq).nodes]


def test_default_is_unchanged():
    f = _flags(GADGET)
    # the pre-fix behaviour: no non-LOAD read gets any memory flag
    assert f[0][MEM] == 0 and f[2][MEM] == 0 and f[3][MEM] == 0


def test_reads_get_memory_flags():
    f = _flags(GADGET, x86_mem_reads=True)
    for i in (0, 2, 3):          # cmov / add / test with an indexed memory operand
        assert f[i][MEM] == 1 and f[i][SRC] == 1 and f[i][TX] == 1, GADGET[i]


def test_lea_and_register_ops_are_not_reads():
    f = _flags(GADGET, x86_mem_reads=True)
    assert f[4][MEM] == 0 and f[4][SRC] == 0       # lea computes an address, no access
    assert f[1][MEM] == 0                           # and $imm, %reg


def test_plain_store_is_access_but_not_source():
    f = _flags(GADGET, x86_mem_reads=True)
    assert f[5][MEM] == 1 and f[5][SRC] == 0


def test_non_x86_graphs_unchanged():
    seq = ["ldr x0, [x1, x2]", "add x3, x0, #1", "str x3, [x4]"]
    a, b = _flags(seq, _ARM), _flags(seq, _ARM, x86_mem_reads=True)
    assert all(np.array_equal(x, y) for x, y in zip(a, b))


def test_cmov_read_gets_memory_order_edge_from_prior_store():
    seq = ["movq %rax, (%r14,%rbx)", "cmovgq (%r14,%rbx), %rdi"]
    mo = EDGE_TYPES["MEMORY_ORDER"]
    off = SpecBackedPDGBuilder(_X86, dataflow_taint=False).build(seq)
    on = SpecBackedPDGBuilder(_X86, dataflow_taint=False, x86_mem_reads=True).build(seq)
    has = lambda p: any(e.edge_type == mo and (e.src, e.dst) == (0, 1) for e in p.edges)
    assert not has(off) and has(on)


def test_inline_indexed_load_counts_att_form_only_when_enabled():
    names = get_feature_names()
    i = names.index("has_indexed_load")
    seq = ["movq (%r14,%rax), %rbx", "addq $1, %rbx"]
    assert compute_inline_features(seq)[i] == 0.0
    assert compute_inline_features(seq, x86_indexed=True)[i] == 1.0
    # an indexed STORE is not a load
    assert compute_inline_features(["movq %rbx, (%r14,%rax)"], x86_indexed=True)[i] == 0.0
