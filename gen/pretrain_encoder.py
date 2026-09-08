#!/usr/bin/env python3
"""
pretrain_encoder.py — Task 6.3: pretrain-then-finetune the token generator (W6, P2).

The shipped generator (gen/generator.py, gen/train_generator.py) trains a
class-conditioned CondTransformerLM from scratch on the small SpecExec
classifier corpus (~5.5k sequences). The design always called for a two-stage
recipe instead — pretrain a causal LM on a large, unlabeled asm corpus so it
first learns "what valid code looks like" (opcode co-occurrence, register
def-use rhythm, epilogue/prologue idioms), THEN fine-tune that pretrained LM
on the small class-conditioned corpus so it only has to learn "what makes
this class distinctive," not the grammar of assembly itself. That stage never
got built. This module builds the pretrain half + proves it helps.

    pretrain(corpus_records, epochs, save_path, ...)
        Next-token (causal LM) pretrain of a CondTransformerLM (gen/generator.py)
        over ISA-neutral instruction tokens. Sequences are tokenized with
        MultiArchTokenizer(mode="canonical") — the same ISA-neutral vocabulary
        used by the Phase-1 encoder (spec/asm_tokenizer.py) — so a vocabulary
        learned on one ISA's code transfers to another. The GenVocab (opcode
        vocab + one <CLS_x> token per label + one <ARCH_x> token per arch) is
        built from `corpus_records` itself; records with no "label" field
        (the normal case for an external, unlabeled code corpus) fall back to
        a single generic "CODE" class token, and records with no "arch" field
        fall back to "unknown" — both resolved by spec/asm_tokenizer.py's
        SPEC_FOR_ARCH map. Training uses the SAME next-token loop as
        gen/generator.py's `train()`.

    heldout_perplexity(model, records, ...)
        Mean per-token perplexity (exp of mean cross-entropy over every
        non-pad next-token prediction) of `model` on a held-out record set —
        the metric Task 6.3 Step 1 gates on: pretrained-then-measured
        perplexity must be lower than a from-scratch (untrained, same init,
        same vocab) model's perplexity on the SAME held-out set.

Scale-up path (deferred — do not run at scale here): the full Task 6.3 Step 5
points this module's `pretrain()` at a large external asm corpus (e.g.
ExeBench / AnghaBench compiled output) with `--epochs` in the dozens, then
gen/train_generator.py fine-tunes the saved checkpoint on the class-conditioned
SpecExec corpus instead of training from scratch. generator.py's own docstring
(gen/generator.py:18-19) already flags the GPU-cluster alternative to scaling
this small transformer: swap CondTransformerLM for a LoRA adapter on a
pretrained code LLM (e.g. a CodeLlama/StarCoder checkpoint) and pretrain the
adapter instead of the whole model — same next-token objective, same
fine-tune step after, just a bigger frozen backbone. That swap is a training-
infra decision for the GPU cluster, not something this CPU-fast module needs
to implement; the interface (`pretrain`/`heldout_perplexity`) is written so
either backbone could sit behind it.

CLI (for the DEFERRED full run — do not invoke at scale from this repo without
first getting a real external corpus onto disk):

    python3 gen/pretrain_encoder.py --corpus <path/to/large_corpus.jsonl> \\
        --epochs 40 --save gen/pretrained.pt
"""

from __future__ import annotations

import argparse
import json
import math
import sys
from pathlib import Path
from typing import List, Optional

import numpy as np
import torch
import torch.nn as nn

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "spec"))
sys.path.insert(0, str(ROOT / "gen"))

from asm_tokenizer import MultiArchTokenizer          # noqa: E402
from generator import GenVocab, CondTransformerLM, encode_record, train  # noqa: E402

DEFAULT_MAX_LEN = 64
GENERIC_CLASS = "CODE"   # class token used when a corpus record has no label


def _seed_all(seed: int) -> None:
    torch.manual_seed(seed)
    np.random.seed(seed)


def _tokenize_corpus(records: List[dict], tokenizer: MultiArchTokenizer):
    return [tokenizer.tokenize_record(r) for r in records]


def build_vocab(records: List[dict], tokenizer: MultiArchTokenizer,
                 min_count: int = 2) -> "tuple[GenVocab, List[List[str]]]":
    """Tokenize `records` and build a GenVocab from them. Labels/archs missing
    from a record fall back to GENERIC_CLASS / "unknown" respectively, so an
    unlabeled external code corpus works the same as the labeled SpecExec
    corpus used for the fixture proof."""
    tokenized = _tokenize_corpus(records, tokenizer)
    classes = sorted({r.get("label", GENERIC_CLASS) for r in records})
    archs = sorted({r.get("arch", "unknown") for r in records})
    vocab = GenVocab.build(tokenized, classes, archs, min_count=min_count)
    return vocab, tokenized


def _encode_corpus(records: List[dict], tokenized: List[List[str]],
                    vocab: GenVocab, max_len: int) -> List[List[int]]:
    encoded = []
    for rec, toks in zip(records, tokenized):
        if not toks:
            continue
        cls = rec.get("label", GENERIC_CLASS)
        arch = rec.get("arch", "unknown")
        if cls not in vocab.cls_id or arch not in vocab.arch_id:
            continue  # unseen label/arch relative to the vocab this model was built with
        encoded.append(encode_record(toks, cls, arch, vocab, max_len))
    return encoded


