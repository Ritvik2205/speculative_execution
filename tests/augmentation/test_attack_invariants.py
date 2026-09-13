"""
Paper claim: critical cache-timing constants are never perturbed.

Formal statement: for all v in _CRITICAL_IMMEDIATES, for any sequence S
containing the literal "$v" or "#v", perturb_immediates(S) also contains
that same literal unchanged.

Also verifies:
- perturb_immediates never produces a NEW value that lands in _CRITICAL_IMMEDIATES
- non-critical constants DO change across multiple invocations (probabilistic,
  but 100 trials should see at least one change)
"""

import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent.parent.parent / "scripts"))

import random
import pytest
from augment_asm_windows import (
    perturb_immediates,
    stride_synonym_swap,
    _CRITICAL_IMMEDIATES,
    _STRIDE_SYNONYMS,
    insert_nops,
    ARM64_COND_BRANCH_ANY,
    X86_BRANCH_COND,
    ARM64_LOAD,
    X86_LOAD,
)
from attack_sequences import SPECTRE_V1_X86, SPECTRE_V1_ARM, L1TF_X86, MDS_X86


# ---------------------------------------------------------------------------
# 1. Critical immediates are preserved by perturb_immediates
# ---------------------------------------------------------------------------

CRITICAL_X86 = [f"${v}" for v in _CRITICAL_IMMEDIATES if v >= 0] + \
               [f"$0x{v:x}" for v in _CRITICAL_IMMEDIATES if v > 0 and v != int(v)]

@pytest.mark.parametrize("val", sorted(_CRITICAL_IMMEDIATES))
def test_critical_immediate_preserved_x86(val):
    """x86 critical constant survives perturb_immediates unchanged."""
    if val < 0:
        seq = [f"subq ${abs(val)}, %rax"]
    elif val == 0:
        seq = ["movq $0, %rax"]
    else:
        seq = [f"movq ${val}, %rax"]
    random.seed(0)
    for _ in range(50):
        out = perturb_immediates(seq, is_x86=True)
        token = f"${abs(val)}" if val >= 0 else f"${val}"
        assert any(f"${val}" in l or f"${abs(val)}" in l for l in out), (
            f"Critical immediate {val} was changed by perturb_immediates: {out}"
        )


@pytest.mark.parametrize("val", sorted(v for v in _CRITICAL_IMMEDIATES if v > 0))
def test_critical_immediate_preserved_arm64(val):
    """ARM64 critical constant survives perturb_immediates unchanged."""
    seq = [f"mov x0, #{val}"]
    random.seed(0)
    for _ in range(50):
        out = perturb_immediates(seq, is_x86=False)
        assert any(f"#{val}" in l for l in out), (
            f"Critical immediate {val} was changed by perturb_immediates: {out}"
        )


def test_perturb_never_introduces_critical_constant():
    """perturb_immediates cannot accidentally create a critical constant."""
    # Use a non-critical value that neighbors a critical one (e.g., 65 next to 64)
    random.seed(42)
    seq = ["movq $65, %rax"]
    for _ in range(200):
        out = perturb_immediates(seq, is_x86=True)
        for line in out:
            m = re.search(r'\$(-?\d+)', line)
            if m:
                produced = int(m.group(1))
                assert produced not in _CRITICAL_IMMEDIATES, (
                    f"perturb_immediates produced critical constant {produced} from non-critical input"
                )


def test_non_critical_constant_changes():
    """Non-critical constants DO get perturbed (probabilistic; 100 trials)."""
    # 97 is non-critical and far from all critical values
    seq = ["movq $97, %rax"]
    changed = False
    for seed in range(100):
        random.seed(seed)
        out = perturb_immediates(seq, is_x86=True)
        if out != seq:
            changed = True
            break
    assert changed, "Non-critical constant was never perturbed over 100 seeds"


# ---------------------------------------------------------------------------
# 2. Page-stride and cache-line constants protected in L1TF/MDS sequences
# ---------------------------------------------------------------------------

def test_l1tf_page_stride_preserved():
    """L1TF shlq $12 shift amount is not in _CRITICAL_IMMEDIATES (12 is not),
    but the page size 4096 = 2^12 IS critical.  Verify 4096 survives."""
    # The shift amount $12 itself is not critical (12 is not in the set).
    # The page size 4096 (0x1000) IS critical and should be protected.
    seq = ["movq $4096, %rbx", "movq (%rsi,%rax,1), %rbx"]
    random.seed(0)
    for _ in range(50):
        out = perturb_immediates(seq, is_x86=True)
        assert any("$4096" in l or "$0x1000" in l for l in out), (
            f"L1TF page-size constant 4096 was modified: {out}"
        )


def test_mds_cache_line_stride_preserved():
    """MDS shlq $6 (cache-line stride 64 = 2^6) is NOT in _CRITICAL_IMMEDIATES.
    Value 6 itself is not critical; 64 is. Verify 64 is preserved when present."""
    seq = ["shlq $64, %rax", "movq (%rdx,%rax), %rbx"]
    random.seed(0)
    for _ in range(50):
        out = perturb_immediates(seq, is_x86=True)
        assert any("$64" in l for l in out), (
            f"Cache-line constant 64 was modified: {out}"
        )


