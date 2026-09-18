"""Tests for the per-class mitigation-boundary extension of
oracle/revizor/synth_v4_benign.py: `fence_gadget_for_class`,
`_is_cond_branch`, `_reads_mem`, and the multi-class `make_benign_variant`/
`convert_all`/CLI.

SPECTRE_V4 behavior (fence_gadget, instr_writes_mem) is covered by
test_synth_v4_benign.py and MUST stay unchanged; this file only adds
coverage for the new SPECTRE_V1 / L1TF / MDS boundaries and dispatch.
"""
import importlib.util
import json
import sys
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[2]
MODULE_PATH = REPO_ROOT / "oracle" / "revizor" / "synth_v4_benign.py"

spec = importlib.util.spec_from_file_location("synth_v4_benign", MODULE_PATH)
synth_v4_benign = importlib.util.module_from_spec(spec)
sys.modules["synth_v4_benign"] = synth_v4_benign
spec.loader.exec_module(synth_v4_benign)

DATA_DIR = REPO_ROOT / "eval" / "data"
REAL_PATHS = {
    "SPECTRE_V4": DATA_DIR / "revizor_v4_real.jsonl",
    "SPECTRE_V1": DATA_DIR / "revizor_spectre_v1_real.jsonl",
    "L1TF": DATA_DIR / "revizor_l1tf_real.jsonl",
    "MDS": DATA_DIR / "revizor_mds_real.jsonl",
}
REAL_COUNTS = {"SPECTRE_V4": 16, "SPECTRE_V1": 3, "L1TF": 6, "MDS": 3}


def load_jsonl(path):
    with open(path) as f:
        return [json.loads(line) for line in f if line.strip()]


# ---------------------------------------------------------------------------
# _is_cond_branch
# ---------------------------------------------------------------------------

def test_is_cond_branch_detects_jcc_mnemonics():
    for mnemonic in ("je", "jne", "jae", "jb", "jg", "js", "jz", "jnbe"):
        assert synth_v4_benign._is_cond_branch(f"{mnemonic} 0x24 <.bb_0.1>") is True


def test_is_cond_branch_rejects_unconditional_jmp():
    assert synth_v4_benign._is_cond_branch("jmp 0x29 <.bb_0.1>") is False
    assert synth_v4_benign._is_cond_branch("jmpq *%rax") is False


def test_is_cond_branch_rejects_non_branch_instructions():
    assert synth_v4_benign._is_cond_branch("movq $1, (%r14,%rdi)") is False
    assert synth_v4_benign._is_cond_branch("cmpl $0x26, (%r14,%rdx)") is False
    assert synth_v4_benign._is_cond_branch("lock") is False


def test_is_cond_branch_empty_instruction():
    assert synth_v4_benign._is_cond_branch("") is False
    assert synth_v4_benign._is_cond_branch("   ") is False


# ---------------------------------------------------------------------------
# _reads_mem
# ---------------------------------------------------------------------------

def test_reads_mem_true_for_load_mem_is_source():
    assert synth_v4_benign._reads_mem("movl (%rax), %rbx") is True
    assert synth_v4_benign._reads_mem("movzbl (%r14,%rax), %ebx") is True


def test_reads_mem_false_for_reg_reg_mov():
    assert synth_v4_benign._reads_mem("mov %rax, %rbx") is False
    assert synth_v4_benign._reads_mem("movq %rax, %rbx") is False


def test_reads_mem_false_for_pure_store():
    # mem is the destination of a plain mov -- write only, no read.
    assert synth_v4_benign._reads_mem("movw $0xb26c, (%r14,%rdx)") is False


def test_reads_mem_true_for_rmw_with_mem_dest():
    # and/or/xor/inc/not/bts/btr/btc etc. with mem as destination READ the
    # memory operand before writing it back.
    assert synth_v4_benign._reads_mem("andl $0x53, (%r14,%rdi)") is True
    assert synth_v4_benign._reads_mem("incq (%r14,%rsi)") is True
    assert synth_v4_benign._reads_mem("btrl %ecx, (%r14,%rsi)") is True


def test_reads_mem_true_for_cmp_test_with_size_suffix():
    assert synth_v4_benign._reads_mem("cmpl $-0xc, (%r14,%rdx)") is True
    assert synth_v4_benign._reads_mem("testb %bl, (%r14,%rcx)") is True


