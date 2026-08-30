"""Tests for spec/spec_features.py's opt-in `use_taint` parameter (Task 2,
SPECDISCOVER_NEW_ISA_ROADMAP).

`compute_spec_features(sequence, engine, use_taint=False)` — default OFF must
be byte-identical to the pre-existing behavior (it feeds every measurement in
the repo). `use_taint=True` additionally builds a PDG via
`SpecBackedPDGBuilder` (which runs `apply_dataflow_taint` internally) and
reads `is_secret_source` / `is_transmitter` from the tainted nodes instead of
from `engine.spec_flags_vector` alone.
"""
import sys
from pathlib import Path

import numpy as np
import pytest

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT / "v54"))

from isa_spec import load_engine  # noqa: E402
from spec_features import compute_spec_features, feature_names  # noqa: E402


def _is_instr(line):
    s = line.strip()
    return bool(s) and not s.endswith(":") and not s.startswith(".")


def _expected_off_flag_slice(sequence, engine):
    """Recompute the flag-fraction slice the way the function has always
    computed it with the taint path off: per-instruction
    `engine.spec_flags_vector`, no PDG at all. Built by calling the SpecEngine
    directly (not hardcoded), so this is a real behavioral check of the OFF
    branch, not a magic-number regression test."""
    nf = engine.num_spec_flags
    flag_h = np.zeros(nf, dtype=np.float32)
    n = 0
    for line in sequence:
        if not _is_instr(line):
            continue
        n += 1
        cat = engine.classify_opcode(line)
        mem = engine.memory_access_type(line)
        flag_h += engine.spec_flags_vector(line, cat, mem)
    return flag_h / max(n, 1)


X86_MIXED_SEQUENCE = [
    "movq (%rax,%rbx,8), %rcx",
    "shl $12, %rcx",
    "movq (%rcx), %rdx",
    "cmp %rdx, %rsi",
    "je .L1",
]

# LOAD -> SHIFT(page-scale) -> LOAD: the ISA-agnostic secret-load/probe idiom
# dataflow_taint.py is designed to catch, expressed the way RISC-V actually
# has to express it (no single-instruction indexed addressing).
RISCV_SECRET_CHAIN = [
    "ld a0, 0(t0)",
    "slli a0, a0, 12",
    "ld a1, 0(a0)",
]

# Ordinary pointer chasing (linked-list / struct-field dereference): a LOAD
# feeding another LOAD with NO shift in between. This is exactly the pattern
# the module's docstring says the first (superseded) attempt falsely fired
# on; the probe-shift gate exists specifically to keep this benign.
RISCV_BENIGN_POINTER_CHASE = [
    "ld t0, 0(a0)",
    "ld t1, 0(t0)",
    "addi t1, t1, 1",
]

RISCV_NO_MEMORY_OPS = [
    "add t0, a0, a1",
    "addi t0, t0, 4",
    "sub a2, t0, a1",
]


def test_default_off_is_byte_identical_to_explicit_off():
    engine = load_engine("x86_64.json")
    default = compute_spec_features(X86_MIXED_SEQUENCE, engine)
    explicit_off = compute_spec_features(X86_MIXED_SEQUENCE, engine, use_taint=False)
    assert np.array_equal(default, explicit_off)


def test_off_path_matches_pure_regex_flag_computation():
    """The OFF branch must still be pure per-instruction spec_flags_vector
    accumulation — no PDG, no taint — for the ENTIRE flag slice (not just the
    two taint-eligible flags), verified against a recomputation from the raw
    SpecEngine calls rather than hardcoded values."""
    engine = load_engine("x86_64.json")
    result = compute_spec_features(X86_MIXED_SEQUENCE, engine, use_taint=False)

    nc = engine.num_categories
    nf = engine.num_spec_flags
    expected_flags = _expected_off_flag_slice(X86_MIXED_SEQUENCE, engine)
    assert np.allclose(result[nc:nc + nf], expected_flags)

    # Vector length/order must be identical regardless of the flag.
    on = compute_spec_features(X86_MIXED_SEQUENCE, engine, use_taint=True)
    assert result.shape == on.shape
    assert len(feature_names(engine)) == result.shape[0]


def test_riscv_secret_chain_zero_off_nonzero_on():
    engine = load_engine("riscv.json")
    names = feature_names(engine)
    ss_idx = names.index("flagfrac_is_secret_source")

    off = compute_spec_features(RISCV_SECRET_CHAIN, engine, use_taint=False)
    on = compute_spec_features(RISCV_SECRET_CHAIN, engine, use_taint=True)

    assert off[ss_idx] == 0.0
    assert on[ss_idx] > 0.0


def test_riscv_benign_pointer_chase_stays_zero_with_taint_on():
    """The gate must not fire on everything: ordinary pointer chasing with no
    probe-scale shift in the dependency chain must not be flagged, even with
    use_taint=True."""
    engine = load_engine("riscv.json")
    names = feature_names(engine)
    ss_idx = names.index("flagfrac_is_secret_source")
    tx_idx = names.index("flagfrac_is_transmitter")

    on = compute_spec_features(RISCV_BENIGN_POINTER_CHASE, engine, use_taint=True)
    assert on[ss_idx] == 0.0
    assert on[tx_idx] == 0.0


def test_no_memory_ops_on_off_agree():
    engine = load_engine("riscv.json")
    off = compute_spec_features(RISCV_NO_MEMORY_OPS, engine, use_taint=False)
    on = compute_spec_features(RISCV_NO_MEMORY_OPS, engine, use_taint=True)
    assert np.array_equal(off, on)