def pretrain(corpus_records: List[dict], epochs: int, save_path=None,
             dim: int = 128, layers: int = 3, heads: int = 4,
             max_len: int = DEFAULT_MAX_LEN, min_count: int = 2, seed: int = 0,
             tokenizer: Optional[MultiArchTokenizer] = None) -> CondTransformerLM:
    """Next-token (causal LM) pretrain of a CondTransformerLM on `corpus_records`.

    Deterministic: seeds torch/numpy before building the vocab AND before
    constructing the model, so `pretrain(..., epochs=0)` on the same corpus
    and seed yields the exact same randomly-initialized weights as
    `pretrain(..., epochs=N)` before its training loop runs — the two are
    directly comparable "same init, trained vs. untrained" baselines.

    `epochs=0` performs vocab/model construction only (no training steps) —
    useful as the from-scratch baseline in heldout_perplexity comparisons.
    """
    _seed_all(seed)
    tok = tokenizer or MultiArchTokenizer(mode="canonical")
    vocab, tokenized = build_vocab(corpus_records, tok, min_count=min_count)
    encoded = _encode_corpus(corpus_records, tokenized, vocab, max_len)
    if not encoded:
        raise ValueError("pretrain corpus produced no encodable sequences "
                          "(empty after tokenization/min_count filtering)")

    model = CondTransformerLM(len(vocab), dim=dim, layers=layers, heads=heads,
                               max_len=max_len)
    model.vocab = vocab
    if epochs > 0:
        train(model, encoded, epochs, vocab.pad_id)
    if save_path is not None:
        model.save(save_path)
    return model


@torch.no_grad()
def heldout_perplexity(model: CondTransformerLM, records: List[dict],
                        tokenizer: Optional[MultiArchTokenizer] = None,
                        max_len: Optional[int] = None, batch_size: int = 64) -> float:
    """Mean per-token perplexity of `model` on `records`: exp(mean
    cross-entropy) over every non-pad next-token prediction in the held-out
    set, using model.vocab (so held-out records must share the model's
    class/arch tokens — records whose label/arch is OOV for this model are
    skipped, matching encode_record's OOV-instruction-token handling)."""
    vocab = model.vocab
    if vocab is None:
        raise ValueError("model.vocab is not set — build via pretrain() or CondTransformerLM.load()")
    tok = tokenizer or MultiArchTokenizer(mode="canonical")
    max_len = max_len or model.max_len
    tokenized = _tokenize_corpus(records, tok)
    encoded = _encode_corpus(records, tokenized, vocab, max_len)
    if not encoded:
        raise ValueError("held-out set produced no encodable sequences "
                          "(label/arch not in model.vocab?)")

    model.eval()
    lossf = nn.CrossEntropyLoss(ignore_index=vocab.pad_id, reduction="sum")
    total_loss, total_tokens = 0.0, 0
    for k in range(0, len(encoded), batch_size):
        batch = encoded[k:k + batch_size]
        m = max(len(r) for r in batch)
        ids = np.full((len(batch), m), vocab.pad_id, dtype=np.int64)
        for r, row in enumerate(batch):
            ids[r, :len(row)] = row
        ids_t = torch.tensor(ids)
        pad = ids_t.eq(vocab.pad_id)
        logits = model(ids_t[:, :-1], pad[:, :-1])
        targets = ids_t[:, 1:]
        loss = lossf(logits.reshape(-1, logits.size(-1)), targets.reshape(-1))
        n_tok = int((targets != vocab.pad_id).sum())
        total_loss += float(loss)
        total_tokens += n_tok
    mean_ce = total_loss / max(total_tokens, 1)
    return math.exp(mean_ce)


def _load_jsonl(path) -> List[dict]:
    return [json.loads(l) for l in open(path) if l.strip()]


def main():
    ap = argparse.ArgumentParser(
        description="Task 6.3 Steps 1-4: pretrain the token generator's "
                     "CondTransformerLM as a causal LM over a code corpus "
                     "(CPU-trainable proof of the recipe; the DEFERRED full "
                     "run points --corpus at a large external asm corpus). "
                     "Fine-tuning the saved checkpoint on the class-"
                     "conditioned SpecExec corpus is Step 5 (deferred) via "
                     "gen/train_generator.py.")
    ap.add_argument("--corpus", required=True, help="JSONL with 'sequence' "
                     "(+ optional 'label'/'arch') per record")
    ap.add_argument("--epochs", type=int, default=15)
    ap.add_argument("--save", required=True)
    ap.add_argument("--dim", type=int, default=128)
    ap.add_argument("--layers", type=int, default=3)
    ap.add_argument("--heads", type=int, default=4)
    ap.add_argument("--max-len", type=int, default=DEFAULT_MAX_LEN)
    ap.add_argument("--min-count", type=int, default=5)
    ap.add_argument("--seed", type=int, default=0)
    args = ap.parse_args()

    records = _load_jsonl(args.corpus)
    print(f"[pretrain] {len(records)} records loaded from {args.corpus}")
    model = pretrain(records, args.epochs, args.save, dim=args.dim,
                      layers=args.layers, heads=args.heads,
                      max_len=args.max_len, min_count=args.min_count,
                      seed=args.seed)
    print(f"[pretrain] saved -> {args.save}  vocab={len(model.vocab)} "
          f"classes={len(model.vocab.classes)} archs={model.vocab.archs}")


if __name__ == "__main__":
    main()
