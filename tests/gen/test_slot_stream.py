"""Register-identity ("slot") token stream (step 1, 2026-11-11).

The plain tokenizer erases register identity, so realisation draws a fresh
register per instruction and dataflow is lost. The slot stream keeps the
template token and appends one <Sk> per register position; the realiser maps
each slot to one register for the whole sequence.
"""
import re
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
for p in (REPO / "spec", REPO / "gen"):
    sys.path.insert(0, str(p))

from isa_spec import load_engine, load_spec  # noqa: E402
from asm_tokenizer import AsmTokenizer        # noqa: E402
from realize import Realizer                  # noqa: E402

CHAIN = ["movzbl (%rdi,%rsi), %eax", "shlq $6, %rax", "movb $1, (%rdx,%rax)"]


def _tk():
    return AsmTokenizer(load_engine("x86_64.json"))


def test_plain_stream_unchanged():
    tk = _tk()
    assert tk.tokenize_sequence(CHAIN) == [
        "movzbl <mem-idx> <reg>", "shlq <imm> <reg>", "movb <imm> <mem-idx>"]


def test_slot_stream_shape():
    s = _tk().tokenize_sequence_slots(CHAIN)
    assert s == ["movzbl <mem-idx> <reg>", "<S0>", "<S1>", "<DZ>", "<S2>",
                 "shlq <imm> <reg>", "<I:6>", "<S2>",
                 "movb <imm> <mem-idx>", "<I:1>", "<S3>", "<S2>", "<DZ>"]


def test_slot_specials_and_width_canonical():
    s = _tk().tokenize_sequence_slots(
        ["movq _p@GOTPCREL(%rip), %rcx", "movq 8(%rsp), %rbx", "addl %ecx, %ebx"])
    assert s == ["movq <mem> <reg>", "<SIP>", "<D0>", "<S0>",
                 "movq <mem> <reg>", "<SSP>", "<D1>", "<S1>",
                 "addl <reg> <reg>", "<S0>", "<S1>"]   # ecx==rcx, ebx==rbx


def test_displacement_identity_and_exact_immediates():
    from isa_spec import load_spec
    tk = _tk()
    seq = ["movq 16(%rbx), %rdx", "movq %rsi, 40(%rbx)", "movq 16(%rbx), %rcx",
           "andq $0x1fff, %rax", "movb %cl, (%rdx,%rax)"]
    s = tk.tokenize_sequence_slots(seq)
    assert s[2] == s[s.index("movq <mem> <reg>", 1) + 2] == "<D0>"   # same field
    assert "<D1>" in s and "<I:8191>" in s
    assert "movb <reg> <mem-idx>" in s            # %cl is a register, not <sym>
    out = Realizer(load_spec("x86_64.json"), seed=0).realize_sequence(s)
    assert len(out) == len(seq), out              # nothing dropped
    assert out[0].split()[1].split("(")[0] == out[2].split()[1].split("(")[0]
    assert "$8191" in out[3]


def test_slot_realisation_threads_one_register():
    R = Realizer(load_spec("x86_64.json"), seed=3)
    out = R.realize_sequence(_tk().tokenize_sequence_slots(CHAIN))
    assert len(out) == 3
    load_dst = re.findall(r"%([a-z0-9]+)", out[0])[-1]
    shift_dst = re.findall(r"%([a-z0-9]+)", out[1])[-1]
    store_idx = re.findall(r"%([a-z0-9]+)", out[2])[-1]
    from oracle_splice import _x86_lookup
    fam = lambda r: _x86_lookup(r)[0]
    assert fam(load_dst) == fam(shift_dst) == fam(store_idx), out


def test_plain_realisation_still_plain():
    R = Realizer(load_spec("x86_64.json"), seed=3)
    out = R.realize_sequence(_tk().tokenize_sequence(CHAIN))
    assert len(out) == 3 and not any("<S" in i for i in out)


def test_stray_and_missing_slots_are_tolerated():
    R = Realizer(load_spec("x86_64.json"), seed=0)
    out = R.realize_sequence(["<S0>", "shlq <imm> <reg>", "movb <imm> <mem-idx>", "<S1>"])
    assert len(out) == 2   # leading stray slot ignored; missing slot -> fresh reg


# ---- attacker-register slot (indexed victim) ------------------------------
def test_attacker_register_gets_its_own_slot_token_only_when_asked():
    from isa_spec import load_engine
    from asm_tokenizer import AsmTokenizer
    tk = AsmTokenizer(load_engine("x86_64.json"))
    w = ["movzbl (%r15), %eax", "movb $1, (%rbx,%rax)"]
    assert tk.tokenize_sequence_slots(w, secret_reg="r15") == \
        ["movzbl <mem> <reg>", "<SSEC>", "<DZ>", "<S0>",
         "movb <imm> <mem-idx>", "<I:1>", "<S1>", "<S0>", "<DZ>"]
    assert "<SSEC>" not in tk.tokenize_sequence_slots(w)


def test_attacker_slot_realises_to_r15_and_keeps_the_chain():
    import decode as gd
    r = gd.Realizer(gd.load_spec("x86_64.json"), seed=3)
    out = r.realize_sequence(["movzbl <mem> <reg>", "<SSEC>", "<DZ>", "<S0>",
                              "movb <imm> <mem-idx>", "<I:1>", "<S1>", "<S0>", "<DZ>"])
    assert len(out) == 2
    assert "(%r15)" in out[0]
    loaded = out[0].split(",")[-1].strip().lstrip("%")
    from ir_defuse import _canon_x86
    assert _canon_x86(loaded) in out[1].replace("%", "") or loaded[1:] in out[1]
