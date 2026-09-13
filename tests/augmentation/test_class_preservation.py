"""
Paper claim: return-based and indirect-branch gadget classes are never
modified by forward-branch-specific transforms.

Formal statement: for any sequence S that contains a `ret`, `br`, `blr`,
`retq`, or indirect `jmp *` / `call *`, the following transforms must return
S unchanged:
  - flip_branch_polarity
  - strip_housekeeping
  - insert_barrier_counterfactual (label must NOT become BENIGN)

For forward-branch classes (SPECTRE_V1, V4, L1TF, MDS), the speculation
trigger (conditional branch + dependent load) must survive every transform.
"""

import sys
import re
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent.parent.parent / "scripts"))

import random
import pytest
from augment_asm_windows import (
    flip_branch_polarity,
    strip_housekeeping,
    insert_barrier_counterfactual,
    rename_registers,
    insert_nops,
    swap_locally,
    perturb_immediates,
    substitute_equivalent,
    stride_synonym_swap,
    ARM64_COND_BRANCH_ANY,
    X86_BRANCH_COND,
)
from attack_sequences import (
    RETURN_BASED_CLASSES,
    FORWARD_BRANCH_CLASSES,
    SPECTRE_V1_ARM,
    SPECTRE_V1_X86,
    L1TF_X86,
    MDS_X86,
    RETBLEED_X86,
    RETBLEED_ARM,
    INCEPTION_X86,
    INCEPTION_ARM,
    BHI_ARM,
    BHI_X86,
)

_INDIRECT_TRIGGER_RE = re.compile(
    r'\b(ret|retq|blr|br)\b|(\bjmp\s*\*|\bcall\s*\*)', re.IGNORECASE
)


def _has_indirect_trigger(seq):
    return any(_INDIRECT_TRIGGER_RE.search(l) for l in seq)


def _has_conditional_branch(seq):
    return any(ARM64_COND_BRANCH_ANY.search(l) or X86_BRANCH_COND.search(l) for l in seq)


# ---------------------------------------------------------------------------
# 1. flip_branch_polarity refuses return-based gadgets
# ---------------------------------------------------------------------------

@pytest.mark.parametrize("name,seq", RETURN_BASED_CLASSES)
def test_flip_branch_polarity_leaves_return_based_untouched(name, seq):
    """flip_branch_polarity must return the original sequence unchanged for
    RETBLEED / INCEPTION / BHI gadgets (all contain ret/br/blr)."""
    is_x86 = any('%' in l for l in seq)
    out = flip_branch_polarity(seq, is_x86=is_x86)
    assert out == seq, (
        f"{name}: flip_branch_polarity modified a return-based gadget.\n"
        f"Input:  {seq}\nOutput: {out}"
    )


def test_flip_branch_polarity_refuses_indirect_jmp():
    """flip_branch_polarity must refuse 'jmp *%rax' (Spectre V2 / INCEPTION-style)."""
    seq = [
        "cmpq $0, %rax",
        "jne .Lcheck",
        "jmpq *%rdx",         # indirect jump — return-based guard must fire
    ]
    out = flip_branch_polarity(seq, is_x86=True)
    assert out == seq, (
        f"flip_branch_polarity modified a sequence with indirect jmp: {out}"
    )


def test_flip_branch_polarity_refuses_indirect_call():
    """flip_branch_polarity must refuse 'callq *%rax'."""
    seq = [
        "cmpq $0, %rax",
        "jne .Lcheck",
        "callq *%rdx",
    ]
    out = flip_branch_polarity(seq, is_x86=True)
    assert out == seq, (
        f"flip_branch_polarity modified a sequence with indirect callq: {out}"
    )


# ---------------------------------------------------------------------------
# 2. flip_branch_polarity only flips the FIRST conditional branch
# ---------------------------------------------------------------------------

def test_flip_branch_polarity_only_first_branch():
    """Only the first conditional branch is flipped; subsequent ones unchanged."""
    seq = [
        "cmpq %rsi, %rdi",
        "jge .Lsafe",        # <- FIRST branch, should be flipped to jl
        "movq (%rcx), %rax",
        "cmpq $0, %rax",
        "je .Ldone",         # <- SECOND branch, must be unchanged
    ]
    out = flip_branch_polarity(seq, is_x86=True)
    # First branch flipped
    assert "jl" in out[1] or "jnge" in out[1], (
        f"First branch not flipped: {out[1]}"
    )
    # Second branch unchanged
    assert "je" in out[4], (
        f"Second branch was unexpectedly modified: {out[4]}"
    )


