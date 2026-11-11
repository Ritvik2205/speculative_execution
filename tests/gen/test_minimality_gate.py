"""Step 2: minimal leaking cores on the gate-only harness.

Seams under test (gen/minimality_gate.py):
  canonical_core(body)        -- identity of a core up to register renaming
  embeds_in(core, window)     -- could ddmin have produced `core` from `window`?
  make_gate_test(...)         -- oracle predicate used by ddmin (Docker)
"""
import sys
from pathlib import Path

import pytest

REPO = Path(__file__).resolve().parents[2]
for p in (REPO, REPO / "gen", REPO / "spec", REPO / "v54"):
    sys.path.insert(0, str(p))

from minimality_gate import canonical_core, embeds_in  # noqa: E402

REF = ["movzbl (%r15), %eax", "shlq $6, %rax", "movb $1, (%r14,%rax)"]


def test_core_identity_ignores_which_register_carries_the_value():
    other = ["movzbl (%r15), %ecx", "shlq $6, %rcx", "movb $1, (%r14,%rcx)"]
    assert canonical_core(REF) == canonical_core(other)


def test_core_identity_separates_broken_dataflow():
    broken = ["movzbl (%r15), %eax", "shlq $6, %rbx", "movb $1, (%r14,%rcx)"]
    assert canonical_core(REF) != canonical_core(broken)


def test_core_identity_separates_shift_amounts_and_memory_cells():
    assert canonical_core(REF) != canonical_core(
        ["movzbl (%r15), %eax", "shlq $12, %rax", "movb $1, (%r14,%rax)"])
    a = ["movq -8(%rbp), %rax", "movq -8(%rbp), %rcx"]
    b = ["movq -8(%rbp), %rax", "movq -16(%rbp), %rcx"]
    assert canonical_core(a) != canonical_core(b)


def test_core_embeds_in_a_window_that_contains_it_renamed_and_padded():
    window = ["nop", "movzbl (%rsi), %edx", "addq $1, %r9", "shlq $6, %rdx",
              "movq %r9, %r10", "movb $1, (%rdi,%rdx)", "nop"]
    assert embeds_in(REF, window)


def test_core_does_not_embed_when_the_window_breaks_the_register_chain():
    window = ["movzbl (%rsi), %edx", "shlq $6, %rbx", "movb $1, (%rdi,%rcx)"]
    assert not embeds_in(REF, window)


def test_core_does_not_embed_out_of_order_or_with_other_constants():
    assert not embeds_in(REF, ["shlq $6, %rdx", "movzbl (%rsi), %edx",
                               "movb $1, (%rdi,%rdx)"])
    assert not embeds_in(REF, ["movzbl (%rsi), %edx", "shlq $9, %rdx",
                               "movb $1, (%rdi,%rdx)"])


def test_embedding_keeps_stack_and_frame_registers_fixed():
    core = ["movq -8(%rbp), %rax", "movq (%rax), %rcx"]
    assert embeds_in(core, ["movq -24(%rbp), %rdx", "movq (%rdx), %rsi"])
    assert not embeds_in(core, ["movq -24(%rbx), %rdx", "movq (%rdx), %rsi"])


# ---- oracle-backed -------------------------------------------------------
from test_gate_only_harness import _docker_ok  # noqa: E402

docker = pytest.mark.skipif(not _docker_ok(), reason="Spectector image unavailable")


@docker
def test_ddmin_on_gate_harness_reduces_padded_reference_to_load_plus_dependent_store():
    from minimality_gate import make_gate_test
    from minimize_leaks import ddmin
    padded = ["nop", "movq $3, %rbx", REF[0], "nop", "addq $1, %rbx", REF[1],
              "nop", REF[2], "movq %rbx, %rcx", "nop"]
    test = make_gate_test("SPECTRE_V1", tag="t_ref")
    # the cache-line shift is not needed for the SNI verdict: a secret-dependent
    # address alone is the observation, so the 1-minimal core is two instructions
    assert ddmin(padded, test) == [REF[0], REF[2]]
