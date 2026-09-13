"""Tests for spec/ir_defuse.py (Task 4.1, W4): disassembler-grounded def-use.

Exactly the plan's required cases (2026-09-07-specexec-research-grade-plan.md,
Task 4.1, Step 1) plus one ARM64 and one RISC-V case, per the task brief.
"""
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "spec"))

from ir_defuse import defuse_for_sequence  # noqa: E402


def test_x86_rmw_arithmetic_dest_is_both_def_and_use():
    """`add %rax, %rbx` is AT&T 2-address: rbx = rbx + rax. rbx is written
    AND read (read-modify-write); rax is read only."""
    defs, uses = defuse_for_sequence(["add %rax, %rbx"], "x86_64")[0]
    assert "rbx" in defs
    assert "rbx" in uses
    assert "rax" in uses


def test_x86_sub_register_canonicalizes_to_64_bit_root():
    """`mov %al, %bl` writes the 8-bit `bl` (canonical `rbx`), reads `al`
    (canonical `rax`). The old regex heuristic ("first reg found = dest")
    got this backwards because %al appears first in the text but is the
    SOURCE operand in AT&T syntax."""
    defs, uses = defuse_for_sequence(["mov %al, %bl"], "x86_64")[0]
    assert "rbx" in defs
    assert "rax" in uses
    assert "rbx" not in uses


def test_arm64_load_dest_defined_address_regs_used():
    defs, uses = defuse_for_sequence(["ldr x0, [x1, x2]"], "arm64")[0]
    assert "x0" in defs
    assert "x1" in uses
    assert "x2" in uses
    assert "x0" not in uses


def test_riscv_three_address_add_is_not_rmw():
    """RISC-V (and ARM64) arithmetic is 3-address, so unlike x86 the
    destination does not also appear as a source."""
    defs, uses = defuse_for_sequence(["add t0, t1, t2"], "riscv64")[0]
    assert "t0" in defs
    assert "t1" in uses
    assert "t2" in uses
    assert "t0" not in uses


def test_x86_store_is_all_source_no_register_def():
    """A store's register def is the memory location, not a register: both
    the value and the address registers are uses."""
    defs, uses = defuse_for_sequence(["mov %rax, (%rbx)"], "x86_64")[0]
    assert defs == set()
    assert "rax" in uses
    assert "rbx" in uses


def test_x86_compare_is_all_source_no_def():
    defs, uses = defuse_for_sequence(["cmp %rdx, %rsi"], "x86_64")[0]
    assert defs == set()
    assert uses == {"rdx", "rsi"}


def test_x86_load_address_regs_used_dest_defined():
    """No LOAD-specific code is needed: operand-order splitting alone keeps
    the address registers (in the non-dest operand) out of defs."""
    defs, uses = defuse_for_sequence(["mov (%rax,%rbx,8), %rcx"], "x86_64")[0]
    assert defs == {"rcx"}
    assert uses == {"rax", "rbx"}


def test_x86_single_operand_rmw_neg_is_both_def_and_use():
    defs, uses = defuse_for_sequence(["neg %rax"], "x86_64")[0]
    assert defs == {"rax"}
    assert uses == {"rax"}


def test_x86_push_pop_stack_direction():
    push_defs, push_uses = defuse_for_sequence(["push %rax"], "x86_64")[0]
    assert push_defs == set()
    assert "rax" in push_uses

    pop_defs, pop_uses = defuse_for_sequence(["pop %rbx"], "x86_64")[0]
    assert pop_defs == {"rbx"}
    assert pop_uses == set()


def test_labels_and_directives_get_empty_entries_index_aligned():
    seq = [".globl foo", "foo:", "mov %rax, %rbx", "ret"]
    result = defuse_for_sequence(seq, "x86_64")
    assert len(result) == len(seq)
    assert result[0] == (set(), set())
    assert result[1] == (set(), set())
    assert result[2][0] == {"rbx"}


def test_import_has_no_hard_capstone_dependency():
    """The module must import and run under the base interpreter, which has
    no capstone installed — this is exercised by every test above actually
    running, but assert the optional-import flag directly too."""
    import ir_defuse

    assert hasattr(ir_defuse, "_HAVE_CAPSTONE")
    if not ir_defuse._HAVE_CAPSTONE:
        try:
            ir_defuse.defuse_from_capstone_bytes(b"\x00", "x86_64")
        except RuntimeError:
            pass
        else:
            raise AssertionError("expected RuntimeError without capstone")
