"""Which live-in register could an attacker control? (gen/attacker_reg.py)"""
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
for p in (REPO, REPO / "gen", REPO / "spec", REPO / "v54"):
    sys.path.insert(0, str(p))
from attacker_reg import (attacker_candidates, find_attacker_register,  # noqa: E402
                          to_attacker_canonical)


def test_candidates_are_address_registers_live_into_the_window_in_first_use_order():
    w = ["movzbl (%rbx,%rsi), %eax", "movq (%rax), %rcx", "movq 8(%rdx), %rbx",
         "movq (%rbx), %r9"]
    assert attacker_candidates(w) == ["rbx", "rsi", "rdx"]


def test_registers_defined_before_their_first_address_use_are_not_candidates():
    assert attacker_candidates(["movq $1, %rbx", "movq (%rbx), %rax"]) == []
    # rbx is derived, but the live-in rcx it is derived from IS a candidate
    assert attacker_candidates(["leaq 8(%rcx), %rbx", "movq (%rbx), %rax"]) == ["rcx"]


def test_stack_frame_and_pc_registers_are_never_candidates():
    assert attacker_candidates(["movq -8(%rbp), %rax", "movq 8(%rsp), %rcx",
                                "movq x(%rip), %rdx"]) == []


def test_sub_register_use_counts_as_the_family():
    assert attacker_candidates(["movb (%eax,%ecx), %dl"]) == ["rax", "rcx"]


def test_canonical_form_puts_the_attacker_register_in_r15_and_keeps_dataflow():
    w = ["movzbl (%rbx), %eax", "movq %r15, %rbx", "movb $1, (%r14,%rax)"]
    assert to_attacker_canonical(w, "rbx") == \
        ["movzbl (%r15), %eax", "movq %rbx, %r15", "movb $1, (%r14,%rax)"]
    assert to_attacker_canonical(w, "r15") == w


def test_find_returns_the_first_candidate_the_oracle_confirms():
    w = ["movq (%rbx), %rax", "movq (%rsi), %rcx", "movq (%rcx), %rdx"]
    asked = []

    def leaks(window, reg):
        asked.append(reg)
        return reg == "rsi"

    assert find_attacker_register(w, leaks) == "rsi"
    assert asked == ["rbx", "rsi"]
    assert find_attacker_register(w, lambda *_: False) is None


# ---- attacker-controlled memory cells (-O0 code keeps the index on the stack)
def test_frame_and_global_cells_read_before_written_are_candidates_after_registers():
    w = ["movq -8(%rbp), %rax", "movq %rcx, -16(%rbp)", "movq -16(%rbp), %rdx",
         "movl idx(%rip), %esi", "movzbl (%rbx,%rax), %edi"]
    assert attacker_candidates(w, cells=True) == \
        ["rbx", "mem:-8(%rbp)", "mem:idx(%rip)"]
    assert attacker_candidates(w) == ["rbx"]


def test_cell_candidate_becomes_an_explicit_spill_of_r15_into_that_cell():
    w = ["movq -8(%rbp), %rax", "movq %r15, %rcx", "movzbl (%rbx,%rax), %edx"]
    out = to_attacker_canonical(w, "mem:-8(%rbp)")
    assert out[0] == "movq %r15, -8(%rbp)"
    assert out[1] == "movq -8(%rbp), %rax"
    assert "r15" not in out[2]            # the window's own r15 was renamed away
    assert out[3] == "movzbl (%rbx,%rax), %edx"
