"""Tainted V1 victim (gate_source(..., victim="tainted")).

Spectector's default policy makes all memory secret, so any guarded load ->
address chain is a violation and ordinary code hits it ~60% of the time. In
this victim the world the body can reach WITHOUT the attacker's value is
concrete: every general register starts at 0 and the memory around address 0,
the frame and the stack is initialised to 0 (a Spectector initial
configuration). Only memory reached through the attacker-controlled register
(arr + i, i symbolic) is symbolic, i.e. secret. A leak is then a speculative
observation that depends on data the attacker's pointer selected.

"tainted_ctl" is the same world with the attacker register concrete too: a
leak there is an escape (the body built an address outside the concrete
world), not an attacker-dependent leak.
"""
import sys
from pathlib import Path

import pytest

REPO = Path(__file__).resolve().parents[2]
for p in (REPO, REPO / "gen", REPO / "spec", REPO / "v54"):
    sys.path.insert(0, str(p))

from test_gate_only_harness import _docker_ok  # noqa: E402

docker = pytest.mark.skipif(not _docker_ok(), reason="Spectector image unavailable")


def _verdict(body, victim="tainted"):
    import minimality_gate as mg
    return mg.gate_verdict(list(body), "SPECTRE_V1", tag="tt", victim=victim)


GATED_UNCONTROLLED = ["jae .Lskip", "movq -16(%rbp), %r8", "movzbl (%rdx,%r8), %ecx", ".Lskip:"]

ROWS = [
    ("empty", [], "safe"),
    ("attacker_load_then_transmit", ["movzbl (%r15), %eax", "movb $1, (%r14,%rax)"], "leak"),
    ("attacker_load_then_chase", ["movq (%r15), %rax", "movq (%rax), %rcx"], "leak"),
    ("fence_between", ["movzbl (%r15), %eax", "lfence", "movb $1, (%r14,%rax)"], "safe"),
    ("chase_through_uncontrolled_register", ["movq (%rbx), %rax", "movq (%rax), %rcx"], "safe"),
    # the dominant core of generator output and of benign code on the indexed victim
    ("guarded_chase_through_uncontrolled_registers", GATED_UNCONTROLLED, "safe"),
    ("guarded_base_index_chase_uncontrolled",
     ["jne .Lx", "movzbl (%rbx,%rsi), %r10d", "movq (%r13,%r10), %rdx", ".Lx:"], "safe"),
    ("guarded_chase_from_a_popped_value",
     ["popq %rbx", "je .Lx", "movq (%rbx), %rax", "movq (%rax), %rcx", ".Lx:"], "safe"),
    # a complete gadget: own branch, attacker pointer, dependent access
    ("guarded_attacker_load_then_transmit",
     ["jae .Lskip", "movzbl (%r15), %eax", "movb $1, (%r14,%rax)", ".Lskip:"], "leak"),
    ("attacker_value_spilled_to_a_global_cell_then_used",
     ["movq %r15, -8(%rip)", "movq -8(%rip), %rax", "movzbl (%rax), %ecx",
      "movb $1, (%r14,%rcx)"], "leak"),
    ("attacker_value_spilled_to_the_frame_then_used",
     ["movq %r15, -8(%rbp)", "movq -8(%rbp), %rax", "movzbl (%rax), %ecx",
      "movb $1, (%r14,%rcx)"], "leak"),
    ("branch_on_the_attacker_loaded_value",
     ["movzbl (%r15), %eax", "testl %eax, %eax", "je .Lx", "nop", ".Lx:"], "leak"),
]


@docker
@pytest.mark.parametrize("name,body,want", ROWS)
def test_tainted_truth_table(name, body, want):
    assert _verdict(body) == want, name


@docker
@pytest.mark.parametrize("name,body,want", ROWS)
def test_control_without_an_attacker_value_never_leaks_on_these(name, body, want):
    assert _verdict(body, victim="tainted_ctl") == "safe", name


@docker
def test_escape_from_the_concrete_world_is_caught_by_the_control():
    # an immediate used as a pointer leaves the initialised zones
    body = ["movq $70000000, %rax", "je .Lx", "movq (%rax), %rcx", "movq (%rcx), %rdx", ".Lx:"]
    assert _verdict(body) == "leak"
    assert _verdict(body, victim="tainted_ctl") == "leak"


def test_tainted_source_names_its_initial_configuration():
    from decode import gate_source
    from oracle.spectector_oracle import conf_for_source
    src = gate_source(["nop"], "SPECTRE_V1", victim="tainted")
    conf = conf_for_source(src)
    assert conf.startswith("c([") and conf.rstrip().endswith("."), conf[:40]
    assert "0=0" in conf and "65536=0" in conf
    assert conf_for_source(gate_source(["nop"], "SPECTRE_V1", victim="indexed")) is None


def test_rip_relative_cells_are_moved_into_the_concrete_frame():
    from decode import gate_source
    src = gate_source(["movq %r15, -8(%rip)"], "SPECTRE_V1", victim="tainted")
    assert "-8(%rip)" not in src and "-2056(%rbp)" in src
