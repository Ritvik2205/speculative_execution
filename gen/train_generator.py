#!/usr/bin/env python3
"""
train_generator.py — Phase 2: train the class-conditioned generator and verify
that conditioning actually works.

Steps:
  1. tokenize the corpus (spec asm_tokenizer, shared with the encoder)
  2. train CondTransformerLM  (sequences prefixed with a class token)
  3. VERIFY conditioning: for each class, sample K gadgets and ask an
     independent classifier (Phase-1 MlmEncoder embedding -> RandomForest,
     trained on REAL data) which class they look like.
        hit-rate(c) = P(clf predicts c | generator conditioned on c)
     Conditioning works if hit-rate >> class prior.
  4. report novelty (unseen in train) and length stats.

Prereq:  python3 spec/train_mlm.py --epochs 10 --save spec/mlm.pt
Run:     python3 gen/train_generator.py            # train + verify + save
         python3 gen/train_generator.py --smoke     # 1-epoch smoke
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import Counter
from pathlib import Path

import numpy as np
import torch
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT / "gen"))

from isa_spec import load_engine            # noqa: E402
from asm_tokenizer import AsmTokenizer      # noqa: E402
from train_mlm import MlmEncoder            # noqa: E402
from generator import (GenVocab, CondTransformerLM, encode_record, train)  # noqa: E402
from inline_features import _X86_ONLY, _ARM_ONLY  # noqa: E402  ISA-decisive opcode sets

TRAIN = ROOT / "v54" / "data" / "v54_train.jsonl"
TEST = ROOT / "v54" / "data" / "v54_test.jsonl"
MLM = ROOT / "spec" / "mlm.pt"
SEED = 42
MAX_LEN = 64
ARCHS = ["x86_64", "arm64"]


def load(path):
    return [json.loads(l) for l in open(path) if l.strip()]


def norm_arch(a: str) -> str:
    return "arm64" if str(a).startswith("arm") else "x86_64"


def isa_purity(norm_seq, target_arch):
    """Fraction of ISA-decisive opcodes that are native to target_arch.
    Returns None if the sequence has no ISA-decisive opcodes."""
    tgt = _X86_ONLY if target_arch == "x86_64" else _ARM_ONLY
    oth = _ARM_ONLY if target_arch == "x86_64" else _X86_ONLY
    hit = dec = 0
    for instr in norm_seq:
        op = instr.split()[0] if instr.split() else ""
        if op in tgt:
            hit += 1; dec += 1
        elif op in oth:
            dec += 1
    return (hit / dec) if dec else None


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--smoke", action="store_true")
    ap.add_argument("--epochs", type=int, default=15)
    ap.add_argument("--k", type=int, default=40, help="samples/class for verification")
    ap.add_argument("--save", type=str, default=str(ROOT / "gen" / "generator.pt"))
    args = ap.parse_args()
    torch.manual_seed(SEED); np.random.seed(SEED)

    engine = load_engine("base.json")
    tok = AsmTokenizer(engine)
    train_rows, test_rows = load(TRAIN), load(TEST)
    tr_tok = [tok.tokenize_sequence(r["sequence"]) for r in train_rows]
    classes = sorted({r["label"] for r in train_rows})

    vocab = GenVocab.build(tr_tok, classes, ARCHS, min_count=5)
    print(f"gen vocab={len(vocab)}  classes={len(classes)}  archs={ARCHS}  train={len(train_rows)}")

    encoded = [encode_record(t, r["label"], norm_arch(r.get("arch", "x86_64")),
                             vocab, MAX_LEN)
               for t, r in zip(tr_tok, train_rows) if len(t) >= 2]
    model = CondTransformerLM(len(vocab), max_len=MAX_LEN)
    model.vocab = vocab
    train(model, encoded, 1 if args.smoke else args.epochs, vocab.pad_id)

    if not args.smoke:
        model.save(args.save)
        print(f"saved generator -> {args.save}")

    # ---- verification: independent classifier (MLM embed -> RF on REAL data)
    print("\n[verify] training reference classifier (MLM+RF on real data)...")
    mlm = MlmEncoder.load(MLM)
    lid = {c: i for i, c in enumerate(classes)}
    Xtr = np.vstack([mlm.embed_sequence(t) for t in tr_tok])
    ytr = np.array([lid[r["label"]] for r in train_rows])
    rf = RandomForestClassifier(n_estimators=300, n_jobs=-1, random_state=SEED,
                                class_weight="balanced").fit(Xtr, ytr)
    te_tok = [tok.tokenize_sequence(r["sequence"]) for r in test_rows]
    Xte = np.vstack([mlm.embed_sequence(t) for t in te_tok])
    yte = np.array([lid[r["label"]] for r in test_rows])
    print(f"[verify] reference clf real-test acc={accuracy_score(yte, rf.predict(Xte))*100:.2f}% "
          f"(sanity: it can recognize real gadgets)")

    prior = Counter(r["label"] for r in train_rows)
    tot = sum(prior.values())
    train_set = {tuple(t) for t in tr_tok}

    k = 5 if args.smoke else args.k
    all_hits, all_priors, all_purity = [], [], {}
    for arch in ARCHS:
        print(f"\n[verify] arch={arch}  sampling {k}/class")
        print(f"{'class':26s} hit-rate  lift   ISA-purity  novelty  mean-len")
        print("-" * 72)
        arch_purity = []
        for c in classes:
            gen_tok, lens, novel, purs = [], [], 0, []
            for _ in range(k):
                s = model.sample(c, arch, temperature=1.0, top_k=20, max_len=MAX_LEN)
                if len(s) < 2:
                    continue
                gen_tok.append(s); lens.append(len(s))
                if tuple(s) not in train_set:
                    novel += 1
                p = isa_purity(s, arch)
                if p is not None:
                    purs.append(p)
            if not gen_tok:
                print(f"{c:26s}  (no valid samples)")
                continue
            Xg = np.vstack([mlm.embed_sequence(s) for s in gen_tok])
            hit = np.mean(rf.predict(Xg) == lid[c])
            pr = prior[c] / tot
            all_hits.append(hit); all_priors.append(pr)
            pur = np.mean(purs) if purs else float("nan")
            if purs:
                arch_purity.append(np.mean(purs))
            lift = hit / pr if pr > 0 else float("inf")
            print(f"{c:26s}  {hit*100:5.1f}%  {lift:5.1f}x   {pur*100:6.1f}%    "
                  f"{novel/len(gen_tok)*100:5.1f}%   {np.mean(lens):5.1f}")
        all_purity[arch] = np.mean(arch_purity) if arch_purity else float("nan")
        print("-" * 72)
        print(f"{'arch mean ISA-purity':26s}  ->  {all_purity[arch]*100:.1f}% "
              f"(fraction of ISA-decisive opcodes native to {arch})")

    mh, mp = np.mean(all_hits), np.mean(all_priors)
    print(f"\nConditioning {'WORKS' if mh > 3*mp else 'WEAK'}: "
          f"mean hit-rate {mh*100:.1f}% vs prior {mp*100:.1f}% ({mh/mp:.1f}x lift)")
    print("ISA-purity by target arch: " +
          ", ".join(f"{a}={all_purity[a]*100:.1f}%" for a in ARCHS))


if __name__ == "__main__":
    main()
