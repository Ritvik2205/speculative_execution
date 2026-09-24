"""ISA-normalisation invariants the GINE graph depends on.

Each test pins a bug that made the model's input an ISA fingerprint rather
than a description of the attack:

  * x86 size-suffixed mnemonics (addq, cmpq, shlq, pushq, movq reg-reg, leaq)
    fell through to OTHER — ~49% of x86 nodes vs 11% arm64 / 2% riscv64.
  * AT&T operand order is src, dst but register extraction took the FIRST
    register as the destination, so every x86 DATA_DEP edge pointed backwards.
  * Sub-register views were distinct names (eax vs rax, w0 vs x0), so a
    32-bit write and a 64-bit read of the same register had no dependency.
"""
import sys
from pathlib import Path

import pytest

sys.path.insert(0, str(Path(__file__).resolve().parents[2] / "spec"))
from isa_spec import load_engine  # noqa: E402

X86 = load_engine("x86_64.json")
ARM = load_engine("arm64.json")
RV = load_engine("riscv.json")


def cat(eng, ins):
    inv = {v: k for k, v in eng.opcode_categories.items()}
    return inv[eng.classify_opcode(ins)]


def regs(eng, ins):
    return eng.extract_registers(ins, eng.classify_opcode(ins))


@pytest.mark.parametrize("ins,expected", [
    ("addq $1, %rax", "ARITHMETIC"),
    ("subl %esi, %eax", "ARITHMETIC"),
    ("imulq %rdx, %rax", "ARITHMETIC"),
    ("incl %ecx", "ARITHMETIC"),
    ("leaq 8(%rsp), %rdi", "ARITHMETIC"),
    ("lea (%rax,%rbx,4), %rcx", "ARITHMETIC"),
    ("cmpq %rsi, %rdi", "COMPARE"),
    ("testl %eax, %eax", "COMPARE"),
    ("shlq $12, %rax", "SHIFT"),
    ("sarl $3, %edx", "SHIFT"),
    ("andq $-4096, %rax", "LOGIC"),
    ("xorl %eax, %eax", "LOGIC"),
    ("pushq %rbp", "STORE"),     # stack store, like arm stp / riscv sd to sp
    ("popq %rbx", "LOAD"),
    ("movq %rsp, %rbp", "MOVE"),
    ("movl $0, %eax", "MOVE"),
    ("cmovneq %rdx, %rax", "MOVE"),
    ("movq (%rdi), %rax", "LOAD"),
    ("movzbl (%rsi,%rax), %eax", "LOAD"),
    ("movq %rax, 8(%rsp)", "STORE"),
    # unsuffixed forms keep working
    ("add $1, %rax", "ARITHMETIC"),
    ("shl $12, %rax", "SHIFT"),
])
def test_x86_suffixed_mnemonics_classified(ins, expected):
    assert cat(X86, ins) == expected


def test_x86_other_rate_matches_other_isas():
    """No common x86 instruction form in the corpus should be OTHER."""
    common = ["addq $8, %rsp", "subq $16, %rsp", "cmpq $0, %rax", "leaq (%rip), %rax",
              "movq %rdi, %rsi", "pushq %r15", "popq %r15", "shrq $6, %rcx",
              "orl $1, %eax", "testq %rdi, %rdi", "movslq %eax, %rcx", "cltq"]
    assert [i for i in common if cat(X86, i) == "OTHER"] == []


@pytest.mark.parametrize("ins,dest,src", [
    ("movq (%rdi), %rax", {"rax"}, {"rdi"}),
    ("movzbl (%rsi,%rax), %eax", {"rax"}, {"rsi", "rax"}),
    ("movq %rsp, %rbp", {"rbp"}, {"rsp"}),
    ("leaq 8(%rsp), %rdi", {"rdi"}, {"rsp"}),
    # two-address arithmetic reads its destination too
    ("addq %rsi, %rax", {"rax"}, {"rsi", "rax"}),
    ("shlq $12, %rax", {"rax"}, {"rax"}),
    ("incl %ecx", {"rcx"}, {"rcx"}),
    # three-operand imul does not
    ("imulq $3, %rsi, %rdx", {"rdx"}, {"rsi"}),
    # memory destination: every register is an address/value source
    ("movq %rax, 8(%rsp)", set(), {"rax", "rsp"}),
    ("addq %rax, (%rdi)", set(), {"rax", "rdi"}),
    # push only reads its operand
    ("pushq %rbp", set(), {"rbp"}),
])
def test_x86_att_register_direction(ins, dest, src):
    d, s = regs(X86, ins)
    assert (d, s) == (dest, src)


