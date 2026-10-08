"""Tests for oracle/spec_emulator.py — the Unicorn-driven speculative leak
check used where no leak oracle exists (arm64, riscv64).

These are known-answer tests on hand-written gadgets, because the property
under test has a textbook ground truth: a Spectre-V1 shape leaks, the same
shape with a fence at the speculation boundary does not, and a fence placed
after the transmitter does not help. The last two are the discriminations that
matter, and the real-silicon labels in docs/HW_LABEL_RESULTS_2026-10-07.md
agree with them.
"""
import sys
from pathlib import Path

import pytest

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "oracle"))
sys.path.insert(0, str(ROOT / "gen"))
sys.path.insert(0, str(ROOT / "spec"))

from precheck import Emulator, PreCheck  # noqa: E402

pytest.importorskip("capstone")
if not Emulator.available():
    pytest.skip("unicorn not installed", allow_module_level=True)

from spec_emulator import (ARCH_LEAK, LEAK, SAFE, UNRUNNABLE,  # noqa: E402
                           SpeculativeEmulator)
from revizor_asm import clean_lines  # noqa: E402

_pc = PreCheck(emulate=False)
if not (_pc.mc and _pc.objcopy):
    pytest.skip("llvm-mc / llvm-objcopy not available", allow_module_level=True)

# A Spectre-V1 shape: a bounds check on sandbox data, then an out-of-bounds
# read of the secret region and a cache-line-scaled probe. The secret sits at
# +16384, above the public region the emulator keeps identical between inputs.
V1 = [
    "movq (%r14), %rax",            # bound, from public data
    "cmpq $8, %rax",
    "jae .Lskip",
    "movzbl 16384(%r14), %ecx",     # secret byte
    "shlq $6, %rcx",                # scale to a cache line
    "movq (%r14,%rcx), %rdx",       # transmitter
    ".Lskip:",
    "nop",
]
BENIGN = ["movq (%r14), %rax", "cmpq $8, %rax", "jae .Lskip",
          "movq $1, %rbx", ".Lskip:", "nop"]


@pytest.fixture(scope="module")
def se():
    return SpeculativeEmulator("x86_64")


def test_v1_shape_leaks(se):
    r = se.check(V1)
    assert r["verdict"] == LEAK
    assert r["n_branches"] == 1


def test_fence_at_the_speculation_boundary_mitigates(se):
    """The fence goes between the guard branch and the secret read. Real
    silicon agrees: every boundary fence mitigated in HW_LABEL_RESULTS."""
    r = se.check(V1[:3] + ["lfence"] + V1[3:])
    assert r["verdict"] == SAFE


def test_fence_after_the_transmitter_does_not_mitigate(se):
    """A fence past the probe is too late. This is the discrimination a
    positional rule cannot make and the one the hardware labels establish."""
    r = se.check(V1[:6] + ["lfence"] + V1[6:])
    assert r["verdict"] == LEAK


def test_benign_sequence_is_safe(se):
    assert se.check(BENIGN)["verdict"] == SAFE


def test_secret_read_without_speculation_is_reported_separately(se):
    """A secret-dependent access on the architectural path is a leak, but not
    a SPECULATIVE one; conflating the two would inflate the leak count."""
    r = se.check(["movzbl 16384(%r14), %ecx", "shlq $6, %rcx",
                  "movq (%r14,%rcx), %rdx"])
    assert r["verdict"] == ARCH_LEAK
    assert r["arch_leak_pairs"] >= 1


def test_no_branch_and_no_secret_use_is_safe(se):
    r = se.check(["movq (%r14), %rax", "addq $8, %rax"])
    assert r["verdict"] == SAFE and r["n_branches"] == 0


def test_unassemblable_sequence_is_unrunnable(se):
    r = se.check(["this is not assembly", "nor is this"])
    assert r["verdict"] == UNRUNNABLE
    assert "did not assemble" in r["reason"]


def test_too_short_is_unrunnable(se):
    assert se.check(["nop"])["verdict"] == UNRUNNABLE


