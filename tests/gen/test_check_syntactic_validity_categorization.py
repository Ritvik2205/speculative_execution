"""Unit tests for gen/check_syntactic_validity.py's categorize_failure().

Pure pattern-matching logic, no llvm-mc/Docker dependency -- this function
only runs on instruction text llvm-mc has ALREADY rejected (see the real
2000-sample run in Task 2), so these tests verify the categorization LOGIC
against known-shape strings, not whether llvm-mc would actually reject them."""
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent / "gen"))

from check_syntactic_validity import categorize_failure  # noqa: E402


# The 4 real failing instructions documented in gen/ORACLE_VALIDATION_FINDINGS.md
def test_unresolved_fn_placeholder_leaq():
    assert categorize_failure("leaq\t<fn>, %r9") == "unresolved_placeholder"


def test_unresolved_fn_placeholder_callq():
    assert categorize_failure("callq\t<fn>") == "unresolved_placeholder"


def test_local_label_used_as_source_operand():
    assert categorize_failure("movzbl\t.L0, %rdx") == "unresolved_placeholder"


def test_local_label_used_as_dest_operand():
    assert categorize_failure("movb\t.L0, (%r13)") == "unresolved_placeholder"


def test_immediate_as_destination():
    assert categorize_failure("movl\t(%r13), $0") == "operand_type_violation"


def test_ret_with_immediate_is_not_flagged_as_operand_violation():
    # ret $imm16 is legitimate AT&T syntax (near-return with stack cleanup) --
    # must not be miscategorized just because $N appears in the last operand
    # position. Whatever the REAL reason llvm-mc rejected "ret $4096" is (if
    # it did), it isn't "immediate in a destination slot" -- ret has no
    # destination operand at all.
    assert categorize_failure("ret\t$4096") == "other"
    assert categorize_failure("retq\t$4096") == "other"


def test_legitimate_branch_to_local_label_not_flagged():
    # a bare jump/call to a .L-prefixed target is completely normal and must
    # never be categorized as an unresolved placeholder.
    assert categorize_failure("jne\t.L0") == "other"
    assert categorize_failure("je\t.L3") == "other"
    assert categorize_failure("callq\t.L1") == "other"


def test_valid_looking_instruction_falls_to_other():
    # this function is only ever called on instructions llvm-mc already
    # rejected, but as a belt-and-suspenders check: a normal-looking
    # register-register move must not land in either failure-specific bucket.
    assert categorize_failure("movq\t%rax, %rbx") == "other"


def test_indexed_memory_operand_with_immediate_source_not_flagged():
    # the immediate is in the SOURCE position here, not the destination --
    # must not trigger operand_type_violation.
    assert categorize_failure("movq\t$1, (%rbx,%rcx,1)") == "other"