def test_reads_mem_false_for_lea_despite_parens():
    # lea computes an address; it never actually accesses memory.
    assert synth_v4_benign._reads_mem("leaq 0xd89c(%rcx,%rax), %rbx") is False
    assert synth_v4_benign._reads_mem("leal (%rax,%rdx), %edx") is False


def test_reads_mem_respects_lock_prefix():
    assert synth_v4_benign._reads_mem("lock incq (%r14,%rsi)") is True
    assert synth_v4_benign._reads_mem("lock btrl %eax, (%r14,%rcx)") is True


def test_reads_mem_no_parens_is_false():
    assert synth_v4_benign._reads_mem("andq $0x1fff, %rdx") is False


def test_reads_mem_empty_or_malformed():
    assert synth_v4_benign._reads_mem("") is False
    assert synth_v4_benign._reads_mem("   ") is False
    assert synth_v4_benign._reads_mem("%al, %dl") is False


# ---------------------------------------------------------------------------
# fence_gadget_for_class dispatch
# ---------------------------------------------------------------------------

def test_v4_dispatch_matches_fence_gadget_exactly():
    seq = ["movq $1, (%r14,%rdi)", "andl $0x53, (%r14,%rbx)", "movq (%r14,%rdi), %rax"]
    assert synth_v4_benign.fence_gadget_for_class(seq, "SPECTRE_V4") == synth_v4_benign.fence_gadget(seq)


def test_v1_fences_after_cond_branch_not_after_plain_mov():
    seq = ["movq $1, %rax", "jae 0x24 <.bb_0.1>", "movq (%r14,%rdi), %rax"]
    fenced = synth_v4_benign.fence_gadget_for_class(seq, "SPECTRE_V1")
    assert fenced == ["movq $1, %rax", "jae 0x24 <.bb_0.1>", "lfence", "movq (%r14,%rdi), %rax"]

    seq2 = ["movq $1, %rax", "jne 0x30 <.bb_0.2>"]
    fenced2 = synth_v4_benign.fence_gadget_for_class(seq2, "SPECTRE_V1")
    assert fenced2 == ["movq $1, %rax", "jne 0x30 <.bb_0.2>", "lfence"]
    assert "lfence" not in synth_v4_benign.fence_gadget_for_class(["movq $1, %rax"], "SPECTRE_V1")


def test_l1tf_fences_before_load_not_before_reg_reg_mov():
    seq = ["mov %rax, %rbx", "movl (%rax), %rbx", "addq %rbx, %rcx"]
    fenced = synth_v4_benign.fence_gadget_for_class(seq, "L1TF")
    assert fenced == ["mov %rax, %rbx", "lfence", "movl (%rax), %rbx", "addq %rbx, %rcx"]


def test_mds_fences_before_load_not_before_reg_reg_mov():
    seq = ["mov %rax, %rbx", "movl (%rax), %rbx", "addq %rbx, %rcx"]
    fenced = synth_v4_benign.fence_gadget_for_class(seq, "MDS")
    assert fenced == ["mov %rax, %rbx", "lfence", "movl (%rax), %rbx", "addq %rbx, %rcx"]


def test_dispatch_does_not_mutate_input():
    seq = ["jae 0x24 <.bb_0.1>", "movl (%rax), %rbx"]
    original = list(seq)
    synth_v4_benign.fence_gadget_for_class(seq, "SPECTRE_V1")
    synth_v4_benign.fence_gadget_for_class(seq, "L1TF")
    assert seq == original


def test_dispatch_unknown_class_raises():
    try:
        synth_v4_benign.fence_gadget_for_class(["nop"], "BOGUS_CLASS")
        assert False, "expected ValueError"
    except ValueError:
        pass


def test_no_boundary_found_returns_copy_unchanged():
    # No conditional branch anywhere -> V1 fencer finds no boundary.
    seq = ["movq $1, %rax", "addq %rbx, %rcx"]
    fenced = synth_v4_benign.fence_gadget_for_class(seq, "SPECTRE_V1")
    assert fenced == seq
    assert fenced is not seq


