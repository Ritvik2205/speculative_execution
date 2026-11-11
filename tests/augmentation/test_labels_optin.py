"""Step 5 opt-in path: sequences that keep `name:` label lines as non-node
markers. An augmentation must not move an instruction across a label (that
changes which instruction the branch targets)."""
import random

from augment_asm_windows import can_swap, swap_locally

SEQ = ["cmpq %rsi, %rdi", "jae .Lout", "movq (%rdi), %rax", ".Lout:",
       "addq $1, %rbx", "subq $2, %rcx", "xorq %r8, %r8"]


def test_can_swap_refuses_a_label_line():
    assert not can_swap("movq (%rdi), %rax", ".Lout:")
    assert not can_swap("LBB0_2:", "addq $1, %rbx")
    assert can_swap("addq $1, %rbx", "subq $2, %rcx")


def test_swap_locally_never_moves_an_instruction_across_a_label():
    for seed in range(200):
        random.seed(seed)
        out = swap_locally(list(SEQ), trials=6)
        i = out.index(".Lout:")
        assert i == 3 and out[i + 1] in SEQ[4:] and out[i - 1] == SEQ[2]