@pytest.mark.parametrize("eng,a,b", [
    (X86, "movl $1, %eax", "movq %rax, %rbx"),      # eax write -> rax read
    (X86, "movb $1, %al", "movq %rax, %rbx"),
    (X86, "movl $1, %r8d", "movq %r8, %rbx"),
    (ARM, "mov w0, #1", "mov x1, x0"),              # w0 write -> x0 read
    (RV, "li s0, 1", "mv a0, fp"),                  # fp is s0
])
def test_subregister_views_alias(eng, a, b):
    d, _ = regs(eng, a)
    _, s = regs(eng, b)
    assert d & s, f"{a!r} defines {d}, {b!r} reads {s}: no shared register"


@pytest.mark.parametrize("ins,dest,src", [
    ("ldr x0, [x1, x2]", {"x0"}, {"x1", "x2"}),
    ("add x0, x1, x2", {"x0"}, {"x1", "x2"}),
    ("str x0, [x1]", set(), {"x0", "x1"}),
])
def test_arm_register_direction_unchanged(ins, dest, src):
    assert regs(ARM, ins) == (dest, src)


@pytest.mark.parametrize("ins,dest,src", [
    ("ld a0, 8(sp)", {"a0"}, {"sp"}),
    ("add a0, a1, a2", {"a0"}, {"a1", "a2"}),
    ("sd a0, 8(sp)", set(), {"a0", "sp"}),
])
def test_riscv_register_direction_unchanged(ins, dest, src):
    assert regs(RV, ins) == (dest, src)


# ---------------------------------------------------------------------------
# Equivalent operations get the same category on every ISA.
# ---------------------------------------------------------------------------
EQUIV = [
    ("sign-extend", "movslq %eax, %rcx", "sxtw x0, w1", "sext.w a5,a5", "MOVE"),
    ("zero-extend", "movzbl %al, %eax", "uxtb w0, w1", "zext.b a5,a5", "MOVE"),
    ("address gen", "leaq sym(%rip), %rax", "adrp x0, sym@PAGE", "lui a5,%hi(sym)", "ARITHMETIC"),
    ("cond set", "setl %al", "cset w0, lt", None, "MOVE"),
    ("bitwise not", "notq %rax", "mvn x0, x1", "not a0,a1", "LOGIC"),
    ("stack push", "pushq %rbp", "stp x29, x30, [sp, #-16]!", "sd ra,8(sp)", "STORE"),
    ("stack pop", "popq %rbp", "ldp x29, x30, [sp], #16", "ld ra,8(sp)", "LOAD"),
    ("cycle counter", "rdtsc", "mrs x0, cntvct_el0", "rdcycle a0", "TIMING"),
    ("full fence", "mfence", "dsb sy", "fence", "FENCE"),
]


@pytest.mark.parametrize("name,x,a,r,expected", EQUIV, ids=[e[0] for e in EQUIV])
def test_equivalent_ops_same_category(name, x, a, r, expected):
    got = {"x86": cat(X86, x), "arm": cat(ARM, a)}
    if r:
        got["riscv"] = cat(RV, r)
    assert set(got.values()) == {expected}, got


def _flag(eng, ins, name):
    c = eng.classify_opcode(ins)
    return bool(eng.spec_flags_vector(ins, c, eng.memory_access_type(ins))[eng.spec_flags[name]])


@pytest.mark.parametrize("eng,ins", [(X86, "mfence"), (ARM, "dsb sy"), (RV, "fence")])
def test_full_fence_flag_every_isa(eng, ins):
    assert _flag(eng, ins, "is_mfence_or_sfence")


@pytest.mark.parametrize("eng,ins", [(X86, "lfence"), (ARM, "csdb"), (ARM, "sb")])
def test_speculation_barrier_flag(eng, ins):
    assert _flag(eng, ins, "is_lfence")


def test_ret_defines_no_register():
    assert regs(RV, "jr ra") == (set(), {"ra"})


def _dd(eng, seq):
    sys.path.insert(0, str(Path(__file__).resolve().parents[2] / "v54"))
    from spec_pdg_builder import SpecBackedPDGBuilder
    from pdg_builder import EDGE_TYPES
    p = SpecBackedPDGBuilder(eng, dataflow_taint=False).build(seq)
    return sorted((e.src, e.dst) for e in p.edges if e.edge_type == EDGE_TYPES["DATA_DEP"])


def test_data_dep_links_only_reaching_definition():
    """a5 is redefined at 1, so the read at 2 depends on 1 only — not the
    stale definition at 0."""
    assert _dd(RV, ["li a5,1", "li a5,2", "add a0,a5,a5"]) == [(1, 2)]
    assert _dd(X86, ["movl $1, %eax", "movl $2, %eax", "addq %rax, %rbx"]) == [(1, 2)]
