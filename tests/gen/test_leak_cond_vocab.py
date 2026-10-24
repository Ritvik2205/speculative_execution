"""test_leak_cond_vocab.py — leak-conditioning token (step A).

Two things are proven here:
  1. NO-OP: a vocab built without `mits` (the default, `--leak-cond` off) is
     byte-identical to the pre-leak-cond vocab — same itos/stoi/control_ids,
     and encode_record produces identical ids whether or not a `mit=` arg is
     passed. This is the "flag off changes nothing" guarantee.
  2. ON: with `mits=MIT_VALUES` the prefix order is cls, arch, mit, len; an
     unlabelled record encodes as `unknown`; sample() seeds the requested mit
     (default leak) and never emits a control token; save/load round-trips.

The vocab/encode assertions are pure-python; the sample()/save-load ones need
torch, so they skip where torch is absent (the dev Mac) and run on the cluster.
"""
import sys
from pathlib import Path

import pytest

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "gen"))
sys.path.insert(0, str(ROOT / "spec"))

pytest.importorskip("torch")  # generator.py imports torch at module load
from generator import (  # noqa: E402
    GenVocab, CondTransformerLM, encode_record, length_bucket,
    MIT_VALUES, LEN_BUCKETS, PAD, EOS,
)

SEQS = [["movq", "addq", "movq", "xorq", "jmp", "movq", "leaq", "movq"],
        ["movq", "addq", "cmpq", "jne", "movq"]]
CLASSES = ["BENIGN", "SPECTRE_V1", "L1TF"]
ARCHS = ["x86_64", "arm64"]


def _instr(min_count=1):
    from collections import Counter
    c = Counter(t for s in SEQS for t in s)
    return sorted(t for t, n in c.items() if n >= min_count)


# --------------------------------------------------------------------------
# 1. NO-OP
# --------------------------------------------------------------------------
@pytest.mark.parametrize("lens", [None, LEN_BUCKETS])
def test_noop_vocab_structure(lens):
    """mits=None vocab == the exact pre-leak-cond construction."""
    instr = _instr()
    v = GenVocab(instr, CLASSES, ARCHS, lens=lens, mits=None)
    expected_itos = (
        [PAD, EOS]
        + [f"<CLS_{c}>" for c in CLASSES]
        + [f"<ARCH_{a}>" for a in ARCHS]
        + [f"<LEN_{l}>" for l in (lens or [])]   # NO mit tokens between arch and len
        + instr
    )
    assert v.itos == expected_itos
    assert not any(t.startswith("<MIT_") for t in v.itos)
    assert v.mit_id == {}
    # control_ids is the pre-change set (pad + cls + arch + len), no mit ids
    expected_ctrl = ([v.pad_id] + list(v.cls_id.values())
                     + list(v.arch_id.values()) + list(v.len_id.values()))
    assert v.control_ids == expected_ctrl


@pytest.mark.parametrize("lens", [None, LEN_BUCKETS])
def test_noop_encode_ignores_mit_arg(lens):
    """With a mits=None vocab, passing mit= must not change the encoding."""
    v = GenVocab(_instr(), CLASSES, ARCHS, lens=lens, mits=None)
    for cls in CLASSES:
        for arch in ARCHS:
            for s in SEQS:
                base = encode_record(s, cls, arch, v, 64)
                assert encode_record(s, cls, arch, v, 64, mit="leak") == base
                assert encode_record(s, cls, arch, v, 64, mit="safe") == base
                assert encode_record(s, cls, arch, v, 64, mit=None) == base


# --------------------------------------------------------------------------
# 2. ON
# --------------------------------------------------------------------------
def test_mit_tokens_present_and_controlled():
    v = GenVocab(_instr(), CLASSES, ARCHS, lens=LEN_BUCKETS, mits=MIT_VALUES)
    assert [t for t in v.itos if t.startswith("<MIT_")] == \
        ["<MIT_leak>", "<MIT_safe>", "<MIT_unknown>"]
    # every mit id is a control token (never emitted mid-stream)
    assert all(i in v.control_ids for i in v.mit_id.values())