# ---------------------------------------------------------------------------
# make_benign_variant / convert_all across classes
# ---------------------------------------------------------------------------

def test_make_benign_variant_v4_source_and_default_unchanged():
    rec = {"label": "SPECTRE_V4", "arch": "x86_64",
           "sequence": ["movq $1, (%r14,%rdi)", "movq (%r14,%rdi), %rax"],
           "group": "revizor_v4_1000000_deadbeef00", "source": "revizor_hw_i5_8300h"}
    out = synth_v4_benign.make_benign_variant(rec)
    assert out["label"] == "BENIGN"
    assert out["source"] == "revizor_hw_mitigated"
    assert out["group"] == "revizor_v4_1000000_deadbeef00_fenced"
    assert out["arch"] == "x86_64"


def test_make_benign_variant_v1_l1tf_mds_use_structural_source():
    for cls, mnemonic_seq in [
        ("SPECTRE_V1", ["jne 0x10 <.bb_0.1>", "movq (%r14,%rdi), %rax"]),
        ("L1TF", ["movl (%rax), %rbx"]),
        ("MDS", ["movl (%rax), %rbx"]),
    ]:
        rec = {"label": cls, "arch": "x86_64", "sequence": mnemonic_seq,
               "group": f"revizor_{cls.lower()}_violation-1", "source": "revizor_hw_i5_8300h"}
        out = synth_v4_benign.make_benign_variant(rec, vuln_class=cls)
        assert out["label"] == "BENIGN"
        assert out["source"] == "synth_mitigated_twin"
        assert out["group"].endswith("_fenced")
        assert out["arch"] == "x86_64"
        assert "lfence" in out["sequence"]


def test_make_benign_variant_infers_class_from_label_when_not_passed():
    rec = {"label": "L1TF", "arch": "x86_64", "sequence": ["movl (%rax), %rbx"],
           "group": "revizor_l1tf_violation-1", "source": "revizor_hw_i5_8300h"}
    out = synth_v4_benign.make_benign_variant(rec)
    assert out["source"] == "synth_mitigated_twin"
    assert "lfence" in out["sequence"]


def test_convert_all_and_cli_for_each_real_class(tmp_path):
    for cls, path in REAL_PATHS.items():
        records = load_jsonl(path)
        assert len(records) == REAL_COUNTS[cls]
        benign = synth_v4_benign.convert_all(records, cls)
        assert len(benign) == len(records)
        for r in benign:
            assert r["label"] == "BENIGN"
            assert r["group"].endswith("_fenced")

        out_path = tmp_path / f"{cls}_benign.jsonl"
        synth_v4_benign.main(["--in", str(path), "--out", str(out_path), "--vuln-class", cls])
        written = load_jsonl(out_path)
        assert len(written) == len(records)
        assert all(r["label"] == "BENIGN" for r in written)


def test_cli_warns_when_a_twin_is_identical_to_its_positive(tmp_path, capsys):
    in_path = tmp_path / "in.jsonl"
    with open(in_path, "w") as f:
        # No conditional branch anywhere in this "SPECTRE_V1" record -> the
        # fencer finds no boundary and the twin is identical to the input.
        f.write(json.dumps({"label": "SPECTRE_V1", "arch": "x86_64",
                             "sequence": ["movq $1, %rax", "addq %rbx, %rcx"],
                             "group": "revizor_spectre_v1_x", "source": "revizor_hw_i5_8300h"}) + "\n")
    out_path = tmp_path / "out.jsonl"
    synth_v4_benign.main(["--in", str(in_path), "--out", str(out_path), "--vuln-class", "SPECTRE_V1"])
    captured = capsys.readouterr()
    assert "WARNING" in captured.err
    written = load_jsonl(out_path)
    assert written[0]["sequence"] == ["movq $1, %rax", "addq %rbx, %rcx"]


def test_cli_default_vuln_class_is_spectre_v4_backward_compatible(tmp_path):
    out_path = tmp_path / "v4_out.jsonl"
    synth_v4_benign.main(["--in", str(REAL_PATHS["SPECTRE_V4"]), "--out", str(out_path)])
    written = load_jsonl(out_path)
    assert len(written) == 16
    assert all(r["source"] == "revizor_hw_mitigated" for r in written)
