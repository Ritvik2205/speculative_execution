"""Tests for gen/precheck.py — the cheap non-learned gate in front of the
leak oracle.

The Spectector front-end stage is checked against hand-worked cases derived
from Spectector's own grammar (`parser_aux.pl:91-105`: stem plus up to two
size-suffix characters; `gas_parser.pl:92-107`: the resolved arity must match
the operand count). The assemble and emulate stages are exercised against the
real toolchain where it is present and skipped where it is not, so the suite
stays green on a machine without llvm-mc or unicorn.
"""
import json
import sys
from pathlib import Path

import pytest

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "gen"))
sys.path.insert(0, str(ROOT / "spec"))

import precheck  # noqa: E402
from precheck import (Emulator, PreCheck, SpectectorFrontEnd, live_prefix,  # noqa: E402
                      split_operands, TABLE_JSON)

TABLE_PRESENT = Path(TABLE_JSON).is_file()
needs_table = pytest.mark.skipif(not TABLE_PRESENT,
                                 reason="spectector_x86_table.json not extracted")


# ---------------------------------------------------------------------------
# operand splitting
# ---------------------------------------------------------------------------

def test_split_operands_keeps_memory_operand_whole():
    # AT&T (%base,%idx,8) is ONE operand despite its commas
    assert split_operands("(%r14,%rax,8), %rbx") == ["(%r14,%rax,8)", "%rbx"]
    assert split_operands("%rax") == ["%rax"]
    assert split_operands("") == []
    assert split_operands("$8, 16(%rsp)") == ["$8", "16(%rsp)"]


def test_split_operands_handles_arm_brackets():
    assert split_operands("x0, [x1, x2]") == ["x0", "[x1, x2]"]


# ---------------------------------------------------------------------------
# reachability
# ---------------------------------------------------------------------------

def test_live_prefix_stops_at_first_unconditional_exit():
    seq = ["movq (%rax), %rbx", "retq", "rdtsc", "movl %eax, (%rbx)"]
    assert live_prefix(seq) == ["movq (%rax), %rbx"]


def test_live_prefix_keeps_conditional_branches():
    seq = ["cmpq $8, %rax", "jne .L0", "movq (%rbx), %rcx"]
    assert live_prefix(seq) == seq


def test_live_prefix_keeps_labels_and_directives():
    seq = [".text", "foo:", "movq (%rax), %rbx"]
    assert live_prefix(seq) == seq


# ---------------------------------------------------------------------------
# Spectector front end
# ---------------------------------------------------------------------------

@needs_table
@pytest.mark.parametrize("instr", [
    "movq (%rsi,%rcx,8), %rax",   # mov + q suffix, 2 operands
    "addq $8, %rax",
    "lfence",                      # arity 0
    "retq",                        # ret + q
    "callq fn_target",             # call + q, 1 operand
    "leaq 8(%rax), %rbx",
    "movzbl (%rax), %ecx",         # movz + TWO suffixes (b, l)
    "nop",                         # variable arity (`_`)
    "nopw %ax",                    # variable arity accepts 1 operand
    "lock",                        # standalone prefix line, arity 0
    "cmovel %eax, %ebx",
    "# a comment only",
    ".text",
    "some_label:",
])
def test_front_end_accepts(instr):
    assert SpectectorFrontEnd().accepts(instr) is True


@needs_table
@pytest.mark.parametrize("instr", [
    "bt %rcx, %rdx",               # ins(bt,...) is COMMENTED OUT in the table
    "btsq $1, (%rax)",
    "rdtsc",                       # absent from the table entirely
    "verw %ax",
    "movntdqa (%rax), %xmm0",
    "cmovzl %eax, %ebx",           # synonym spelling absent (cmove is present)
    "ldr x0, [x1]",                # ARM mnemonic leaking into x86 output
])
def test_front_end_rejects(instr):
    assert SpectectorFrontEnd().accepts(instr) is False


@needs_table
def test_front_end_rejects_on_arity_mismatch():
    fe = SpectectorFrontEnd()
    # ins(call, o, 1, ...) -- a 2-operand call cannot resolve
    assert fe.accepts("callq %rax, %rbx") is False
    # ins(lfence, o, 0, ...) -- operands make it unresolvable
    assert fe.accepts("lfence %rax") is False


@needs_table
def test_front_end_table_provenance_is_recorded():
    fe = SpectectorFrontEnd()
    for k in ("image", "table_path", "table_sha256", "parser_aux_sha256"):
        assert fe.provenance.get(k)
    assert fe.max_suffixes == 2
    assert set("bdlqstw") <= fe.suffix_chars


@needs_table
def test_front_end_unsupported_lists_offenders():
    fe = SpectectorFrontEnd()
    bad = fe.unsupported(["movq (%rax), %rbx", "rdtsc", "bt %rcx, %rdx"])
    assert [b.split()[0] for b in bad] == ["rdtsc", "bt"]


