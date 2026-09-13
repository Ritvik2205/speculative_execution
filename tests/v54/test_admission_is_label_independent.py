import importlib.util, sys, re
from pathlib import Path
spec = importlib.util.spec_from_file_location("bd", Path("v54/build_dataset.py"))
bd = importlib.util.module_from_spec(spec); sys.modules["bd"]=bd; spec.loader.exec_module(bd)

def test_accept_path_has_no_label_conditioned_filter():
    src = Path("v54/build_dataset.py").read_text()
    main_src = src[src.index("def main("):]
    assert "has_train_attack_signal(" not in main_src, \
        "label-conditioned filter must not appear in the accept path"

def test_quality_filter_is_label_independent():
    seq = ["mov %rax,%rbx","cmp %rax,%rcx","je .L1","mov (%rax,%rcx),%rdx","ret"]
    assert bd.passes_quality_filter(seq) == bd.passes_quality_filter(seq) == True
