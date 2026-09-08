"""Tests for spec/taint_slice.py (Task 4.2, W4): shift-magnitude-independent
secret-source/transmitter taint slice.

Exactly the plan's required cases (2026-09-07-specexec-research-grade-plan.md,
Task 4.2, Step 1):
  1. A gadget that scales an index with `lea (%rbx,%rdi,8)` (no `shl`
     anywhere) must still get `is_transmitter` on the load that dereferences
     the scaled address — the case the old PROBE_SHIFT_AMOUNTS heuristic in
     dataflow_taint.py misses (G2).
  2. An ordinary pointer chase with NO attacker input must NOT get
     `is_transmitter` — the precision guard that keeps this from firing on
     benign pointer chasing (the failure mode of the first taint attempt).
"""
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

from pdg_builder import SPEC_FLAGS  # noqa: E402
from isa_spec import load_engine  # noqa: E402
from spec_pdg_builder import SpecBackedPDGBuilder  # noqa: E402
from ir_defuse import defuse_for_sequence  # noqa: E402
from taint_slice import (  # noqa: E402
    mark_secret_transmitter,
    default_attacker_inputs,
    address_regs_of,
)

IS_SECRET_SOURCE = SPEC_FLAGS["is_secret_source"]
IS_TRANSMITTER = SPEC_FLAGS["is_transmitter"]

_ENGINE = load_engine("x86_64.json")


def _build(sequence):
    # dataflow_taint=False: build the plain graph, with no shift-gated taint
    # pre-applied, so the assertions below test taint_slice in isolation.
    pdg = SpecBackedPDGBuilder(_ENGINE, dataflow_taint=False).build(sequence)
    defuse = defuse_for_sequence(sequence, "x86_64")
    return pdg, defuse


def test_lea_scaled_transmitter_without_shift_is_marked():
    """rdi (an attacker-input arg register) scales the index via a bare
    `lea` — no `shl`/`shr`/`sar` anywhere in the gadget. The old
    PROBE_SHIFT_AMOUNTS-gated heuristic can never fire here; the taint slice
    must still mark the final load as is_transmitter."""
    sequence = [
        "mov %rdi, %rdi",              # attacker input already in rdi (seed)
        "lea (%rbx,%rdi,8), %rax",     # scaled-index address calc, NO shift
        "mov (%rax), %rcx",            # dereference the tainted address
    ]
    pdg, defuse = _build(sequence)
    attacker_inputs = default_attacker_inputs("x86_64")
    assert "rdi" in attacker_inputs

    mark_secret_transmitter(pdg, defuse, attacker_inputs)

    final_load = pdg.nodes[-1]
    assert final_load.raw_instruction == "mov (%rax), %rcx"
    assert final_load.spec_flags[IS_TRANSMITTER] == 1.0


def test_ordinary_pointer_chase_with_no_attacker_input_is_not_marked():
    """rax is an ordinary base pointer, NOT in attacker_inputs. Chained
    pointer dereferences (the classic false-positive of the first taint
    attempt) must produce zero is_secret_source/is_transmitter marks."""
    sequence = [
        "mov (%rax), %rbx",
        "mov (%rbx), %rcx",
    ]
    pdg, defuse = _build(sequence)
    attacker_inputs = default_attacker_inputs("x86_64")
    assert "rax" not in attacker_inputs

    mark_secret_transmitter(pdg, defuse, attacker_inputs)

    for node in pdg.nodes:
        assert node.spec_flags[IS_SECRET_SOURCE] == 0.0
        assert node.spec_flags[IS_TRANSMITTER] == 0.0


def test_default_attacker_inputs_per_arch():
    assert default_attacker_inputs("x86_64") == {"rdi", "rsi", "rdx", "rcx", "r8", "r9"}
    assert default_attacker_inputs("arm64") == {f"x{i}" for i in range(8)}
    assert default_attacker_inputs("riscv64") == {f"a{i}" for i in range(8)}


def test_address_regs_of_extracts_only_paren_bracket_registers():
    """The value register of a store (outside the parens) must NOT be
    counted as an address register — only the registers inside the memory
    operand delimiters are."""
    regs = address_regs_of("mov %rax, (%rbx)", "x86_64")
    assert regs == {"rbx"}
    assert "rax" not in regs
