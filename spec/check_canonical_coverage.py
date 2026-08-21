#!/usr/bin/env python3
"""check_canonical_coverage.py — Phase A gate for SPECDISCOVER_CANONICAL_OPS_PLAN.md.

Fails loudly if the canonical-op mapping leaves a large OTHER share on any
ISA, because everything downstream (MLM vocabulary, learned node features,
the GINE retrain) inherits that gap. Also reports, per ISA, which raw
mnemonics fall through to OTHER so an incomplete mapping is *named*, not
hidden inside an aggregate percentage.

Run: python3 spec/check_canonical_coverage.py
"""
from __future__ import annotations

import re
import sys
from collections import Counter, defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT / "v54"))

from isa_spec import load_engine          # noqa: E402
from asm_tokenizer import AsmTokenizer     # noqa: E402
import train_mlm as T                      # noqa: E402

OTHER_THRESHOLD_PCT = 5.0
_COMMENT = re.compile(r"[#;].*$")
SPEC_FOR_ARCH = {"x86_64": "x86_64.json", "arm64": "arm64.json",
                 "arm32": "arm64.json", "riscv64": "riscv.json"}


def riscv_sequences():
    corpus = ROOT / "riscv_corpus"
    for f in sorted(corpus.glob("*.s")):
        seq = []
        for raw in f.read_text(errors="ignore").splitlines():
            s = _COMMENT.sub("", raw).strip()
            if not s or s.startswith(".") or s.endswith(":") or ":" in s.split()[0]:
                continue
            seq.append(s)
        if seq:
            yield seq


def main():
    engines = {a: load_engine(f) for a, f in SPEC_FOR_ARCH.items()}

    by_arch = defaultdict(list)
    for r in T.load(T.TRAIN):
        by_arch[r.get("arch", "unknown")].append(r["sequence"])
    by_arch["riscv64"] = list(riscv_sequences())

    print(f"{'arch':10s} {'instrs':>9s} {'OTHER':>9s} {'OTHER%':>8s} {'distinct ops':>13s}")
    print("-" * 54)
    failed = []
    all_ops = set()
    for arch in ("x86_64", "arm64", "riscv64"):
        eng = engines[arch]
        seqs = by_arch.get(arch, [])
        ops = Counter()
        other_mnem = Counter()
        for seq in seqs:
            for instr in seq:
                s = instr.strip()
                if not s or s.startswith(".") or s.endswith(":"):
                    continue
                op = eng.canonical_op(s)
                ops[op] += 1
                if op == "OTHER":
                    other_mnem[s.split(None, 1)[0].rstrip(":").lower()] += 1
        total = sum(ops.values())
        other = ops["OTHER"]
        pct = 100.0 * other / max(total, 1)
        all_ops |= set(ops)
        flag = "" if pct < OTHER_THRESHOLD_PCT else "   <-- FAILS GATE"
        print(f"{arch:10s} {total:9d} {other:9d} {pct:7.2f}%{len(ops):13d}{flag}")
        if pct >= OTHER_THRESHOLD_PCT:
            failed.append(arch)
        if other_mnem:
            print(f"           top OTHER mnemonics: {other_mnem.most_common(12)}")

    print(f"\ndistinct canonical ops actually used across all ISAs: {len(all_ops)}")

    # Vocabulary transfer: how much of RISC-V's canonical token vocabulary is
    # already covered by what an x86/arm-trained encoder would have seen?
    tok = {a: AsmTokenizer(engines[a], mode="canonical") for a in engines}
    train_vocab = set()
    for arch in ("x86_64", "arm64"):
        for seq in by_arch.get(arch, []):
            train_vocab |= set(tok[arch].tokenize_sequence(seq))
    riscv_toks, oov = 0, 0
    for seq in by_arch["riscv64"]:
        for t in tok["riscv64"].tokenize_sequence(seq):
            riscv_toks += 1
            if t not in train_vocab:
                oov += 1
    print(f"x86+arm canonical token vocabulary: {len(train_vocab)}")
    print(f"RISC-V OOV against it: {oov}/{riscv_toks} ({100*oov/max(riscv_toks,1):.1f}%)"
          f"   [was 78.3% with mnemonic tokens]")

    if failed:
        print(f"\nGATE FAILED for: {failed}")
        sys.exit(1)
    print("\nGATE PASSED")


if __name__ == "__main__":
    main()
