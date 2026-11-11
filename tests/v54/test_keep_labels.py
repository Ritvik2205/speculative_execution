"""Step 5: opt-in label-keeping path through the dataset builders.

Default behaviour (labels stripped, Mach-O local labels split functions) is
what every existing dataset/checkpoint was built with and must not change.
"""
import importlib.util
from pathlib import Path

import pytest

ROOT = Path(__file__).resolve().parent.parent.parent


def _load(version):
    spec = importlib.util.spec_from_file_location(
        f"build_dataset_{version}", ROOT / version / "build_dataset.py")
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    return mod


@pytest.fixture(params=["v54", "v56"])
def bd(request):
    return _load(request.param)


SEQ = ["cmpq %rsi, %rdi", "jae .Lout", ".p2align 4", "movq (%rdi), %rax",
       ".Lout:", "# comment", "LBB0_2:", "retq"]


def test_clean_seq_default_still_drops_labels(bd):
    assert bd.clean_seq(SEQ) == ["cmpq %rsi, %rdi", "jae .Lout",
                                 "movq (%rdi), %rax", "retq"]


def test_clean_seq_keep_labels_keeps_labels_and_drops_directives(bd):
    assert bd.clean_seq(SEQ, keep_labels=True) == [
        "cmpq %rsi, %rdi", "jae .Lout", "movq (%rdi), %rax", ".Lout:",
        "LBB0_2:", "retq"]


MACHO = """\
	.globl	_victim
_victim:
	.cfi_startproc
	cmpq	%rsi, %rdi
	jae	LBB0_2
## %bb.1:
	movq	(%rdi), %rax
LBB0_2:
	retq
	.cfi_endproc
"""


def test_extract_functions_default_unchanged(bd, tmp_path):
    p = tmp_path / "f.s"
    p.write_text(MACHO)
    # historical behaviour: the local label starts a new "function"
    assert bd.extract_functions(p) == [
        ["cmpq\t%rsi, %rdi", "jae\tLBB0_2", "movq\t(%rdi), %rax"], ["retq"]]


def test_extract_functions_keep_labels_keeps_the_function_whole(bd, tmp_path):
    p = tmp_path / "f.s"
    p.write_text(MACHO)
    assert bd.extract_functions(p, keep_labels=True) == [
        ["cmpq\t%rsi, %rdi", "jae\tLBB0_2", "movq\t(%rdi), %rax", "LBB0_2:", "retq"]]


ELF = """\
victim:
	cmpq	%rsi, %rdi
	jae	.L2
	movq	(%rdi), %rax
.L2:
	ret
"""


def test_extract_functions_keep_labels_elf_local_label(bd, tmp_path):
    p = tmp_path / "f.s"
    p.write_text(ELF)
    assert bd.extract_functions(p) == [
        ["cmpq\t%rsi, %rdi", "jae\t.L2", "movq\t(%rdi), %rax", "ret"]]
    assert bd.extract_functions(p, keep_labels=True) == [
        ["cmpq\t%rsi, %rdi", "jae\t.L2", "movq\t(%rdi), %rax", ".L2:", "ret"]]
