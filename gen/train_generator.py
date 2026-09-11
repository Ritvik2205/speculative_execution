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

Pretrain -> fine-tune (Task 6.3 Step 5):
  --init-from <pretrained.pt> initializes the class-conditioned generator from
  a checkpoint saved by gen/pretrain_encoder.py instead of training from
  scratch. The fine-tune vocabulary is still built from the v54 TRAIN corpus
  as always (that's the vocab the fine-tuned generator ships with); weights
  are then transferred from the pretrained checkpoint BY TOKEN STRING: for
  every token the fine-tune vocab shares with the pretrained vocab, the token
  embedding row (tok.weight) and output-head row (head.weight/head.bias) are
  copied from the pretrained tensor — tokens only in the fine-tune vocab keep
  their fresh random init. Vocab-independent weights (positional embedding,
  transformer encoder layers) are copied directly when shapes match (same
  dim/max_len/layer count); a shape mismatch skips just that tensor with a
  warning instead of crashing.

      python3 gen/train_generator.py --init-from gen/pretrained.pt

  Omitting --init-from is byte-identical to the original from-scratch path.
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


def init_from_pretrained(pretrained_path, finetune_vocab, dim=128, layers=3,
                          heads=4, max_len=MAX_LEN, dropout=0.1):
    """Build a fresh CondTransformerLM sized for `finetune_vocab` and initialize
    it from a pretrained checkpoint (gen/pretrain_encoder.py's `pretrain()` /
    CondTransformerLM.save()).

    Vocab-independent weights (positional embedding, transformer encoder
    layers) are copied directly from the pretrained checkpoint's state_dict
    whenever the tensor exists in both models with matching shape (i.e. same
    dim/max_len/layer count); a shape mismatch — or a layer that doesn't
    exist in one of the two models (e.g. differing layer counts) — skips just
    that tensor with a printed warning and leaves the fresh init in place,
    rather than crashing.

    The token embedding (`tok.weight`) and output head (`head.weight` /
    `head.bias`) are vocab-dependent, so they are transferred BY TOKEN STRING
    instead of by index: for every token in `finetune_vocab` that also exists
    in the pretrained checkpoint's vocab, the pretrained embedding row / head
    row+bias for that token is copied into the same token's row in the new
    model. Tokens that exist only in `finetune_vocab` (not seen in the
    pretrain corpus) keep their fresh random init. If the two checkpoints'
    embedding dim differs, the row-copy is impossible (rows are a different
    width) so it's skipped entirely with a warning, and the new model keeps
    fresh random tok/head weights throughout.

    Returns (model, report); report includes "overlap" (how many of the
    fine-tune vocab's tokens were initialized from pretrained weights).
    """
    pretrained = CondTransformerLM.load(pretrained_path)
    pv = pretrained.vocab

    model = CondTransformerLM(len(finetune_vocab), dim=dim, layers=layers,
                              heads=heads, max_len=max_len, dropout=dropout)
    model.vocab = finetune_vocab

    # ---- vocab-independent weights: copy directly when shapes match -------
    pretrained_state = pretrained.state_dict()
    model_state = model.state_dict()
    copied, skipped = [], []
    for name, p_tensor in pretrained_state.items():
        if name in ("tok.weight", "head.weight", "head.bias"):
            continue  # vocab-dependent — handled below by token-string transfer
        if name not in model_state or model_state[name].shape != p_tensor.shape:
            print(f"[init-from] WARNING: skipping '{name}' "
                  f"(shape {tuple(p_tensor.shape)} incompatible with fine-tune model)")
            skipped.append(name)
            continue
        model_state[name].copy_(p_tensor)
        copied.append(name)
    model.load_state_dict(model_state)

    # ---- vocab-dependent weights: transfer by token string -----------------
    overlap = 0
    dim_match = pretrained.tok.weight.shape[1] == model.tok.weight.shape[1]
    if not dim_match:
        print(f"[init-from] WARNING: embedding dim mismatch "
              f"(pretrained={pretrained.tok.weight.shape[1]} vs "
              f"fine-tune={model.tok.weight.shape[1]}) — skipping token "
              f"embedding / head transfer, keeping fresh init")
    else:
        with torch.no_grad():
            for tok, idx in finetune_vocab.stoi.items():
                pidx = pv.stoi.get(tok)
                if pidx is None:
                    continue
                model.tok.weight[idx] = pretrained.tok.weight[pidx]
                model.head.weight[idx] = pretrained.head.weight[pidx]
                model.head.bias[idx] = pretrained.head.bias[pidx]
                overlap += 1

    report = {
        "overlap": overlap,
        "finetune_vocab_size": len(finetune_vocab),
        "pretrained_vocab_size": len(pv),
        "dim_match": dim_match,
        "copied_layers": copied,
        "skipped_layers": skipped,
    }
    print(f"[init-from] {pretrained_path}: token overlap "
          f"{overlap}/{len(finetune_vocab)} fine-tune vocab tokens initialized "
          f"from pretrained (pretrained vocab={len(pv)}); "
          f"{len(copied)} transformer tensors copied, {len(skipped)} skipped")
    return model, report


def _build_model(vocab, init_from, max_len=MAX_LEN):
    """Construct the CondTransformerLM used for fine-tuning: from scratch
    (current/default behavior) or initialized from a pretrained checkpoint
    via --init-from."""
    if init_from:
        model, _report = init_from_pretrained(init_from, vocab, max_len=max_len)
        return model
    model = CondTransformerLM(len(vocab), max_len=max_len)
    model.vocab = vocab
    return model


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
    ap.add_argument("--init-from", type=str, default=None,
                     help="path to a pretrained CondTransformerLM checkpoint "
                          "(gen/pretrain_encoder.py --save ...); vocab-transfer "
                          "initializes the fine-tune generator from it instead "
                          "of training from scratch")
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
    model = _build_model(vocab, args.init_from, max_len=MAX_LEN)
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
