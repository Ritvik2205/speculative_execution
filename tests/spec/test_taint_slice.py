"""Tests for spec/taint_slice.py (Task 4.2, W4): shift-magnitude-independent
secret-source/transmitter taint slice.

Fix round 1 (controller-ruled redesign — see spec/taint_slice.py module
docstring): the original version seeded taint from function-argument
registers and was found to over-fire on ordinary benign pointer chasing
(the benign test at the time was tautological — it used a register not in
`attacker_inputs`, so it never actually exercised the guard). These tests
replace that with real guards plus the two required positive cases.

## Why these tests check DELTAS, not absolute zero

`spec/base.json`'s own (pre-existing, unrelated to Task 4.2)
`spec_flag_rules` already set `is_secret_source`/`is_transmitter` on ANY
LOAD-category node whose `mem_access_type` is INDEXED/INDIRECT, purely from
that ONE instruction's syntax — independent of any taint mechanism, and
present regardless of `taint_mode`. So an indexed instruction (e.g. `lea
(%rbx,%rsi,8),%rax`, or an ordinary `mov (%rbx,%rcx,8),%rax` array index)
can already show `spec_flags[IS_SECRET_SOURCE] == 1.0` BEFORE
`mark_secret_transmitter` ever runs — that is out of scope for this task
(it would require changing `spec/base.json`, which this task does not
touch). Each test below therefore snapshots flags immediately before
calling `mark_secret_transmitter` and asserts what CHANGED, isolating this
function's own contribution from that pre-existing base-engine behavior.
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
    # dataflow_taint=False: build the plain graph (base per-node spec_flags
    # still computed at node-creation time, see module docstring above),
    # with no shift-gated apply_dataflow_taint pre-applied.
    pdg = SpecBackedPDGBuilder(_ENGINE, dataflow_taint=False).build(sequence)
    defuse = defuse_for_sequence(sequence, "x86_64")
    return pdg, defuse


def _mark_and_diff(pdg, defuse):
    """Call mark_secret_transmitter and return (new_secret, new_transmitter)
    — parallel bool lists, True where THIS call flipped that flag 0->1 on
    that node (i.e. this function's own contribution, excluding whatever
    spec/base.json's single-instruction rule already set)."""
    before = [(n.spec_flags[IS_SECRET_SOURCE], n.spec_flags[IS_TRANSMITTER])
              for n in pdg.nodes]
    mark_secret_transmitter(pdg, defuse)
    after = [(n.spec_flags[IS_SECRET_SOURCE], n.spec_flags[IS_TRANSMITTER])
             for n in pdg.nodes]
    new_secret = [bool(a[0] > b[0]) for a, b in zip(after, before)]
    new_transmit = [bool(a[1] > b[1]) for a, b in zip(after, before)]
    return new_secret, new_transmit


def test_benign_pointer_chase_no_attacker_input_is_not_marked():
    """`rax` is a pointer LOADED from memory and immediately dereferenced,
    unmodified — a direct dereference, never combined with anything. This is
    the real (non-tautological) guard: `rax` IS tainted (it came from a
    real load), but never `transformed`, so it must not fire. (Neither line
    is indexed addressing, so the base-engine rule is not a confound here —
    this is a true before/after-equivalent absolute check.)"""
    sequence = [
        "mov (%rdi), %rax",
        "mov (%rax), %rbx",
    ]
    pdg, defuse = _build(sequence)
    new_secret, new_transmit = _mark_and_diff(pdg, defuse)
    assert not any(new_secret)
    assert not any(new_transmit)


def test_benign_array_index_by_non_loaded_counter_is_not_marked():
    """`rcx` is set from an immediate (a loop counter), never loaded from
    memory; `rbx` is an ordinary base pointer, also never loaded. Taint now
    seeds only from real LOADs, so neither register is ever tainted, and
    `mark_secret_transmitter` must add NO new marks — even though the final
    line's indexed addressing already carries a pre-existing base-engine
    is_secret_source/is_transmitter mark unrelated to taint (see module
    docstring); this test asserts THIS function contributes nothing further."""
    sequence = [
        "mov (%rdi), %rdx",          # unrelated load; rdx is a candidate secret
        "mov $5, %rcx",              # loop counter, never loaded
        "mov (%rbx,%rcx,8), %rax",   # ordinary array index: rbx/rcx untainted
    ]
    pdg, defuse = _build(sequence)
    new_secret, new_transmit = _mark_and_diff(pdg, defuse)
    assert not any(new_secret)
    assert not any(new_transmit)


def test_leak_via_lea_scaled_index_without_shift_is_marked():
    """The scaling instruction is a bare `lea` — no `shl`/`shr`/`sar`
    anywhere. Must mark the final dereference as `is_transmitter` and the
    originating load as `is_secret_source`; the `lea` node itself (a pure
    address computation, never a memory access) must get NEITHER flag from
    this function (it may already carry the base engine's unrelated
    pre-existing marks — see module docstring — but this function must not
    add to them)."""
    sequence = [
        "movzbl (%rdi), %rsi",       # secret load
        "lea (%rbx,%rsi,8), %rax",   # combine (scaled index), no shift
        "mov (%rax), %rcx",          # transmit
    ]
    pdg, defuse = _build(sequence)
    new_secret, new_transmit = _mark_and_diff(pdg, defuse)

    secret_load, lea_node, final_load = pdg.nodes
    assert secret_load.raw_instruction == "movzbl (%rdi), %rsi"
    assert lea_node.raw_instruction == "lea (%rbx,%rsi,8), %rax"
    assert final_load.raw_instruction == "mov (%rax), %rcx"

    assert new_secret[0] is True     # movzbl marked is_secret_source
    assert new_transmit[2] is True   # final load marked is_transmitter
    assert new_secret[1] is False    # lea: nothing NEW from this function
    assert new_transmit[1] is False  # lea: nothing NEW from this function


def test_leak_via_shift_still_marked():
    """The original shift-gated idiom must still work under the redesign:
    the secret is scaled with a `shl` (a COMBINATION node) before being used
    as the (non-indexed, single-register) address of the transmitting load
    — non-indexed so the base-engine's unrelated indexed-access rule can't
    be the one doing the marking; this isolates the SHIFT->transform path."""
    sequence = [
        "movzbl (%rdi), %rsi",
        "shl $12, %rsi",
        "mov (%rsi), %rcx",
    ]
    pdg, defuse = _build(sequence)
    new_secret, new_transmit = _mark_and_diff(pdg, defuse)

    final_load = pdg.nodes[-1]
    assert final_load.raw_instruction == "mov (%rsi), %rcx"
    assert new_transmit[-1] is True
    assert new_secret[0] is True


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
