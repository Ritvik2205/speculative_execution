"""Tests for oracle/revizor/synth_v4_benign.py

Verifies `fence_gadget` (the SSBP-mitigation fence-insertion primitive) and
the CLI that turns the 16 real hardware SPECTRE_V4 gadgets into V4-shaped
BENIGN twins.
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

REAL_V4_PATH = REPO_ROOT / "eval" / "data" / "revizor_v4_real.jsonl"


def load_jsonl(path):
    with open(path) as f:
        return [json.loads(line) for line in f if line.strip()]


# ---------------------------------------------------------------------------
# instr_writes_mem
# ---------------------------------------------------------------------------

def test_plain_store_writes_mem():
    assert synth_v4_benign.instr_writes_mem("movw $0xb26c, (%r14,%rdx)") is True


def test_plain_load_does_not_write_mem():
    assert synth_v4_benign.instr_writes_mem("movzbl (%r14,%rax), %ebx") is False


def test_rmw_arith_with_mem_dest_writes_mem():
    assert synth_v4_benign.instr_writes_mem("andl $0x53, (%r14,%rdi)") is True
    assert synth_v4_benign.instr_writes_mem("subl $-0x29, (%r14,%rdx)") is True


def test_rmw_arith_with_mem_src_does_not_write_mem():
    # mem operand is the SOURCE (first operand), register is the destination.
    assert synth_v4_benign.instr_writes_mem("xorl (%r14,%rsi), %eax") is False
    assert synth_v4_benign.instr_writes_mem("orb (%r14,%rdx), %al") is False


def test_single_operand_inplace_rmw_writes_mem():
    assert synth_v4_benign.instr_writes_mem("incq (%r14,%rsi)") is True
    assert synth_v4_benign.instr_writes_mem("notb (%r14,%rcx)") is True
    assert synth_v4_benign.instr_writes_mem("negl (%r14,%rbx)") is True


def test_lock_prefixed_rmw_writes_mem():
    assert synth_v4_benign.instr_writes_mem("lock subl $-0x29, (%r14,%rdx)") is True
    assert synth_v4_benign.instr_writes_mem("lock incq (%r14,%rsi)") is True


def test_cmp_and_test_never_write_even_with_mem_as_last_operand():
    assert synth_v4_benign.instr_writes_mem("cmpw $0x26, (%r14,%rdx)") is False
    assert synth_v4_benign.instr_writes_mem("testb %bl, (%r14,%rcx)") is False
    assert synth_v4_benign.instr_writes_mem("testw $0xeff0, (%r14,%rdi)") is False


def test_bit_test_does_not_write_but_bts_btr_btc_do():
    assert synth_v4_benign.instr_writes_mem("btl %eax, %ecx") is False
    assert synth_v4_benign.instr_writes_mem("btrl %ecx, (%r14,%rsi)") is True
    assert synth_v4_benign.instr_writes_mem("btsl $0x6b, (%r14,%rsi)") is True
    assert synth_v4_benign.instr_writes_mem("btcw $0x1, (%r14,%rdx)") is True


def test_register_only_instruction_does_not_write_mem():
    assert synth_v4_benign.instr_writes_mem("cmovoq %rax, %rcx") is False
    assert synth_v4_benign.instr_writes_mem("notw %dx") is False
    assert synth_v4_benign.instr_writes_mem("bswapq %rcx") is False


def test_malformed_operand_only_line_does_not_write_mem():
    # These stray "%al, %dl" style lines show up in the real converted
    # corpus (an objdump-artifact); they have no mnemonic, so must be
    # treated as non-writing rather than crashing.
    assert synth_v4_benign.instr_writes_mem("%al, %dl") is False


def test_empty_instruction_does_not_write_mem():
    assert synth_v4_benign.instr_writes_mem("") is False
    assert synth_v4_benign.instr_writes_mem("   ") is False


# ---------------------------------------------------------------------------
# fence_gadget
# ---------------------------------------------------------------------------

def test_fence_after_store_between_store_and_dependent_load():
    seq = ["andq $0x1fff, %rdi", "movq $1, (%r14,%rdi)", "movq (%r14,%rdi), %rax"]
    fenced = synth_v4_benign.fence_gadget(seq)
    store_idx = fenced.index("movq $1, (%r14,%rdi)")
    load_idx = fenced.index("movq (%r14,%rdi), %rax")
    assert fenced[store_idx + 1] == "lfence"
    assert load_idx > store_idx + 1


def test_fence_after_rmw_write():
    seq = ["andl $0x53, (%r14,%rdi)", "movq (%r14,%rdi), %rax"]
    fenced = synth_v4_benign.fence_gadget(seq)
    assert fenced == ["andl $0x53, (%r14,%rdi)", "lfence", "movq (%r14,%rdi), %rax"]


def test_no_fence_when_no_memory_write():
    seq = ["movq (%r14,%rdi), %rax", "addq %rax, %rbx", "cmpw $0x26, (%r14,%rdx)"]
    fenced = synth_v4_benign.fence_gadget(seq)
    assert fenced == seq
    assert "lfence" not in fenced


def test_fence_count_matches_write_count():
    seq = [
        "movq $1, (%r14,%rdi)",       # write
        "movq (%r14,%rdi), %rax",     # read only
        "andl $0x53, (%r14,%rbx)",    # write (RMW)
        "cmpw $0x26, (%r14,%rdx)",    # never writes
        "incq (%r14,%rsi)",           # write (in-place RMW)
    ]
    fenced = synth_v4_benign.fence_gadget(seq)
    n_writes = sum(1 for i in seq if synth_v4_benign.instr_writes_mem(i))
    assert n_writes == 3
    assert len(fenced) == len(seq) + n_writes
    assert fenced.count("lfence") == n_writes


def test_fence_gadget_does_not_mutate_input():
    seq = ["movq $1, (%r14,%rdi)", "movq (%r14,%rdi), %rax"]
    original = list(seq)
    synth_v4_benign.fence_gadget(seq)
    assert seq == original


def test_fence_gadget_deterministic():
    seq = ["movq $1, (%r14,%rdi)", "andl $0x53, (%r14,%rbx)", "movq (%r14,%rdi), %rax"]
    assert synth_v4_benign.fence_gadget(seq) == synth_v4_benign.fence_gadget(seq)


# ---------------------------------------------------------------------------
# make_benign_variant / convert_all
# ---------------------------------------------------------------------------

def test_make_benign_variant_shape():
    rec = {"label": "SPECTRE_V4", "arch": "x86_64",
           "sequence": ["movq $1, (%r14,%rdi)", "movq (%r14,%rdi), %rax"],
           "group": "revizor_v4_1000000_deadbeef00", "source": "revizor_hw_i5_8300h"}
    out = synth_v4_benign.make_benign_variant(rec)
    assert out["label"] == "BENIGN"
    assert out["arch"] == "x86_64"
    assert out["group"] == "revizor_v4_1000000_deadbeef00_fenced"
    assert out["source"] == "revizor_hw_mitigated"
    assert "lfence" in out["sequence"]


def test_make_benign_variant_group_still_parses_same_gen_seed():
    """The _fenced suffix must not break the revizor_v4_<seed>_<hash> prefix
    that oracle/revizor/build_hwv4_dataset.py's extract_gen_seed() parses --
    a gadget and its fenced twin must land on the same side of the split."""
    import re
    rec = {"label": "SPECTRE_V4", "arch": "x86_64",
           "sequence": ["movq $1, (%r14,%rdi)"],
           "group": "revizor_v4_5555555_abc123", "source": "revizor_hw_i5_8300h"}
    out = synth_v4_benign.make_benign_variant(rec)
    m = re.match(r"^revizor_v4_(\d+)_", out["group"])
    assert m is not None
    assert m.group(1) == "5555555"


def test_convert_all_real_v4_produces_16_benign_records():
    real_v4 = load_jsonl(REAL_V4_PATH)
    benign = synth_v4_benign.convert_all(real_v4)
    assert len(benign) == len(real_v4) == 16
    for r in benign:
        assert r["label"] == "BENIGN"
        assert r["source"] == "revizor_hw_mitigated"
        assert r["group"].endswith("_fenced")


def test_convert_all_every_real_v4_gadget_gets_at_least_one_fence():
    """Every real hardware V4 gadget has a store->load pair by construction
    (that's what Revizor found), so fencing it must insert >=1 lfence."""
    real_v4 = load_jsonl(REAL_V4_PATH)
    benign = synth_v4_benign.convert_all(real_v4)
    for r in benign:
        assert "lfence" in r["sequence"], f"no lfence inserted for {r['group']}"


def test_cli_main_writes_expected_file(tmp_path):
    out_path = tmp_path / "revizor_v4_benign.jsonl"
    synth_v4_benign.main(["--in", str(REAL_V4_PATH), "--out", str(out_path)])
    records = load_jsonl(out_path)
    assert len(records) == 16
    assert all(r["label"] == "BENIGN" for r in records)


def test_cli_main_deterministic(tmp_path):
    out1 = tmp_path / "a.jsonl"
    out2 = tmp_path / "b.jsonl"
    synth_v4_benign.main(["--in", str(REAL_V4_PATH), "--out", str(out1)])
    synth_v4_benign.main(["--in", str(REAL_V4_PATH), "--out", str(out2)])
    assert load_jsonl(out1) == load_jsonl(out2)