def test_encode_prefix_order_and_default_unknown():
    v = GenVocab(_instr(), CLASSES, ARCHS, lens=LEN_BUCKETS, mits=MIT_VALUES)
    ids = encode_record(SEQS[0], "SPECTRE_V1", "x86_64", v, 64, mit="leak")
    assert ids[0] == v.cls_id["SPECTRE_V1"]
    assert ids[1] == v.arch_id["x86_64"]
    assert ids[2] == v.mit_id["leak"]                      # mit before len
    assert ids[3] == v.len_id[length_bucket(len(SEQS[0]), v.lens)]
    # unlabelled -> unknown (never assert an unverified leak status)
    assert encode_record(SEQS[0], "SPECTRE_V1", "x86_64", v, 64)[2] == v.mit_id["unknown"]


def test_leak_vs_safe_differ_only_at_mit_slot():
    v = GenVocab(_instr(), CLASSES, ARCHS, lens=LEN_BUCKETS, mits=MIT_VALUES)
    a = encode_record(SEQS[0], "SPECTRE_V1", "x86_64", v, 64, mit="leak")
    b = encode_record(SEQS[0], "SPECTRE_V1", "x86_64", v, 64, mit="safe")
    assert a[:2] == b[:2] and a[3:] == b[3:] and a[2] != b[2]


# --------------------------------------------------------------------------
# sample() + persistence (torch paths)
# --------------------------------------------------------------------------
def _tiny_model(vocab):
    m = CondTransformerLM(len(vocab), dim=16, max_len=12)  # layers=3,heads=4 defaults: load() rebuilds with defaults
    m.vocab = vocab
    return m


def test_sample_seeds_requested_mit():
    v = GenVocab(_instr(), CLASSES, ARCHS, lens=LEN_BUCKETS, mits=MIT_VALUES)
    m = _tiny_model(v)
    seen = {}
    orig = m.forward
    def cap(ids, pad):
        seen.setdefault("first", ids[0].tolist())
        return orig(ids, pad)
    m.forward = cap
    m.sample("SPECTRE_V1", "x86_64", mit="safe", greedy=True, max_len=8)
    assert seen["first"][0] == v.cls_id["SPECTRE_V1"]
    assert seen["first"][1] == v.arch_id["x86_64"]
    assert seen["first"][2] == v.mit_id["safe"]


def test_sample_default_mit_is_leak():
    v = GenVocab(_instr(), CLASSES, ARCHS, mits=MIT_VALUES)
    m = _tiny_model(v)
    seen = {}
    orig = m.forward
    m.forward = lambda ids, pad: (seen.setdefault("first", ids[0].tolist()), orig(ids, pad))[1]
    m.sample("SPECTRE_V1", "x86_64", greedy=True, max_len=8)   # no mit= -> leak
    assert seen["first"][2] == v.mit_id["leak"]


def test_sample_noop_model_has_no_mit_prefix():
    """A model whose vocab has no mit tokens seeds only [cls, arch]."""
    v = GenVocab(_instr(), CLASSES, ARCHS, mits=None)
    m = _tiny_model(v)
    seen = {}
    orig = m.forward
    m.forward = lambda ids, pad: (seen.setdefault("first", ids[0].tolist()), orig(ids, pad))[1]
    m.sample("SPECTRE_V1", "x86_64", mit="leak", greedy=True, max_len=8)  # mit ignored
    assert len(seen["first"]) == 2
    assert seen["first"] == [v.cls_id["SPECTRE_V1"], v.arch_id["x86_64"]]


def test_sample_never_emits_control_token():
    v = GenVocab(_instr(), CLASSES, ARCHS, lens=LEN_BUCKETS, mits=MIT_VALUES)
    m = _tiny_model(v)
    out = m.sample("SPECTRE_V1", "x86_64", mit="leak", max_len=12)
    for t in out:
        assert not t.startswith(("<CLS_", "<ARCH_", "<MIT_", "<LEN_"))
        assert t not in (PAD, EOS)


def test_save_load_roundtrips_mits(tmp_path):
    v = GenVocab(_instr(), CLASSES, ARCHS, lens=LEN_BUCKETS, mits=MIT_VALUES)
    m = _tiny_model(v)
    p = tmp_path / "g.pt"
    m.save(p)
    m2 = CondTransformerLM.load(p)
    assert m2.vocab.mits == list(MIT_VALUES)
    assert m2.vocab.mit_id == v.mit_id
    assert m2.vocab.itos == v.itos
    # a legacy checkpoint without "mits" must still load (no-op path)
    import torch
    ck = torch.load(p, map_location="cpu", weights_only=False)
    ck.pop("mits")
    torch.save(ck, p)
    m3 = CondTransformerLM.load(p)
    assert m3.vocab.mits == []
    assert not any(t.startswith("<MIT_") for t in m3.vocab.itos)
