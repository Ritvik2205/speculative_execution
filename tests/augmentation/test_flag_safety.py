"""
Paper claim: x86 idiom substitutions are only applied when the changed
flag side-effect cannot be observed by a downstream flag consumer before
a flag-clobbering instruction intervenes.

Formal statement: for any instruction I at index idx in seq, if
substitute_equivalent would replace I with an idiom of different flag
behaviour, then there must be no j in (idx+1..len) such that seq[j] is
a flag consumer (jcc/setcc/cmovcc) and seq[k] is not a flag clobber
for all k in (idx+1..j).

Also verifies:
- ARM substitutions are always applied (flag-neutral rules)
- Barrier variants are only upgraded, never downgraded
"""

import sys
import re
import random
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent.parent.parent / "scripts"))

import pytest
from augment_asm_windows import (
    substitute_equivalent,
    _x86_subst_is_flag_safe,
    _X86_FLAG_CONSUMER,
    _X86_FLAG_CLOBBER,
    swap_barrier_variants,
    _ARM_BARRIER_SYNONYMS,
    _X86_BARRIER_SYNONYMS,
)

# ---------------------------------------------------------------------------
# 1. x86 flag-safe substitution guard
# ---------------------------------------------------------------------------

def test_x86_subst_blocked_when_consumer_follows():
    """
    xor %rax, %rax (writes ZF=1, CF=0) must NOT be rewritten to
    mov $0, %rax when a jcc reads the flags before a clobber.
    """
    seq = [
        "xor %rax, %rax",    # idx=0 — writes ZF; candidate for substitute
        "je .Lzero",         # idx=1 — reads ZF — consumer sees the flag!
        "movq $1, %rbx",
    ]
    assert not _x86_subst_is_flag_safe(seq, 0), (
        "Flag-safety check should have detected the downstream je consumer"
    )
    out = substitute_equivalent(seq, is_x86=True)
    # The xor must remain (substitution blocked)
    assert "xor" in out[0].lower(), (
        f"substitute_equivalent replaced xor despite downstream je: {out}"
    )


def test_x86_subst_blocked_when_setcc_follows():
    """Substitution must be blocked when a setcc consumer appears."""
    seq = [
        "xor %rax, %rax",    # writes flags
        "sete %bl",          # reads ZF — consumer
    ]
    assert not _x86_subst_is_flag_safe(seq, 0)
    out = substitute_equivalent(seq, is_x86=True)
    assert "xor" in out[0].lower(), (
        f"substitute_equivalent replaced xor despite downstream sete: {out}"
    )


def test_x86_subst_blocked_when_cmovcc_follows():
    """Substitution must be blocked when a cmovcc consumer appears."""
    seq = [
        "xor %rax, %rax",
        "cmovne %rbx, %rcx",
    ]
    assert not _x86_subst_is_flag_safe(seq, 0)


def test_x86_subst_allowed_when_clobber_intervenes():
    """
    Substitution is safe when a flag-clobbering instruction appears
    BEFORE any flag consumer.  Uses bare 'add' (no size suffix) to
    confirm the regex matches; see also test_x86_flag_clobber_size_suffixes.
    """
    seq = [
        "xor %rax, %rax",    # idx=0 — candidate
        "add $1, %rdx",      # idx=1 — clobbers flags
        "je .Lzero",         # idx=2 — reads flags from add, not from xor
    ]
    assert _x86_subst_is_flag_safe(seq, 0), (
        "Flag should be safe because clobber intervenes before consumer"
    )


def test_x86_flag_clobber_size_suffixes():
    """Size-suffixed mnemonics (addq, subl, cmpw, testb) must also match
    _X86_FLAG_CLOBBER so that flag-safety detection is not bypassed."""
    from augment_asm_windows import _X86_FLAG_CLOBBER
    for mnemonic in ("addq", "subl", "cmpw", "testb", "xorq", "andl"):
        line = f"{mnemonic} $1, %rax"
        assert _X86_FLAG_CLOBBER.search(line), (
            f"_X86_FLAG_CLOBBER failed to match size-suffixed mnemonic: {mnemonic}"
        )


def test_x86_subst_allowed_when_no_consumer():
    """Substitution is safe when there are no downstream flag consumers."""
    seq = [
        "xor %rax, %rax",
        "movq %rax, %rbx",   # no flag read
        "nop",
    ]
    assert _x86_subst_is_flag_safe(seq, 0)
    out = substitute_equivalent(seq, is_x86=True)
    # Either xor or mov $0 is acceptable
    assert "xor" in out[0].lower() or ("mov" in out[0].lower() and "$0" in out[0]), (
        f"Unexpected substitution result when no consumer: {out}"
    )


def test_x86_subst_at_end_of_sequence_is_safe():
    """Substitution at the last instruction is always safe (no downstream)."""
    seq = ["nop", "xor %rax, %rax"]
    assert _x86_subst_is_flag_safe(seq, 1)


# ---------------------------------------------------------------------------
# 2. ARM substitutions are flag-neutral (always safe)
# ---------------------------------------------------------------------------

