"""Tests for the assembler-in-the-loop validity gate (W6 Task 6.1).

`gen/decode.py`'s realizer used to hand back best-effort concrete asm with no
check that it actually assembles -- the audit found 91% of generated gadgets
don't (`gen/ORACLE_VALIDATION_FINDINGS.md`). `realize_instruction` now
test-assembles the single instruction it just built via clang and returns
None when clang rejects it, so the caller can resample instead of shipping
garbage downstream.

x86_64-only (the oracle here is x86; arm64/riscv64 realization is out of
scope for this task -- the gate is a no-op for them, see realize.py).
"""
import shutil
import subprocess
import sys
from pathlib import Path

import pytest

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT / "gen"))

from isa_spec import load_spec   # noqa: E402
from realize import Realizer      # noqa: E402

_HAS_CLANG = shutil.which("clang") is not None


def _assembles(instr: str) -> bool:
    """Independent re-check used only to confirm the TEST's own expectation
    (not the realizer's cache) -- shells clang directly."""
    proc = subprocess.run(
        ["clang", "-target", "x86_64-linux-gnu", "-x", "assembler", "-c", "-", "-o", "/dev/null"],
        input=instr, capture_output=True, text=True, timeout=10,
    )
    return proc.returncode == 0


@pytest.mark.skipif(not _HAS_CLANG, reason="no clang assembler on PATH")
def test_immediate_dest_rejected():
    """mov with two immediate operands (immediate as MOV destination) cannot
    assemble; the gate must reject it and return None so the caller resamples."""
    r = Realizer(load_spec("x86_64.json"), seed=0)
    assert not _assembles("mov\t$1, $2")  # sanity: confirm it's really invalid
    out = r.realize_instruction("mov <imm> <imm>", reject_invalid=True)
    assert out is None


@pytest.mark.skipif(not _HAS_CLANG, reason="no clang assembler on PATH")
def test_valid_instruction_passes():
    """mov between two registers is valid AT&T syntax; the gate must let it
    through and the result must actually assemble (checked independently,
    not just returned as non-None)."""
    r = Realizer(load_spec("x86_64.json"), seed=0)
    out = r.realize_instruction("mov <reg> <reg>", reject_invalid=True)
    assert out is not None and "%" in out
    assert _assembles(out)


@pytest.mark.skipif(not _HAS_CLANG, reason="no clang assembler on PATH")
def test_reject_invalid_false_preserves_old_behavior():
    """reject_invalid=False must return whatever the old (unchecked) realizer
    built, even for an operand form that cannot assemble."""
    r = Realizer(load_spec("x86_64.json"), seed=0)
    out = r.realize_instruction("mov <imm> <imm>", reject_invalid=False)
    assert out is not None
    assert out.startswith("mov")


@pytest.mark.skipif(not _HAS_CLANG, reason="no clang assembler on PATH")
def test_cache_reused_across_identical_instructions():
    """The assemble result is cached by the concrete instruction string, so a
    second identical instruction is served from cache, not re-shelled."""
    r = Realizer(load_spec("x86_64.json"), seed=0)
    assert r.realize_instruction("mov <reg> <reg>", reject_invalid=True) is not None
    cache = getattr(r, "_validity_cache", None)
    assert cache, "expected realize_instruction to populate an assemble-result cache"
    calls_before = len(cache)
    # A repeat of an already-cached concrete instruction must not grow the cache.
    only_key = next(iter(cache))
    r._assembles(only_key)  # direct cache-hit call
    assert len(r._validity_cache) == calls_before


def test_realize_sequence_drops_none_entries():
    """realize_sequence must tolerate realize_instruction returning None
    (invalid form rejected by the gate) rather than crashing or propagating
    None into the output list -- documented policy: DROP the rejected line."""
    r = Realizer(load_spec("x86_64.json"), seed=0)
    seq = r.realize_sequence(["mov <imm> <imm>", "mov <reg> <reg>"])
    assert None not in seq


def test_arch_without_clang_target_is_unaffected():
    """arm64/riscv64 realization is out of scope for this task -- the gate
    must be a no-op there even with reject_invalid=True (default), same as
    the old unchecked behavior."""
    r = Realizer(load_spec("arm64.json"), seed=7)
    out = r.realize_instruction("add <imm> <reg>", reject_invalid=True)
    assert out is not None
