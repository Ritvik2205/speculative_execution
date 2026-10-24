#!/usr/bin/env python3
"""check_leak_cond.py — pytest-free runner for the leak-conditioning token (A).

Mirrors tests/gen/test_leak_cond_vocab.py but uses plain asserts + a __main__
harness, so it runs under the bare `specexec` python (no pytest, no network).
Exit 0 = all pass, 1 = any failure. Use this on the cluster; the pytest file is
for a dev box that has pytest.
"""
import sys
import tempfile
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "gen"))
sys.path.insert(0, str(ROOT / "spec"))

from generator import (  # noqa: E402
    GenVocab, CondTransformerLM, encode_record, length_bucket,
    MIT_VALUES, LEN_BUCKETS, PAD, EOS,
)

SEQS = [["movq", "addq", "movq", "xorq", "jmp", "movq", "leaq", "movq"],
        ["movq", "addq", "cmpq", "jne", "movq"]]
CLASSES = ["BENIGN", "SPECTRE_V1", "L1TF"]
ARCHS = ["x86_64", "arm64"]

_FAILS = []


def check(name, cond):
    print(("  PASS " if cond else "  FAIL "), name)
    if not cond:
        _FAILS.append(name)


def _instr(min_count=1):
    c = Counter(t for s in SEQS for t in s)
    return sorted(t for t, n in c.items() if n >= min_count)


def _tiny_model(vocab):
    m = CondTransformerLM(len(vocab), dim=16, layers=1, heads=2, max_len=12)
    m.vocab = vocab
    return m


def noop_tests():
    print("== NO-OP (mits=None byte-identical to pre-leak-cond) ==")
    for lens in (None, LEN_BUCKETS):
        instr = _instr()
        v = GenVocab(instr, CLASSES, ARCHS, lens=lens, mits=None)
        expected = ([PAD, EOS]
                    + [f"<CLS_{c}>" for c in CLASSES]
                    + [f"<ARCH_{a}>" for a in ARCHS]
                    + [f"<LEN_{l}>" for l in (lens or [])]
                    + instr)
        check(f"[lens={lens}] itos == pre-change construction", v.itos == expected)
        check(f"[lens={lens}] no <MIT_ token", not any(t.startswith("<MIT_") for t in v.itos))
        check(f"[lens={lens}] mit_id empty", v.mit_id == {})
        ctrl = ([v.pad_id] + list(v.cls_id.values())
                + list(v.arch_id.values()) + list(v.len_id.values()))
        check(f"[lens={lens}] control_ids == pre-change", v.control_ids == ctrl)
        ok = True
        for cls in CLASSES:
            for arch in ARCHS:
                for s in SEQS:
                    base = encode_record(s, cls, arch, v, 64)
                    ok &= (encode_record(s, cls, arch, v, 64, mit="leak") == base)
                    ok &= (encode_record(s, cls, arch, v, 64, mit="safe") == base)
                    ok &= (encode_record(s, cls, arch, v, 64, mit=None) == base)
        check(f"[lens={lens}] encode ignores mit= arg (all class x arch x seq)", ok)


def on_tests():
    print("== LEAK-COND ON ==")
    v = GenVocab(_instr(), CLASSES, ARCHS, lens=LEN_BUCKETS, mits=MIT_VALUES)
    check("exactly 3 <MIT_> tokens",
          [t for t in v.itos if t.startswith("<MIT_")] == ["<MIT_leak>", "<MIT_safe>", "<MIT_unknown>"])
    check("mit ids are control tokens", all(i in v.control_ids for i in v.mit_id.values()))
    ids = encode_record(SEQS[0], "SPECTRE_V1", "x86_64", v, 64, mit="leak")
    check("prefix order [cls, arch, mit, len]",
          ids[0] == v.cls_id["SPECTRE_V1"] and ids[1] == v.arch_id["x86_64"]
          and ids[2] == v.mit_id["leak"]
          and ids[3] == v.len_id[length_bucket(len(SEQS[0]), v.lens)])
    check("unlabelled encode -> MIT_unknown",
          encode_record(SEQS[0], "SPECTRE_V1", "x86_64", v, 64)[2] == v.mit_id["unknown"])
    a = encode_record(SEQS[0], "SPECTRE_V1", "x86_64", v, 64, mit="leak")
    b = encode_record(SEQS[0], "SPECTRE_V1", "x86_64", v, 64, mit="safe")
    check("leak vs safe differ ONLY at mit slot",
          a[:2] == b[:2] and a[3:] == b[3:] and a[2] != b[2])


