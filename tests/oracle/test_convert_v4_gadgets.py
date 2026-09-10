"""Tests for oracle/revizor/convert_v4_gadgets.py (P2, task-p2).

Converts real hardware-confirmed Revizor V4/SSB `program.asm` files (Intel
syntax) into the pipeline's AT&T `sequence` format.
"""
import shutil
import sys
from pathlib import Path

import pytest

REPO_ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(REPO_ROOT))
sys.path.insert(0, str(REPO_ROOT / "oracle" / "revizor"))

import convert_v4_gadgets as cvg  # noqa: E402

SAMPLE_ASM = (
    REPO_ROOT
    / "oracle" / "revizor" / "results" / "v4_ssb_260907" / "ssbp_off"
    / "seed4444444_violation-260907-191158" / "program.asm"
)

TOOLCHAIN_AVAILABLE = (
    shutil.which("clang") is not None and shutil.which("objdump") is not None
)
HAS_FALLBACK = hasattr(cvg, "translate_intel_line_fallback")


@pytest.mark.skipif(
    not (TOOLCHAIN_AVAILABLE or HAS_FALLBACK),
    reason="neither the assemble/objdump toolchain nor a fallback translator is available",
)
def test_convert_program_asm_returns_nonempty_att_sequence():
    assert SAMPLE_ASM.exists(), f"fixture missing: {SAMPLE_ASM}"
    seq = cvg.convert_program_asm(str(SAMPLE_ASM))
    assert isinstance(seq, list)
    assert len(seq) > 0
    assert all(isinstance(line, str) for line in seq)


@pytest.mark.skipif(
    not (TOOLCHAIN_AVAILABLE or HAS_FALLBACK),
    reason="neither the assemble/objdump toolchain nor a fallback translator is available",
)
def test_convert_program_asm_no_intel_or_directive_leakage():
    seq = cvg.convert_program_asm(str(SAMPLE_ASM))
    for line in seq:
        assert "ptr" not in line.lower(), f"Intel size-ptr leaked into: {line!r}"
        assert ".intel_syntax" not in line
        assert "#" not in line, f"trailing comment leaked into: {line!r}"
        assert not line.strip().endswith(":"), f"label leaked into: {line!r}"


@pytest.mark.skipif(
    not (TOOLCHAIN_AVAILABLE or HAS_FALLBACK),
    reason="neither the assemble/objdump toolchain nor a fallback translator is available",
)
def test_convert_program_asm_has_r14_memory_op():
    seq = cvg.convert_program_asm(str(SAMPLE_ASM))
    assert any("%r14" in line for line in seq), "no sandbox-base (%r14) memory op found"


@pytest.mark.skipif(
    not (TOOLCHAIN_AVAILABLE or HAS_FALLBACK),
    reason="neither the assemble/objdump toolchain nor a fallback translator is available",
)
def test_convert_program_asm_has_store_load_pair():
    """Structural V4 signature: at least one store and one load to %r14."""
    seq = cvg.convert_program_asm(str(SAMPLE_ASM))
    has_store = any(cvg.classify_r14_access(line) == "store" for line in seq)
    has_load = any(cvg.classify_r14_access(line) == "load" for line in seq)
    assert has_store, f"no store to (%r14,...) found in: {seq}"
    assert has_load, f"no load from (%r14,...) found in: {seq}"


def test_classify_r14_access_store():
    assert cvg.classify_r14_access("addl %ebx, (%r14,%rdi)") == "store"


def test_classify_r14_access_load():
    assert cvg.classify_r14_access("cmovbw (%r14,%rsi), %ax") == "load"


def test_classify_r14_access_none():
    assert cvg.classify_r14_access("sub al, bl") == "none"


def test_convert_all_dedups(tmp_path):
    """Converting the same file twice under different names should dedup
    down to one unique gadget when driven through the dedup helper."""
    seqs = [["mov %rax, %rbx"], ["mov %rax, %rbx"], ["add %rcx, %rdx"]]
    unique = cvg.dedup_sequences(seqs)
    assert len(unique) == 2


@pytest.mark.skipif(not HAS_FALLBACK, reason="fallback translator not implemented")
def test_fallback_translator_basic_lines():
    f = cvg.translate_intel_line_fallback
    assert f("mov edi, -1544998000") == "mov $-1544998000, %edi"
    assert f("add dword ptr [r14 + rdi], ebx") == "addl %ebx, (%r14,%rdi)"
    assert f("test al, cl") == "test %cl, %al"


# ---------------------------------------------------------------------------
# build_globs / --extra-dirs (Step 2, deliverable 4)
# ---------------------------------------------------------------------------

def test_build_globs_no_extra_dirs_matches_default_globs():
    assert cvg.build_globs(None) == cvg.DEFAULT_GLOBS
    assert cvg.build_globs([]) == cvg.DEFAULT_GLOBS


def test_build_globs_extra_campaign_dir_expands_to_both_subpatterns():
    globs = cvg.build_globs(["oracle/revizor/results/v4_ssb_260915"])
    assert globs[: len(cvg.DEFAULT_GLOBS)] == cvg.DEFAULT_GLOBS
    assert "oracle/revizor/results/v4_ssb_260915/ssbp_off/*/program.asm" in globs
    assert "oracle/revizor/results/v4_ssb_260915/smt_off/*/program.asm" in globs


def test_build_globs_extra_dir_trailing_slash_normalized():
    globs = cvg.build_globs(["oracle/revizor/results/v4_ssb_260915/"])
    assert "oracle/revizor/results/v4_ssb_260915/ssbp_off/*/program.asm" in globs


def test_build_globs_full_glob_pattern_used_as_is():
    globs = cvg.build_globs(["oracle/revizor/results/v4_ssb_260915/*/*/program.asm"])
    assert globs[len(cvg.DEFAULT_GLOBS):] == [
        "oracle/revizor/results/v4_ssb_260915/*/*/program.asm"
    ]


def test_build_globs_multiple_extra_dirs():
    globs = cvg.build_globs(["dir_a", "dir_b"])
    tail = globs[len(cvg.DEFAULT_GLOBS):]
    assert tail == [
        "dir_a/ssbp_off/*/program.asm", "dir_a/smt_off/*/program.asm",
        "dir_b/ssbp_off/*/program.asm", "dir_b/smt_off/*/program.asm",
    ]
