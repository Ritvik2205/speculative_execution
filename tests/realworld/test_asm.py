from realworld.asm import extract_named_functions, find_function

ASM = """\t.file\t"x.c"
\t.text
\t.p2align 4
\t.globl\tf
\t.type\tf, @function
f:
.LFB0:
\t.cfi_startproc
\tmovl\t(%rdi,%rsi,4), %eax
\tret
\t.cfi_endproc
.LFE0:
\t.size\tf, .-f
\t.type\tg.isra.0, @function
g.isra.0:
.LFB1:
\t.cfi_startproc
\taddl\t$1, %edi
\tret
\t.cfi_endproc
.LFE1:
\t.size\tg.isra.0, .-g.isra.0
"""


def test_extract_named_functions():
    d = extract_named_functions(ASM)
    assert set(d) == {"f", "g.isra.0"}
    assert any("movl" in l for l in d["f"])
    assert any("addl" in l for l in d["g.isra.0"])


def test_find_function_suffix():
    d = extract_named_functions(ASM)
    assert find_function(d, "g") == d["g.isra.0"]
    assert find_function(d, "f") == d["f"]
    assert find_function(d, "nope") is None