# ---------------------------------------------------------------------------
# table extraction contract (the file the front end depends on)
# ---------------------------------------------------------------------------

@needs_table
def test_table_records_variable_arity_as_null():
    doc = json.loads(Path(TABLE_JSON).read_text())
    var = {i["name"] for i in doc["instructions"] if i["arity"] is None}
    # `ins(nop, o, _, skip).` and `ins(npad, o, _, skip).`
    assert {"nop", "npad"} <= var


@needs_table
def test_table_excludes_commented_out_facts():
    doc = json.loads(Path(TABLE_JSON).read_text())
    names = {i["name"] for i in doc["instructions"]}
    # these exist in x86_table.pl only behind a `%` comment
    assert "bt" not in names and "btr" not in names
    assert "mov" in names and "lfence" in names


# ---------------------------------------------------------------------------
# full gate (needs the real toolchain)
# ---------------------------------------------------------------------------

@pytest.fixture(scope="module")
def pc():
    p = PreCheck()
    if not p.mc:
        pytest.skip("llvm-mc not available")
    return p


@needs_table
def test_rejects_unassemblable_sequence(pc):
    r = pc.check(["this is not assembly at all"], "x86_64", require_emulation=False)
    assert r["assembles"] is False
    assert r["verdict"] == "reject" and r["reject_stage"] == "assembles"


@needs_table
def test_rejects_unsupported_on_live_path_but_not_in_dead_code(pc):
    live = pc.check(["rdtsc", "movq (%rsi), %rax"], "x86_64", require_emulation=False)
    assert live["oracle_supported"] is False
    assert live["reject_stage"] == "oracle_supported"

    dead = pc.check(["movq (%rsi), %rax", "retq", "rdtsc"], "x86_64",
                    require_emulation=False)
    assert dead["oracle_supported"] is True


@needs_table
def test_non_x86_has_no_oracle_stage(pc):
    r = pc.check(["ldr x0, [x1]", "add x0, x0, #8"], "arm64", require_emulation=False)
    assert r["assembles"] is True
    # there is no symbolic oracle for arm64, so the stage must not claim a verdict
    assert r["oracle_supported"] is None


@pytest.mark.parametrize("arch,seq", [
    ("x86_64", ["movq (%rsi), %rax", "addq $8, %rax"]),
    ("arm64", ["ldr x0, [x1]", "add x0, x0, #8"]),
    ("riscv64", ["ld a0, 0(a1)", "addi a0, a0, 8"]),
])
def test_machine_code_and_emulation_per_isa(pc, arch, seq):
    if not pc.objcopy:
        pytest.skip("llvm-objcopy not available")
    code, err = pc.machine_code(seq, arch)
    assert code, f"no .text bytes for {arch}: {err}"
    if not Emulator.available():
        pytest.skip("unicorn not installed")
    outcome, detail, _pages = Emulator().run(code, arch)
    # registers are seeded into a mapped scratch region, so a plain
    # load-then-add must complete
    assert outcome == "ok", f"{arch}: {outcome} {detail}"


def test_emulation_demand_maps_an_arbitrary_address(pc):
    """The generator clobbers registers with data and then dereferences them,
    so an unmapped access is demand-mapped rather than failed (see the
    concession note in precheck's docstring). `pages_mapped` records it."""
    if not (pc.objcopy and Emulator.available()):
        pytest.skip("toolchain or unicorn unavailable")
    code, err = pc.machine_code(["movq $0x7ffff0000000, %rax", "movq (%rax), %rbx"],
                                "x86_64")
    assert code, err
    outcome, _detail, pages = Emulator().run(code, "x86_64")
    assert outcome == "ok" and pages >= 1


def test_emulation_reports_invalid_instruction(pc):
    if not Emulator.available():
        pytest.skip("unicorn not installed")
    # 0f0b = ud2 (x86 undefined instruction)
    outcome, _detail, _pages = Emulator().run(b"\x0f\x0b", "x86_64")
    assert outcome in ("fault_insn", "error")


def test_emulation_reports_no_code():
    if not Emulator.available():
        pytest.skip("unicorn not installed")
    assert Emulator().run(b"", "x86_64")[0] == "no_code"


def test_emulation_stops_at_the_exit_not_the_uninitialised_stack(pc):
    """A mid-sequence `retq` pops a zeroed stack and would fetch from a
    garbage address. Stage C must emulate only the reachable prefix, so the
    `ret` is not counted as a defect of the generated code."""
    if not (pc.objcopy and Emulator.available()):
        pytest.skip("toolchain or unicorn unavailable")
    r = pc.check(["movq (%rsi), %rax", "retq", "movq (%rdi), %rbx"], "x86_64",
                 require_emulation=False)
    assert r["emulated"] == "ok"


def test_precheck_without_emulation_leaves_stage_c_skipped(pc):
    p = PreCheck(emulate=False)
    r = p.check(["movq (%rsi), %rax"], "x86_64")
    assert r["emulated"] == "skipped" and r["verdict"] == "pass"