@pytest.mark.parametrize("orig,expected_inv", [
    ("b.lt", "b.ge"),
    ("b.ge", "b.lt"),
    ("b.eq", "b.ne"),
    ("cbz",  "cbnz"),
    ("cbnz", "cbz"),
    ("tbz",  "tbnz"),
    ("tbnz", "tbz"),
    ("jge",  "jl"),
    ("jne",  "je"),
    ("jl",   "jge"),
    ("jbe",  "ja"),
    ("ja",   "jbe"),
])
def test_flip_branch_polarity_correct_inverse(orig, expected_inv):
    """Each conditional branch opcode maps to its correct logical inverse."""
    is_x86 = orig.startswith("j")
    seq = [f"{orig} .Ltarget", "nop"]
    out = flip_branch_polarity(seq, is_x86=is_x86)
    assert any(expected_inv in l for l in out), (
        f"Expected {orig} -> {expected_inv}, got: {out}"
    )


# ---------------------------------------------------------------------------
# 3. strip_housekeeping refuses return-based gadgets
# ---------------------------------------------------------------------------

@pytest.mark.parametrize("name,seq", RETURN_BASED_CLASSES)
def test_strip_housekeeping_leaves_return_based_untouched(name, seq):
    """strip_housekeeping must not touch RETBLEED/INCEPTION/BHI windows."""
    out = strip_housekeeping(seq)
    assert out == seq, (
        f"{name}: strip_housekeeping modified a return-based gadget.\n"
        f"Input:  {seq}\nOutput: {out}"
    )


def test_strip_housekeeping_preserves_conditional_branch():
    """Stripped result must still contain a conditional branch."""
    seq = [
        "pushq %rbp",
        "movq %rsp, %rbp",
        "cmpq %rsi, %rdi",
        "jge .Lsafe",
        "movq (%rcx,%rdi,8), %rax",
        "popq %rbp",           # epilogue — allowed to strip
    ]
    out = strip_housekeeping(seq)
    assert _has_conditional_branch(out), (
        f"strip_housekeeping removed the conditional branch: {out}"
    )


def test_strip_housekeeping_minimum_length():
    """Result must have at least 5 instructions."""
    seq = [
        "pushq %rbp",          # housekeeping
        "cmpq %rsi, %rdi",
        "jge .Lsafe",
        "movq (%rcx), %rax",
        "movq (%rdx,%rax,1), %rbx",
        "popq %rbp",           # housekeeping
    ]
    out = strip_housekeeping(seq)
    assert len(out) >= 5, (
        f"strip_housekeeping produced sequence shorter than 5: {out}"
    )


def test_strip_housekeeping_max_50pct_removal():
    """Cannot remove more than half the window."""
    # Pad with housekeeping to trigger the 50% guard
    seq = [
        "pushq %rbp",
        "movq %rsp, %rbp",
        "cmpq %rsi, %rdi",
        "jge .Lsafe",
        "movq (%rcx), %rax",
        "popq %rbp",
        "popq %rbx",
        "popq %r12",
        "popq %r13",
        "popq %r14",
    ]
    out = strip_housekeeping(seq)
    assert len(out) >= len(seq) // 2, (
        f"strip_housekeeping removed more than 50% of window: {len(out)}/{len(seq)}"
    )


# ---------------------------------------------------------------------------
# 4. insert_barrier_counterfactual: label flip only for clean single-gadget
# ---------------------------------------------------------------------------

def test_barrier_cf_full_mitigation_requires_single_chain():
    """is_full_mitigation=True only when exactly 1 branch + 1 post-branch load."""
    # Clean single-gadget: 1 branch, 1 subsequent load
    seq_clean = [
        "cmpq %rsi, %rdi",
        "jge .Lsafe",
        "movq (%rcx,%rdi,8), %rax",   # exactly one load after branch
    ]
    _, is_full = insert_barrier_counterfactual(seq_clean, is_x86=True)
    assert is_full, "Single branch + single load should be fully mitigated"


def test_barrier_cf_partial_mitigation_for_multiple_loads():
    """Multiple post-branch loads → partial mitigation (label must NOT flip)."""
    seq = [
        "cmpq %rsi, %rdi",
        "jge .Lsafe",
        "movq (%rcx,%rdi,8), %rax",
        "movq (%rdx,%rax,8), %rbx",   # second load — gadget still partially live
    ]
    _, is_full = insert_barrier_counterfactual(seq, is_x86=True)
    assert not is_full, "Multiple loads must not yield full mitigation label flip"


