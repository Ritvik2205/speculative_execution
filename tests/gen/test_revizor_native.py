"""Revizor-native program model (gen/revizor_native.py).

A Revizor test case is Intel-syntax text with invariants the fuzzer relies on
(sandbox base r14, an index mask before every memory access, forward-only
basic blocks). The unit of generation is one instruction TOGETHER with the
instrumentation lines in front of it, with immediates lifted out, so emitted programs keep the
invariants by construction.
"""
import random
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
for p in (REPO, REPO / "gen"):
    sys.path.insert(0, str(p))

import revizor_native as rn  # noqa: E402

PROG = """.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 87 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdx] 
adc cl, al 
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 95 
jnp .bb_0.1 
jmp .exit_0 
.bb_0.1:
xor si, 23 
lea si, qword ptr [rcx + rbx + 46193] 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
"""


def test_parse_groups_instrumentation_with_its_instruction_and_splits_blocks():
    blocks = rn.parse_program(PROG)
    assert len(blocks) == 2
    assert blocks[0].units[0] == ["add dl, 87 # instrumentation",
                                  "and rdx, 0b1111111111111 # instrumentation",
                                  "sbb rax, qword ptr [r14 + rdx]"]
    assert blocks[0].units[1] == ["adc cl, al"]
    assert blocks[0].jcc == "jnp" and blocks[1].jcc is None
    assert blocks[1].units[-1] == ["lea si, qword ptr [rcx + rbx + 46193]"]


def test_tokens_keep_registers_and_instrumentation_literal_and_lift_immediates():
    # registers stay literal: instrumentation and implicit operands (idiv's
    # rdx, shift counts in cl) are tied to specific registers
    toks = rn.tokenize(rn.parse_program(PROG))
    assert toks[0] == ("add dl, 87 # instrumentation | "
                       "and rdx, 0b1111111111111 # instrumentation | "
                       "sbb rax, qword ptr [r14 + rdx]")
    assert toks[1] == "adc cl, al"
    assert toks[2] == ("and rcx, 0b1111111111000 # instrumentation | "
                       "lock add byte ptr [r14 + rcx], <imm>")
    assert toks[3] == "<JCC jnp>"
    assert toks[4] == "xor si, <imm>"
    assert toks[5] == "lea si, qword ptr [rcx + rbx + <imm>]"


def test_emit_round_trips_structure_and_keeps_the_sandbox_invariants():
    toks = rn.tokenize(rn.parse_program(PROG))
    text = rn.emit(toks, random.Random(0), imm_pool=rn.imm_pool([PROG]))
    again = rn.tokenize(rn.parse_program(text))
    assert again == toks
    assert rn.check_invariants(text) == []
    assert text.startswith(".intel_syntax noprefix\n")
    assert ".macro.measurement_start" in text and ".test_case_exit:nop" in text


def test_invariant_check_flags_an_unmasked_memory_access_and_a_foreign_base():
    bad = PROG.replace("and rdx, 0b1111111111111 # instrumentation\n", "")
    assert any("mask" in e for e in rn.check_invariants(bad))
    bad2 = PROG.replace("[r14 + rdx]", "[rbx + rdx]")
    assert any("r14" in e for e in rn.check_invariants(bad2))


def test_emit_survives_tokens_in_any_order():
    toks = rn.tokenize(rn.parse_program(PROG))
    rng = random.Random(1)
    for _ in range(20):
        t = toks[:]
        rng.shuffle(t)
        assert rn.check_invariants(rn.emit(t, rng, imm_pool=rn.imm_pool([PROG]))) == []


# --- factored stream: unit shape + register families -------------------------
# Literal units are almost all singletons (2,769 distinct in 3,687), so a model
# over them can only replay its training programs. The factored stream names a
# unit's SHAPE (registers of the instruction's explicit operands become
# numbered, width-tagged slots, shared with its instrumentation lines) followed
# by one register-family token per slot.

def test_factored_tokens_share_a_slot_between_an_index_and_its_mask():
    toks = rn.tokenize_factored(rn.parse_program(PROG))
    assert toks[:3] == [
        "add <1:8>, 87 # instrumentation | and <1:64>, 0b1111111111111 # instrumentation | "
        "sbb <0:64>, qword ptr [r14 + <1:64>]", "<R a>", "<R d>"]   # slots in operand order
    assert toks[3:6] == ["adc <0:8>, <1:8>", "<R c>", "<R a>"]


def test_units_with_implicit_register_operands_are_not_factored():
    p = PROG.replace("adc cl, al", "or di, 0b1000 # instrumentation\nand dx, 0b11 # instrumentation\nidiv di")
    p = p.replace("xor si, 23", "shl rax, cl")
    toks = rn.tokenize_factored(rn.parse_program(p))
    assert "or di, 0b1000 # instrumentation | and dx, 0b11 # instrumentation | idiv di" in toks
    assert "shl rax, cl" in toks


def test_factored_round_trip_and_free_register_choice_keep_the_invariants():
    blocks = rn.parse_program(PROG)
    toks = rn.tokenize_factored(blocks)
    pool = rn.imm_pool([PROG])
    text = rn.emit(rn.defactor(toks, random.Random(0)), random.Random(0), imm_pool=pool)
    assert rn.tokenize(rn.parse_program(text)) == rn.tokenize(blocks)
    rng = random.Random(3)
    for _ in range(30):                    # any register after any shape
        t = [("<R %s>" % rng.choice("abcd")) if x.startswith("<R ") else x for x in toks]
        rng.shuffle(t)
        out = rn.emit(rn.defactor(t, rng), rng, imm_pool=pool)
        assert rn.check_invariants(out) == []
        assert "<" not in out.replace("<imm>", "")


def test_loop_and_jrcxz_are_block_terminators_like_conditional_jumps():
    p = PROG.replace("jnp .bb_0.1", "loopne .bb_0.1")
    blocks = rn.parse_program(p)
    assert blocks[0].jcc == "loopne" and "<JCC loopne>" in rn.tokenize(blocks)
    toks = rn.tokenize(blocks)
    random.Random(0).shuffle(toks)
    out = rn.emit(toks, random.Random(0), imm_pool=rn.imm_pool([p]))
    lines = out.splitlines()
    for i, l in enumerate(lines):
        if l.startswith("loopne"):                     # nothing but a jmp/label may follow
            assert lines[i + 1].startswith(("jmp ", ".")), lines[i:i + 2]
