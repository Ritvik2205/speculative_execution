"""Tests for gen/generate_c.py (Task 6.2, W6).

Verifies the class-conditioned C generator produces FREESTANDING, distinct
sources and that a generated SPECTRE_V1 body compiles under every available
cross-compiler (x86_64 clang, arm64 clang, riscv64-elf-gcc) and shows the
expected bounds-check + indexed-load structural signature in the emitted
assembly. A missing compiler skips only the assertions that need it -- this
module never fakes asm for an absent toolchain.
"""

import re
import shutil
import sys
from pathlib import Path

import pytest

sys.path.insert(0, str(Path(__file__).resolve().parents[2] / "gen"))

from generate_c import CLASSES, compile_multi_isa, generate_c  # noqa: E402

HAS_CLANG = shutil.which("clang") is not None
HAS_RISCV = (
    shutil.which("riscv64-elf-gcc") is not None
    or shutil.which("riscv64-unknown-elf-gcc") is not None
)

# Per-arch structural signature: (conditional-branch pattern, load pattern).
_ARCH_PATTERNS = {
    "x86_64": (
        re.compile(r"\bj(a|ae|b|be|e|ne|l|le|g|ge|s|ns|o|no)\b"),
        re.compile(r"\bmov[zs]?[bwlq]{0,2}\b.*\("),
    ),
    "arm64": (
        re.compile(r"\bb\.\w+\b|\bcbn?z\b"),
        re.compile(r"\bldrb?\b"),
    ),
    "riscv64": (
        re.compile(r"\bb(eq|ne|lt|ge|ltu|geu)\b"),
        re.compile(r"\bl(b|bu|h|hu|w|wu|d)\b"),
    ),
}

# Per-arch "real call instruction" pattern, used to verify the RETBLEED /
# INCEPTION call/ret-chain templates survive -O2 as actual calls rather than
# being sibling/tail-call-optimized into a flat jmp chain (fix round 1
# regression: clang's default -O2 turns a tail-position call into `jmp ...
# # TAILCALL`, which is NOT a call instruction and erases the very
# call/ret-nesting structure these two templates exist to produce).
_CALL_PATTERNS = {
    "x86_64": re.compile(r"\bcallq?\b"),
    "arm64": re.compile(r"\bbl\b"),
    "riscv64": re.compile(r"\b(call|jal)\b"),
}


def test_generate_c_returns_n_distinct_sources():
    sources = generate_c("SPECTRE_V1", 5, seed=7)
    assert len(sources) == 5
    assert len(set(sources)) == 5, "generate_c must emit n distinct sources"


def test_generate_c_rejects_unknown_class():
    with pytest.raises(ValueError):
        generate_c("NOT_A_REAL_CLASS", 1)


def test_generate_c_all_classes_are_freestanding():
    # No #include, no libc calls -- required for the riscv64-elf-gcc
    # bare-metal ELF target, which has no libc to link against at all.
    forbidden_calls = ("printf", "malloc", "memcpy", "memset")
    for cls in CLASSES:
        src = generate_c(cls, 1, seed=1)[0]
        assert "#include" not in src, f"{cls} source must not #include anything"
        for call in forbidden_calls:
            assert call not in src, f"{cls} source calls libc function {call}"


@pytest.mark.skipif(not (HAS_CLANG or HAS_RISCV), reason="no cross-compiler available")
def test_spectre_v1_compiles_under_all_available_isas():
    src = generate_c("SPECTRE_V1", 1, seed=123)[0]
    record: dict[str, str] = {}
    asm_by_arch = compile_multi_isa(src, record=record)

    available = [arch for arch, status in record.items() if status != "compiler not found"]
    assert available, "expected at least one cross-compiler on PATH"

    for arch in available:
        assert arch in asm_by_arch, f"{arch} compiler present but compile failed: {record[arch]}"
        assert asm_by_arch[arch].strip(), f"{arch} produced empty asm"


@pytest.mark.skipif(not (HAS_CLANG or HAS_RISCV), reason="no cross-compiler available")
def test_spectre_v1_asm_has_bounds_check_and_indexed_load():
    src = generate_c("SPECTRE_V1", 1, seed=456)[0]
    asm_by_arch = compile_multi_isa(src)
    assert asm_by_arch, "expected at least one arch to compile"

    for arch, asm_text in asm_by_arch.items():
        branch_re, load_re = _ARCH_PATTERNS[arch]
        assert branch_re.search(asm_text), (
            f"{arch} asm missing a conditional-branch (bounds check) instruction:\n{asm_text}"
        )
        assert load_re.search(asm_text), (
            f"{arch} asm missing an indexed/array load instruction:\n{asm_text}"
        )


@pytest.mark.skipif(not HAS_CLANG, reason="clang not available")
def test_compile_multi_isa_skips_absent_and_records_status():
    src = generate_c("SPECTRE_V1", 1, seed=99)[0]
    record: dict[str, str] = {}
    asm_by_arch = compile_multi_isa(src, record=record)
    # Every returned arch must have a real, non-empty asm body.
    for arch, text in asm_by_arch.items():
        assert text.strip()
    # Every arch present in the record but absent from results must be
    # explained (compiler missing or a real compile failure), never silently
    # dropped.
    for arch in record:
        if arch not in asm_by_arch:
            assert record[arch], f"{arch} skipped without a recorded reason"


@pytest.mark.skipif(not (HAS_CLANG or HAS_RISCV), reason="no cross-compiler available")
@pytest.mark.parametrize("target_class", ["RETBLEED", "INCEPTION"])
def test_retbleed_inception_preserve_real_call_chain(target_class):
    # Regression test for fix round 1: the naive noinline-only version of
    # these templates tail-call-optimized into a flat `jmp` chain at -O2
    # (0 `call` instructions, 1 `ret`), erasing the call/ret-nesting
    # structure the templates claim to produce. The fixed templates route
    # every recursive/chained call's result through a `volatile` sink
    # before returning (non-tail position) and compile_multi_isa now passes
    # -fno-optimize-sibling-calls -- this asserts at least 2 real call
    # instructions survive per available arch.
    src = generate_c(target_class, 1, seed=2026)[0]
    asm_by_arch = compile_multi_isa(src)
    assert asm_by_arch, "expected at least one arch to compile"

    for arch, asm_text in asm_by_arch.items():
        call_re = _CALL_PATTERNS[arch]
        call_count = len(call_re.findall(asm_text))
        assert call_count >= 2, (
            f"{target_class} on {arch}: expected >=2 real call instructions, "
            f"got {call_count} (tail-call elimination regression?):\n{asm_text}"
        )