def sample_tests():
    print("== sample() + persistence (torch) ==")
    # seeds requested mit
    v = GenVocab(_instr(), CLASSES, ARCHS, lens=LEN_BUCKETS, mits=MIT_VALUES)
    m = _tiny_model(v)
    seen = {}
    orig = m.forward
    m.forward = lambda ids, pad: (seen.setdefault("f", ids[0].tolist()), orig(ids, pad))[1]
    m.sample("SPECTRE_V1", "x86_64", mit="safe", greedy=True, max_len=8)
    check("sample seeds [cls, arch, MIT_safe]",
          seen["f"][:3] == [v.cls_id["SPECTRE_V1"], v.arch_id["x86_64"], v.mit_id["safe"]])

    # default mit=leak
    v2 = GenVocab(_instr(), CLASSES, ARCHS, mits=MIT_VALUES)
    m2 = _tiny_model(v2)
    s2 = {}
    o2 = m2.forward
    m2.forward = lambda ids, pad: (s2.setdefault("f", ids[0].tolist()), o2(ids, pad))[1]
    m2.sample("SPECTRE_V1", "x86_64", greedy=True, max_len=8)
    check("sample default mit == leak", s2["f"][2] == v2.mit_id["leak"])

    # no-mit model: prefix is only [cls, arch]
    v3 = GenVocab(_instr(), CLASSES, ARCHS, mits=None)
    m3 = _tiny_model(v3)
    s3 = {}
    o3 = m3.forward
    m3.forward = lambda ids, pad: (s3.setdefault("f", ids[0].tolist()), o3(ids, pad))[1]
    m3.sample("SPECTRE_V1", "x86_64", mit="leak", greedy=True, max_len=8)
    check("no-mit model ignores mit=, prefix == [cls, arch]",
          s3["f"] == [v3.cls_id["SPECTRE_V1"], v3.arch_id["x86_64"]])

    # never emits a control token
    out = m.sample("SPECTRE_V1", "x86_64", mit="leak", max_len=12)
    check("sample never emits a control token",
          all(not t.startswith(("<CLS_", "<ARCH_", "<MIT_", "<LEN_")) and t not in (PAD, EOS)
              for t in out))

    # save/load round-trips mits
    import torch
    with tempfile.TemporaryDirectory() as d:
        p = Path(d) / "g.pt"
        m.save(p)
        m4 = CondTransformerLM.load(p)
        check("save/load round-trips mits + itos",
              m4.vocab.mits == list(MIT_VALUES) and m4.vocab.mit_id == v.mit_id
              and m4.vocab.itos == v.itos)
        # a genuinely leak-cond-OFF model (mits=None) saves + loads as no-op,
        # and simulate a pre-leak-cond checkpoint by dropping the "mits" key
        # (older save() never wrote it) -> load must still default to [].
        pp = Path(d) / "legacy.pt"
        mL = _tiny_model(GenVocab(_instr(), CLASSES, ARCHS, mits=None))
        mL.save(pp)
        ck = torch.load(pp, map_location="cpu", weights_only=False)
        ck.pop("mits")                       # mimic a checkpoint from before step A
        torch.save(ck, pp)
        m5 = CondTransformerLM.load(pp)
        check("legacy ckpt (no mits key) loads as no-op",
              m5.vocab.mits == [] and not any(t.startswith("<MIT_") for t in m5.vocab.itos))


def main():
    noop_tests()
    on_tests()
    sample_tests()
    print(f"\n{'ALL PASS' if not _FAILS else 'FAILURES: ' + ', '.join(_FAILS)}")
    return 1 if _FAILS else 0


if __name__ == "__main__":
    raise SystemExit(main())
