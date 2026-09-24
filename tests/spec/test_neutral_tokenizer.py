"""Neutral tokenizer mode: equivalent instructions on different ISAs must
produce the SAME token, so a learned encoder trained on x86_64+arm64 can read
riscv64 at all (canonical mode left 7.9% of riscv tokens out of vocabulary,
almost all compare-in-branch and `jr ra`)."""
import sys
from pathlib import Path

import pytest

sys.path.insert(0, str(Path(__file__).resolve().parents[2] / "spec"))
from asm_tokenizer import MultiArchTokenizer  # noqa: E402

T = MultiArchTokenizer("neutral")


def tok(arch, ins):
    return T.for_arch(arch).normalize(ins)


@pytest.mark.parametrize("group", [
    [("x86_64", "jb .L1"), ("arm64", "b.lo .L1"), ("arm64", "cbz x0, .L1"),
     ("riscv64", "bltu a4,a5,.L1")],
    [("x86_64", "retq"), ("arm64", "ret"), ("riscv64", "jr ra"), ("riscv64", "ret")],
    [("x86_64", "addq %rsi, %rax"), ("arm64", "add x0, x1, x2"), ("riscv64", "add a0,a1,a2")],
    [("x86_64", "addq $1, %rax"), ("riscv64", "addi a0,a0,1"), ("arm64", "add x0, x0, #1")],
    [("x86_64", "subq $16, %rsp"), ("riscv64", "addi sp,sp,-48")],
    [("x86_64", "movzbl (%rsi,%rax), %eax"), ("arm64", "ldrb w0, [x1, x2]"),
     ("riscv64", "lbu a5,0(a5)")],
    [("x86_64", "pushq %rbp"), ("arm64", "stp x29, x30, [sp, #-16]!"), ("riscv64", "sd ra,8(sp)")],
    [("x86_64", "popq %rbx"), ("arm64", "ldp x29, x30, [sp], #16"), ("riscv64", "ld ra,8(sp)")],
    [("riscv64", "ld a5,%lo(<fn>)(a5)"), ("arm64", "ldr x0, [x1]")],
])
def test_equivalents_share_a_token(group):
    toks = {tok(a, i) for a, i in group}
    assert len(toks) == 1, {f"{a}: {i}": tok(a, i) for a, i in group}


def test_canonical_mode_unchanged():
    """mlm_canonical.pt was trained on canonical tokens; they must not move."""
    c = MultiArchTokenizer("canonical")
    assert c.for_arch("riscv64").normalize("bltu a4,a5,.L1") == "BRANCH_COND <reg> <reg> <sym>"