# ---------------------------------------------------------------------------
# the barrier model is what makes the fence cases work, so test it directly
# ---------------------------------------------------------------------------

def test_barrier_addresses_found(se):
    code, err = _pc.machine_code(["nop", "lfence", "nop"], "x86_64")
    assert code, err
    assert len(se.barrier_addresses(code)) == 1


def test_barrier_set_is_per_isa():
    import spec_emulator as m
    assert "lfence" in m._BARRIERS["x86_64"]
    assert {"dsb", "isb"} <= m._BARRIERS["arm64"]
    assert "fence" in m._BARRIERS["riscv64"]


def test_conditional_branch_detection_skips_unconditional_jump(se):
    code, err = _pc.machine_code(["jmp .Lx", ".Lx:", "nop", "nop"], "x86_64")
    assert code, err
    # an unconditional jump has no second successor to mispredict
    assert se.conditional_branches(code) == []


# ---------------------------------------------------------------------------
# other ISAs: the whole point of this module
# ---------------------------------------------------------------------------

ARM64_V1 = [
    "ldr x0, [x19]",
    "cmp x0, #8",
    "b.hs .Lskip",
    "add x1, x19, #16384",
    "ldrb w2, [x1]",
    "lsl x2, x2, #6",
    "ldr x3, [x19, x2]",
    ".Lskip:",
    "nop",
]


def test_arm64_v1_shape_leaks_and_a_barrier_mitigates():
    """arm64 has no leak oracle in this project at all; this is the check that
    exists only because of this module. Barrier is `dsb sy; isb`, the same one
    Revizor's own fence pass emits for arm64."""
    se64 = SpeculativeEmulator("arm64")
    # x19 is the sandbox base here: seeded like every other GP register
    leak = se64.check(ARM64_V1)
    assert leak["verdict"] == LEAK, leak
    fenced = se64.check(ARM64_V1[:3] + ["dsb sy", "isb"] + ARM64_V1[3:])
    assert fenced["verdict"] == SAFE, fenced


def test_riscv64_sequence_runs_at_all():
    """riscv64 wiring: a sequence with no branch must come back safe rather
    than unrunnable, which proves the assemble+emulate path works."""
    se64 = SpeculativeEmulator("riscv64")
    r = se64.check(["ld a0, 0(s1)", "addi a0, a0, 8"])
    assert r["verdict"] in (SAFE, ARCH_LEAK), r


# ---------------------------------------------------------------------------
# revizor_asm: the loader that makes a real violation executable
# ---------------------------------------------------------------------------

REVIZOR_SRC = """.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdx]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 44 # instrumentation
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
"""


def test_clean_lines_renames_directive_like_labels():
    out = clean_lines(REVIZOR_SRC)
    joined = "\n".join(out)
    # `.macro.measurement_start:` starts with the GAS directive `.macro`
    assert ".macro." not in joined
    assert ".Lmacro_measurement_start:" in out
    assert ".Lbb_0_1:" in out


def test_clean_lines_rewrites_branch_targets_consistently():
    out = clean_lines(REVIZOR_SRC)
    labels = {l[:-1] for l in out if l.endswith(":")}
    targets = [l.split()[-1] for l in out
               if l.strip().startswith(("jnb", "jmp"))]
    assert targets, "no branches found"
    for t in targets:
        assert t in labels, f"{t} has no definition"


def test_clean_lines_drops_syntax_and_section_directives():
    out = clean_lines(REVIZOR_SRC)
    assert not any(l.startswith(".intel_syntax") or l.startswith(".section")
                   for l in out)


def test_cleaned_revizor_program_assembles_and_runs():
    body = clean_lines(REVIZOR_SRC)
    code, err = _pc.machine_code(body, "x86_64", intel_syntax=True)
    assert code, f"cleaned program did not assemble: {err}"
    se_i = SpeculativeEmulator("x86_64", intel_syntax=True)
    r = se_i.check(body, n_pairs=1)
    # the point is that it is executable and adjudicated, not which verdict
    assert r["verdict"] in (LEAK, SAFE, ARCH_LEAK), r
