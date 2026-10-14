"""Length-conditioning token plumbing (gen/generator.py, Step 4)."""
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "gen"))

from generator import GenVocab, encode_record, length_bucket, LEN_BUCKETS  # noqa: E402

INSTR = ["mov", "add", "cmp", "jae", "shl", "movzbl", "movb", "lea", "and"]


def _vocab(lens=None):
    return GenVocab(INSTR, ["SPECTRE_V1", "BENIGN"], ["x86_64", "arm64"], lens=lens)


def test_length_bucket_boundaries():
    assert length_bucket(1) == "short"
    assert length_bucket(8) == "short"
    assert length_bucket(9) == "med"
    assert length_bucket(16) == "med"
    assert length_bucket(17) == "long"
    assert length_bucket(40) == "long"


def test_vocab_without_lens_is_backward_compatible():
    v = _vocab(lens=None)
    assert v.lens == []
    assert v.len_id == {}
    # control ids are exactly pad + class + arch (no len)
    assert len(v.control_ids) == 1 + len(v.classes) + len(v.archs)


def test_vocab_with_lens_adds_tokens_and_control_ids():
    v = _vocab(lens=LEN_BUCKETS)
    assert v.lens == LEN_BUCKETS
    for b in LEN_BUCKETS:
        assert f"<LEN_{b}>" in v.stoi
        assert v.len_id[b] == v.stoi[f"<LEN_{b}>"]
    assert all(v.len_id[b] in v.control_ids for b in LEN_BUCKETS)


def test_encode_record_inserts_bucket_after_arch_when_lens_present():
    v = _vocab(lens=LEN_BUCKETS)
    seq = ["mov", "add", "cmp"]            # 3 instrs -> short
    ids = encode_record(seq, "SPECTRE_V1", "x86_64", v, max_len=64)
    assert ids[0] == v.cls_id["SPECTRE_V1"]
    assert ids[1] == v.arch_id["x86_64"]
    assert ids[2] == v.len_id["short"]      # bucket inserted after arch
    assert ids[-1] == v.eos_id


def test_encode_record_no_len_token_when_lens_absent():
    v = _vocab(lens=None)
    ids = encode_record(["mov", "add"], "SPECTRE_V1", "x86_64", v, max_len=64)
    assert ids[0] == v.cls_id["SPECTRE_V1"]
    assert ids[1] == v.arch_id["x86_64"]
    # next is an instruction token, not a len token
    assert ids[2] in (v.stoi["mov"], v.stoi["add"])
