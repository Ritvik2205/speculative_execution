"""Unit tests for the KASPER taint flags (F1/F2/F3) in spec/dataflow_taint.py.

Hand-built PDGs so each flag's firing/not-firing is deterministic. Flags anchor
on is_secret_source, so tests set that explicitly (mirroring what
apply_dataflow_taint would have marked) and check apply_kasper_taint's refinement.
"""
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

import pdg_builder as pb
from dataflow_taint import apply_kasper_taint
from pdg_builder import (PDG, PDGNode, PDGEdge, OPCODE_CATEGORIES, EDGE_TYPES,
                         SPEC_FLAGS, KASPER_FLAGS)

LOAD = OPCODE_CATEGORIES["LOAD"]
STORE = OPCODE_CATEGORIES["STORE"]
COMPARE = OPCODE_CATEGORIES["COMPARE"]
ARITH = OPCODE_CATEGORIES["ARITHMETIC"]
DATA_DEP = EDGE_TYPES["DATA_DEP"]
SRC = SPEC_FLAGS["is_secret_source"]
KF_CONTROL = KASPER_FLAGS["is_control_gated_source"]
KF_STALE = KASPER_FLAGS["is_stale_forward_source"]
KF_VARLAT = KASPER_FLAGS["is_varlat_sink"]


def _node(i, raw, cat, src=(), dst=(), secret=False):
    n = PDGNode(id=i, raw_instruction=raw, opcode=raw.split()[0],
                opcode_category=cat, src_regs=set(src), dest_regs=set(dst))
    if secret:
        n.spec_flags[SRC] = 1.0
    return n


def _pdg(nodes, edges):
    p = PDG(nodes=nodes, edges=[PDGEdge(s, d, DATA_DEP) for s, d in edges])
    return p


def test_f1_control_gated_fires_on_bounds_checked_source():
    # cmp idx,limit ; (branch) ; load (base,idx) secret  -> idx shared with cmp
    nodes = [
        _node(0, "cmpq %rax, %rbx", COMPARE, src=("rax", "rbx")),
        _node(1, "movl (%rsi,%rax), %edx", LOAD, src=("rsi", "rax"), dst=("edx",), secret=True),
    ]
    apply_kasper_taint(_pdg(nodes, []))
    assert nodes[1].kasper_flags[KF_CONTROL] == 1.0


def test_f1_control_gated_no_compare_does_not_fire():
    nodes = [
        _node(0, "movl (%rsi,%rax), %edx", LOAD, src=("rsi", "rax"), dst=("edx",), secret=True),
    ]
    apply_kasper_taint(_pdg(nodes, []))
    assert nodes[0].kasper_flags[KF_CONTROL] == 0.0


def test_f1_does_not_fire_without_secret_source():
    # compare shares a reg, but the load is NOT a secret source -> no fire
    nodes = [
        _node(0, "cmpq %rax, %rbx", COMPARE, src=("rax", "rbx")),
        _node(1, "movl (%rsi,%rax), %edx", LOAD, src=("rsi", "rax"), dst=("edx",), secret=False),
    ]
    apply_kasper_taint(_pdg(nodes, []))
    assert nodes[1].kasper_flags[KF_CONTROL] == 0.0


def test_f2_stale_forward_fires_same_base_diff_offset():
    # store 8(%rbp) ; load 16(%rbp) secret -> same base rbp, different offset
    nodes = [
        _node(0, "movq %rcx, 8(%rbp)", STORE, src=("rcx", "rbp")),
        _node(1, "movl 16(%rbp), %edx", LOAD, src=("rbp",), dst=("edx",), secret=True),
    ]
    apply_kasper_taint(_pdg(nodes, []))
    assert nodes[1].kasper_flags[KF_STALE] == 1.0


def test_f2_stale_forward_same_offset_is_benign_spill():
    # store and load the SAME slot (ordinary spill) -> must NOT fire
    nodes = [
        _node(0, "movq %rcx, 16(%rbp)", STORE, src=("rcx", "rbp")),
        _node(1, "movl 16(%rbp), %edx", LOAD, src=("rbp",), dst=("edx",), secret=True),
    ]
    apply_kasper_taint(_pdg(nodes, []))
    assert nodes[1].kasper_flags[KF_STALE] == 0.0


def test_f2_stale_forward_different_base_does_not_fire():
    nodes = [
        _node(0, "movq %rcx, 8(%rbp)", STORE, src=("rcx", "rbp")),
        _node(1, "movl 16(%rsp), %edx", LOAD, src=("rsp",), dst=("edx",), secret=True),
    ]
    apply_kasper_taint(_pdg(nodes, []))
    assert nodes[1].kasper_flags[KF_STALE] == 0.0


def test_f3_varlat_sink_fires_when_fed_by_secret():
    # load secret -> div uses it  (DATA_DEP 0->1)
    nodes = [
        _node(0, "movl (%rsi,%rax), %edx", LOAD, src=("rsi", "rax"), dst=("edx",), secret=True),
        _node(1, "idivl %edx", ARITH, src=("edx",), dst=("eax",)),
    ]
    apply_kasper_taint(_pdg(nodes, [(0, 1)]))
    assert nodes[1].kasper_flags[KF_VARLAT] == 1.0


def test_f3_varlat_sink_no_secret_upstream_does_not_fire():
    nodes = [
        _node(0, "movl (%rsi), %edx", LOAD, src=("rsi",), dst=("edx",), secret=False),
        _node(1, "idivl %edx", ARITH, src=("edx",), dst=("eax",)),
    ]
    apply_kasper_taint(_pdg(nodes, [(0, 1)]))
    assert nodes[1].kasper_flags[KF_VARLAT] == 0.0


def test_f3_fixed_latency_op_does_not_fire():
    # add (not div/sqrt/gather) fed by secret -> not a varlat sink
    nodes = [
        _node(0, "movl (%rsi,%rax), %edx", LOAD, src=("rsi", "rax"), dst=("edx",), secret=True),
        _node(1, "addl %edx, %eax", ARITH, src=("edx", "eax"), dst=("eax",)),
    ]
    apply_kasper_taint(_pdg(nodes, [(0, 1)]))
    assert nodes[1].kasper_flags[KF_VARLAT] == 0.0


def test_default_vector_dim_unchanged():
    # the whole point: flags off by default -> 40-dim node vector preserved
    assert pb.INCLUDE_KASPER_FLAGS is False
    n = _node(0, "movl (%rdx), %edx", LOAD, src=("rdx",), dst=("edx",))
    assert len(n.get_feature_vector()) == 40