def test_arm_zero_idiom_forward():
    """mov xN, #0 -> eor xN, xN, xN on ARM64."""
    seq = ["mov x0, #0", "add x1, x0, x2"]
    out = substitute_equivalent(seq, is_x86=False)
    # Either original or eor form is acceptable
    assert "eor" in out[0].lower() or "mov" in out[0].lower(), (
        f"Unexpected ARM substitution: {out[0]}"
    )
    if "eor" in out[0].lower():
        # Must be self-XOR: eor xN, xN, xN
        assert re.search(r'eor\s+(x\d+),\s*\1,\s*\1', out[0], re.I), (
            f"ARM eor zero-idiom is not self-XOR: {out[0]}"
        )


def test_arm_zero_idiom_backward():
    """eor xN, xN, xN -> mov xN, #0 on ARM64."""
    seq = ["eor x3, x3, x3", "add x4, x3, x5"]
    out = substitute_equivalent(seq, is_x86=False)
    assert "mov" in out[0].lower() or "eor" in out[0].lower(), (
        f"Unexpected ARM backward substitution: {out[0]}"
    )


def test_arm_add_zero_idiom():
    """add xN, xN, #0 -> mov xN, xN on ARM64."""
    seq = ["add x7, x7, #0", "ldr x0, [x7]"]
    out = substitute_equivalent(seq, is_x86=False)
    assert "mov" in out[0].lower() or "add" in out[0].lower(), (
        f"Unexpected ARM add-zero substitution: {out[0]}"
    )


# ---------------------------------------------------------------------------
# 3. swap_barrier_variants: only upgrades, never downgrades
# ---------------------------------------------------------------------------

# Strength ordering for barriers: stronger is safer (stops more speculation)
_X86_STRENGTH = {"lfence": 1, "mfence": 2}
_ARM_STRENGTH = {
    "dsb ishst": 1,
    "dsb ish":   2,
    "dsb sy":    3,
    "dmb ish":   2,
    "dmb sy":    3,
    "isb":       1,
    "isb sy":    1,
}


def _barrier_strength_x86(seq):
    for l in seq:
        s = l.strip().lower()
        if s in _X86_STRENGTH:
            return _X86_STRENGTH[s]
    return None


def _barrier_strength_arm(seq):
    for l in seq:
        s = l.strip().lower()
        for name, strength in _ARM_STRENGTH.items():
            if s == name:
                return strength, name
    return None, None


def test_x86_barrier_only_upgrades():
    """lfence can become mfence, but never vice versa."""
    # lfence -> allowed to become mfence (stronger)
    seq_lfence = ["lfence"]
    random.seed(0)
    for seed in range(30):
        random.seed(seed)
        out = swap_barrier_variants(seq_lfence, is_x86=True)
        out_barrier = out[0].strip().lower()
        assert out_barrier in ("lfence", "mfence"), (
            f"Unexpected x86 barrier after swap: {out_barrier}"
        )
        # Strength must be >= original
        assert _X86_STRENGTH.get(out_barrier, 0) >= _X86_STRENGTH["lfence"], (
            f"Barrier was downgraded from lfence to {out_barrier}"
        )

    # mfence -> must stay mfence (already strongest)
    seq_mfence = ["mfence"]
    for seed in range(30):
        random.seed(seed)
        out = swap_barrier_variants(seq_mfence, is_x86=True)
        assert out[0].strip().lower() == "mfence", (
            f"mfence was downgraded to {out[0]}: this weakens the mitigation"
        )


@pytest.mark.parametrize("original", [
    "dsb sy",
    "dsb ish",
    "dsb ishst",
    "dmb sy",
    "dmb ish",
    "isb",
])
def test_arm_barrier_never_downgrades(original):
    """ARM barrier swap must never replace barrier with a weaker one."""
    seq = [original]
    in_strength = _ARM_STRENGTH.get(original, 0)
    random.seed(0)
    for seed in range(30):
        random.seed(seed)
        out = swap_barrier_variants(seq, is_x86=False)
        out_barrier = out[0].strip().lower()
        out_strength = _ARM_STRENGTH.get(out_barrier, 0)
        assert out_strength >= in_strength, (
            f"ARM barrier downgraded: {original} (strength {in_strength}) -> "
            f"{out_barrier} (strength {out_strength})"
        )


def test_arm_lfence_equivalent_only_strengthens():
    """dsb ish can become dsb sy (stronger) but not dsb ishst (weaker)."""
    seq = ["dsb ish"]
    seen_upgrades = False
    seen_downgrades = False
    for seed in range(50):
        random.seed(seed)
        out = swap_barrier_variants(seq, is_x86=False)
        result = out[0].strip().lower()
        if result == "dsb sy":
            seen_upgrades = True
        if result == "dsb ishst":
            seen_downgrades = True

    assert not seen_downgrades, "dsb ish was downgraded to dsb ishst"
    # Upgrades are expected (not guaranteed but should occur in 50 trials)
    # Don't assert seen_upgrades — the random choice might always pick same variant


def test_barrier_swap_never_removes_barrier():
    """swap_barrier_variants never removes a barrier entirely."""
    for barrier in ["lfence", "mfence", "dsb sy", "dsb ish", "dmb ish", "isb"]:
        is_x86 = barrier in ("lfence", "mfence")
        seq = [barrier]
        random.seed(0)
        for seed in range(20):
            random.seed(seed)
            out = swap_barrier_variants(seq, is_x86=is_x86)
            assert len(out) == 1, f"swap_barrier_variants removed or duplicated barrier '{barrier}'"
            assert out[0].strip(), f"swap_barrier_variants produced empty line for '{barrier}'"
