"""Re-implementation of FastSpec's preprocessing rules (eval/replication/fastspec_tokens.py)."""
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(REPO / "eval" / "replication"))
import fastspec_tokens as ft  # noqa: E402

VOCAB = {",", "(", ")", "<imm>", "<label>", "<UNK>", "mov", "movq", "movzbl", "cmpq", "jae", "push",
         "callq", "retq", "ret", "%rax", "%rbp", "%rsp", "%rdi", "%eax", "%rip", ":", "%fs", "lea", "shlq"}


def test_compiler_output_directives_and_symbols_become_unk_and_dotted_tokens_vanish():
    text = (".globl victim_function\nvictim_function:\n\t.cfi_startproc\n"
            "\tcmpq\tarray1_size(%rip), %rdi\n\tjae\t.L2\n\tmovzbl\tarray1(%rdi), %eax\n"
            "\tshlq\t$12, %rax\n.L2:\n\tret\n\t.cfi_endproc\n")
    toks = ft.tokens(text, VOCAB)
    assert toks == ["<UNK>", "<UNK>",                       # victim_function: , .cfi_startproc
                    "cmpq", "<UNK>", "(", "%rip", ")", ",", "%rdi",
                    "jae", "<label>", "movzbl", "<UNK>", "(", "%rdi", ")", ",", "%eax",
                    "shlq", "<imm>", ",", "%rax",
                    "<UNK>",        # `.L2:` -- their parser lower-cases the first field, so a label
                                    # definition no longer matches `.L` and falls out of the vocabulary
                    "ret", "<UNK>"]


def test_objdump_listing_headers_drop_and_targets_become_labels():
    text = ("Disassembly of section .text:\n\n0000000000000000 <f>:\n"
            "\tpush   %rbp\n\tmov    %rsp,%rbp\n\tmov    %fs:0x28,%rax\n\tcallq  0 <g>\n"
            "\tlea    0x8(%rax),%rdi\n\tretq\n")
    toks = ft.tokens(text, VOCAB, drop_first=0)
    assert toks == ["push", "%rbp", "mov", "%rsp", ",", "%rbp", "mov", "%fs", ":", "<imm>", ",", "%rax",
                    "callq", "<label>", "lea", "<imm>", "(", "%rax", ")", ",", "%rdi", "retq"]


def test_provenance_is_read_from_the_file_name():
    assert ft.provenance("00001__clang12_28_22891_140214611822336_1583683936.3638182.s") == \
        {"family": "clang", "base": "12", "depth": 28}
    assert ft.provenance("00002__intel11.1gcc_40_28086_1.s") == {"family": "intelgcc", "base": "11.1", "depth": 40}
    assert ft.provenance("00003__victim10.1_13_15781_1.s") == {"family": "victim", "base": "10.1", "depth": 13}
    assert ft.provenance("00004__sample_5_1219310.s")["family"] == "sample"
    assert ft.provenance("00005__libnss_mdns4.so.2.s")["family"] is None


def test_windows_follow_list2tsv():
    w = ft.windows(list(range(25)), window=10, overlap=0)
    assert [len(x) for x in w] == [10, 10]            # a tail of 5 tokens (<= 10) is dropped
    assert [len(x) for x in ft.windows(list(range(32)), 10, 0)] == [10, 10, 10]   # tail 2 dropped
    assert [len(x) for x in ft.windows(list(range(45)), 10, 0)] == [10, 10, 10, 10]
    assert [len(x) for x in ft.windows(list(range(52)), 20, 0)] == [20, 20, 12]   # tail > 10 kept