def test_barrier_cf_partial_mitigation_for_multiple_branches():
    """Multiple branches → partial mitigation."""
    seq = [
        "cmpq %rsi, %rdi",
        "jge .Lsafe",
        "movq (%rcx), %rax",
        "cmpq $0, %rax",
        "je .Ldone",
        "movq (%rdx,%rax,8), %rbx",
    ]
    _, is_full = insert_barrier_counterfactual(seq, is_x86=True)
    assert not is_full, "Multiple branches must not yield full mitigation"


def test_barrier_cf_fence_inserted_before_first_load():
    """lfence (x86) appears immediately before the first post-branch load."""
    seq = [
        "cmpq %rsi, %rdi",
        "jge .Lsafe",
        "movq (%rcx,%rdi,8), %rax",
    ]
    out, _ = insert_barrier_counterfactual(seq, is_x86=True)
    load_idx = next(i for i, l in enumerate(out) if "movq" in l and "(" in l)
    assert load_idx > 0 and "lfence" in out[load_idx - 1], (
        f"lfence not immediately before load: {out}"
    )


def test_barrier_cf_arm64_uses_dsb():
    """ARM64 barrier counterfactual inserts 'dsb sy', not 'lfence'."""
    seq = [
        "cmp x1, x2",
        "b.ge .Lsafe",
        "ldr x0, [x3, x1, lsl #3]",
    ]
    out, _ = insert_barrier_counterfactual(seq, is_x86=False)
    assert any("dsb" in l for l in out), (
        f"ARM64 barrier CF should insert dsb, got: {out}"
    )


# ---------------------------------------------------------------------------
# 5. All transforms preserve the speculation trigger in forward-branch classes
# ---------------------------------------------------------------------------

_FORWARD_BRANCH_TRIGGERS = {
    "cmp":   lambda seq: any("cmp" in l.lower() or "test" in l.lower() for l in seq),
    "jcc":   _has_conditional_branch,
    "load":  lambda seq: any(
                "ldr" in l.lower() or
                ("mov" in l.lower() and "(" in l)
                for l in seq
             ),
}

@pytest.mark.parametrize("name,seq", FORWARD_BRANCH_CLASSES)
def test_rename_preserves_conditional_branch(name, seq):
    """rename_registers keeps conditional branches in forward-branch sequences."""
    random.seed(0)
    out = rename_registers(seq)
    assert _has_conditional_branch(out), (
        f"{name}: rename_registers removed the conditional branch: {out}"
    )


@pytest.mark.parametrize("name,seq", FORWARD_BRANCH_CLASSES)
def test_perturb_preserves_conditional_branch(name, seq):
    """perturb_immediates keeps conditional branches in forward-branch sequences."""
    is_x86 = any('%' in l for l in seq)
    random.seed(0)
    out = perturb_immediates(seq, is_x86=is_x86)
    assert _has_conditional_branch(out), (
        f"{name}: perturb_immediates removed the conditional branch: {out}"
    )


@pytest.mark.parametrize("name,seq", FORWARD_BRANCH_CLASSES)
def test_swap_locally_preserves_length(name, seq):
    """swap_locally never changes the number of instructions."""
    is_x86 = any('%' in l for l in seq)
    random.seed(0)
    out = swap_locally(seq)
    assert len(out) == len(seq), (
        f"{name}: swap_locally changed sequence length: {len(seq)} -> {len(out)}"
    )


@pytest.mark.parametrize("name,seq", FORWARD_BRANCH_CLASSES)
def test_stride_synonym_swap_preserves_all_opcodes(name, seq):
    """stride_synonym_swap changes only immediate tokens, no opcodes removed."""
    out = stride_synonym_swap(seq)
    def get_opcodes(s):
        result = []
        for l in s:
            stripped = l.strip()
            if stripped and not stripped.startswith('.') and not stripped.endswith(':'):
                parts = stripped.split()
                if parts:
                    result.append(parts[0].rstrip(':').lower())
        return result
    assert get_opcodes(out) == get_opcodes(seq), (
        f"{name}: stride_synonym_swap changed opcodes: {get_opcodes(seq)} -> {get_opcodes(out)}"
    )
