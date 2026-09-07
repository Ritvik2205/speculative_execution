from eval.neutralize_triggers import neutralize_triggers

def test_verw_is_masked_but_structure_kept():
    seq = ["mov %rax, %rbx", "verw %ax", "clflush (%rdi)", "cmp %rax, %rcx", "je .L1"]
    out = neutralize_triggers(seq, mode="mask")
    assert not any("verw" in l for l in out)
    assert not any("clflush" in l for l in out)
    assert len(out) == len(seq)          # structure preserved, only mnemonics changed
    assert any("cmp" in l for l in out)  # non-trigger instrs untouched

def test_drop_mode_removes_lines():
    seq = ["rdtsc", "mov %rax,%rbx"]
    assert neutralize_triggers(seq, mode="drop") == ["mov %rax,%rbx"]