def test_probe_array_length_255_preserved():
    """Secret-byte iteration bound (255 / 0xff) is protected."""
    seq = ["cmpq $255, %rcx", "jge .Ldone"]
    random.seed(0)
    for _ in range(50):
        out = perturb_immediates(seq, is_x86=True)
        assert any("$255" in l or "$0xff" in l for l in out), (
            f"Secret byte bound 255 was modified: {out}"
        )


# ---------------------------------------------------------------------------
# 3. stride_synonym_swap preserves VALUE (only changes hex/decimal form)
# ---------------------------------------------------------------------------

@pytest.mark.parametrize("decimal,hex_form", [
    ("4096", "0x1000"),
    ("64",   "0x40"),
    ("256",  "0x100"),
    ("255",  "0xff"),
])
def test_stride_synonym_value_preserved(decimal, hex_form):
    """stride_synonym_swap changes notation but preserves the numeric value."""
    seq_dec = [f"movq ${decimal}, %rax"]
    seq_hex = [f"movq ${hex_form}, %rax"]

    random.seed(0)
    out_d = stride_synonym_swap(seq_dec)
    out_h = stride_synonym_swap(seq_hex)

    # Either the value stayed or was converted to the other form — both are correct
    for out, original_form, alt_form in [
        (out_d, decimal, hex_form),
        (out_h, hex_form, decimal),
    ]:
        val_present = any(original_form in l or alt_form in l for l in out)
        assert val_present, (
            f"stride_synonym_swap lost value {decimal}/{hex_form}: {out}"
        )

    # Actual numeric value: parse both forms and confirm equal
    def parse(line):
        m = re.search(r'\$(0x[0-9a-fA-F]+|[0-9]+)', line)
        return int(m.group(1), 0) if m else None

    for out, expected in [(out_d, int(decimal)), (out_h, int(hex_form, 0))]:
        parsed = parse(out[0])
        if parsed is not None:
            assert parsed == expected, (
                f"stride_synonym_swap changed numeric value: expected {expected}, got {parsed}"
            )


# ---------------------------------------------------------------------------
# 4. insert_nops: critical branch window is never polluted
# ---------------------------------------------------------------------------

def _branch_positions(seq):
    return [i for i, l in enumerate(seq)
            if ARM64_COND_BRANCH_ANY.search(l) or X86_BRANCH_COND.search(l)]


def _load_positions(seq):
    return [i for i, l in enumerate(seq)
            if ARM64_LOAD.search(l) or X86_LOAD.search(l)]


def _is_nop(line):
    return line.strip().lower() == "nop"


@pytest.mark.parametrize("name,seq,is_x86", [
    ("V1_ARM",  SPECTRE_V1_ARM,  False),
    ("V1_X86",  SPECTRE_V1_X86,  True),
])
def test_nop_not_inserted_at_branch(name, seq, is_x86):
    """NOPs must not appear immediately before or after the conditional branch."""
    guard = 2
    random.seed(0)
    for _ in range(200):
        out = insert_nops(seq, prob=0.5, guard=guard)

        # Reconstruct original→augmented index mapping
        orig_idx = 0
        aug_positions_of_original = []
        for aug_idx, line in enumerate(out):
            if not _is_nop(line):
                aug_positions_of_original.append(aug_idx)
                orig_idx += 1

        branch_orig_indices = _branch_positions(seq)
        for b_orig in branch_orig_indices:
            b_aug = aug_positions_of_original[b_orig]
            # Check ±guard slots in the augmented sequence
            for delta in range(-guard, guard + 1):
                check = b_aug + delta
                if 0 <= check < len(out) and check != b_aug:
                    # A NOP in the critical window is a violation
                    if _is_nop(out[check]):
                        # Allow nops that were ALREADY in the original sequence
                        # (position check: find if there was a nop in the original at that distance)
                        orig_at_delta = b_orig + delta
                        if 0 <= orig_at_delta < len(seq):
                            if _is_nop(seq[orig_at_delta]):
                                continue  # original already had nop here — not our insertion
                        pytest.fail(
                            f"{name}: NOP inserted at augmented pos {check} "
                            f"(delta={delta}) relative to branch at {b_aug}.\n"
                            f"Original: {seq}\nAugmented: {out}"
                        )


def test_nop_insertion_preserves_opcodes():
    """All non-NOP instructions in the output must appear in the input."""
    seq = SPECTRE_V1_X86
    random.seed(7)
    for _ in range(50):
        out = insert_nops(seq, prob=0.3)
        non_nops = [l for l in out if not _is_nop(l)]
        assert non_nops == seq, (
            f"insert_nops changed or dropped instructions.\n"
            f"Expected non-nops: {seq}\nGot: {non_nops}"
        )
