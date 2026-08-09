#!/usr/bin/env python3
"""
train_mlm.py — contextual masked-LM assembly encoder (Phase 1, Transformer tier).

Each normalized instruction (asm_tokenizer) is one vocabulary token; a window is
a short sequence of such tokens. A small BERT-style Transformer is trained with
masked-token prediction, giving *contextual* per-instruction embeddings (unlike
the static PPMI+SVD tier in asm_encoder.py). Sequence embedding = mean of the
encoder's final hidden states. ``MlmEncoder.embed_sequence`` matches the
AsmEncoder API so it drops into ablation_features.py.

Tiny by design (vocab ~500, d=64, 2 layers): trains in seconds/epoch on CPU;
scale up (d, layers, epochs, sub-word ops) on the GPU cluster.

Run:
  python3 spec/train_mlm.py            # short real train + RF ablation vs hand-58
  python3 spec/train_mlm.py --smoke    # 1-epoch smoke test
"""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

import numpy as np
import torch
import torch.nn as nn
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score, f1_score

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

import inline_features as hf  # noqa: E402
from isa_spec import load_engine  # noqa: E402
from asm_tokenizer import AsmTokenizer  # noqa: E402

TRAIN = ROOT / "v54" / "data" / "v54_train.jsonl"
TEST = ROOT / "v54" / "data" / "v54_test.jsonl"

PAD, MASK, UNK = "<pad>", "<mask>", "<unk>"


def load(path):
    return [json.loads(l) for l in open(path) if l.strip()]


class MlmEncoder(nn.Module):
    def __init__(self, vocab_size, dim=64, layers=2, heads=2, max_len=256):
        super().__init__()
        self.dim = dim
        self.max_len = max_len
        self.layers = layers
        self.heads = heads
        self.vocab_size = vocab_size
        self.tok_emb = nn.Embedding(vocab_size, dim, padding_idx=0)
        self.pos_emb = nn.Embedding(max_len, dim)
        enc_layer = nn.TransformerEncoderLayer(
            d_model=dim, nhead=heads, dim_feedforward=dim * 4,
            dropout=0.1, batch_first=True)
        # enable_nested_tensor=False: the nested-tensor padding fast path uses an
        # op unimplemented on MPS; disabling keeps training native on Apple GPU
        # (and is behavior-neutral — nested tensor is only a perf optimization).
        self.encoder = nn.TransformerEncoder(enc_layer, num_layers=layers,
                                             enable_nested_tensor=False)
        self.mlm_head = nn.Linear(dim, vocab_size)
        self.vocab = {}     # token -> id (set after construction)

    def forward(self, ids, key_padding_mask):
        n = ids.size(1)
        pos = torch.arange(n, device=ids.device).unsqueeze(0)
        h = self.tok_emb(ids) + self.pos_emb(pos)
        h = self.encoder(h, src_key_padding_mask=key_padding_mask)
        return h

    @torch.no_grad()
    def embed_instructions(self, tokens):
        """Contextual per-instruction embeddings, aligned 1:1 with ``tokens``
        (truncated to max_len). Returns [n, dim]."""
        self.eval()
        dev = next(self.parameters()).device
        ids = [self.vocab.get(t, self.vocab[UNK]) for t in tokens][: self.max_len]
        if not ids:
            return np.zeros((0, self.dim), dtype=np.float32)
        x = torch.tensor([ids], device=dev)
        pad = torch.zeros_like(x, dtype=torch.bool)
        h = self.forward(x, pad)[0]           # [n, dim]
        return h.cpu().numpy().astype(np.float32)

    @torch.no_grad()
    def embed_sequence(self, tokens):
        h = self.embed_instructions(tokens)
        if h.shape[0] == 0:
            return np.zeros(self.dim, dtype=np.float32)
        return h.mean(0).astype(np.float32)

    def save(self, path):
        torch.save({
            "state": self.state_dict(),
            "vocab": self.vocab,
            "cfg": {"vocab_size": self.vocab_size, "dim": self.dim,
                    "layers": self.layers, "heads": self.heads,
                    "max_len": self.max_len},
        }, path)

    @classmethod
    def load(cls, path, map_location="cpu"):
        ck = torch.load(path, map_location=map_location, weights_only=False)
        c = ck["cfg"]
        m = cls(c["vocab_size"], dim=c["dim"], layers=c["layers"],
                heads=c["heads"], max_len=c["max_len"])
        m.load_state_dict(ck["state"])
        m.vocab = ck["vocab"]
        return m


def build_vocab(tokenized, min_count=5):
    from collections import Counter
    c = Counter(t for seq in tokenized for t in seq)
    toks = [PAD, MASK, UNK] + sorted(t for t, n in c.items() if n >= min_count)
    return {t: i for i, t in enumerate(toks)}


def batches(seqs, vocab, max_len, bs):
    order = np.random.permutation(len(seqs))
    for k in range(0, len(seqs), bs):
        idx = order[k:k + bs]
        rows = [[vocab.get(t, vocab[UNK]) for t in seqs[i]][:max_len] for i in idx]
        m = max(len(r) for r in rows)
        ids = np.zeros((len(rows), m), dtype=np.int64)
        pad = np.ones((len(rows), m), dtype=bool)
        for r, row in enumerate(rows):
            ids[r, :len(row)] = row
            pad[r, :len(row)] = False
        yield torch.tensor(ids), torch.tensor(pad)


def train(model, seqs, vocab, epochs, max_len, mask_p=0.15, bs=64, lr=3e-3):
    opt = torch.optim.AdamW(model.parameters(), lr=lr)
    lossf = nn.CrossEntropyLoss(ignore_index=-100)
    mask_id, pad_id = vocab[MASK], vocab[PAD]
    dev = next(model.parameters()).device
    for ep in range(epochs):
        model.train()
        tot = nb = 0.0
        for ids, pad in batches(seqs, vocab, max_len, bs):
            ids, pad = ids.to(dev), pad.to(dev)
            labels = ids.clone()
            probs = torch.rand(ids.shape, device=dev)
            do_mask = (probs < mask_p) & (~pad)
            labels[~do_mask] = -100
            ids_in = ids.clone()
            ids_in[do_mask] = mask_id
            h = model(ids_in, pad)
            logits = model.mlm_head(h)
            loss = lossf(logits.view(-1, logits.size(-1)), labels.view(-1))
            opt.zero_grad(); loss.backward(); opt.step()
            tot += loss.item(); nb += 1
        print(f"  epoch {ep+1}/{epochs}  mlm_loss={tot/max(nb,1):.4f}")
    return model


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--smoke", action="store_true")
    ap.add_argument("--epochs", type=int, default=8)
    ap.add_argument("--dim", type=int, default=64)
    ap.add_argument("--layers", type=int, default=2)
    ap.add_argument("--heads", type=int, default=2)
    ap.add_argument("--lr", type=float, default=3e-3,
                    help="lower this for deeper models (3e-3 diverges at 4 layers)")
    ap.add_argument("--device", default="auto",
                    help="cpu | mps | cuda | auto")
    ap.add_argument("--save", type=str, default=None,
                    help="path to save trained MlmEncoder (e.g. spec/mlm.pt)")
    args = ap.parse_args()

    torch.manual_seed(42); np.random.seed(42)
    if args.device == "auto":
        args.device = ("cuda" if torch.cuda.is_available()
                       else "mps" if torch.backends.mps.is_available() else "cpu")
    device = torch.device(args.device)
    print(f"device={device} dim={args.dim} layers={args.layers} heads={args.heads}")

    engine = load_engine("base.json")
    tok = AsmTokenizer(engine)
    train_rows, test_rows = load(TRAIN), load(TEST)
    tr_tok = [tok.tokenize_sequence(r["sequence"]) for r in train_rows]
    te_tok = [tok.tokenize_sequence(r["sequence"]) for r in test_rows]

    vocab = build_vocab(tr_tok)
    print(f"vocab={len(vocab)} train={len(tr_tok)} test={len(te_tok)}")

    epochs = 1 if args.smoke else args.epochs
    model = MlmEncoder(len(vocab), dim=args.dim, layers=args.layers, heads=args.heads)
    model.vocab = vocab
    model.to(device)
    train(model, tr_tok, vocab, epochs, model.max_len, lr=args.lr)

    if args.save:
        model.save(args.save)
        print(f"saved encoder -> {args.save}")

    if args.smoke:
        v = model.embed_sequence(te_tok[0])
        print(f"smoke ok: sample embedding shape={v.shape} norm={np.linalg.norm(v):.3f}")
        return

    # RF ablation: MLM-seq-embedding vs hand-58 on locked test.
    labels = sorted({r["label"] for r in train_rows} | {r["label"] for r in test_rows})
    lid = {c: i for i, c in enumerate(labels)}
    ytr = np.array([lid[r["label"]] for r in train_rows])
    yte = np.array([lid[r["label"]] for r in test_rows])

    Xtr_mlm = np.vstack([model.embed_sequence(s) for s in tr_tok])
    Xte_mlm = np.vstack([model.embed_sequence(s) for s in te_tok])
    Xtr_hand = np.vstack([hf.compute_inline_features(r["sequence"]) for r in train_rows])
    Xte_hand = np.vstack([hf.compute_inline_features(r["sequence"]) for r in test_rows])

    print(f"\n{'feature set':20s} dim   test-acc  macro-F1")
    print("-" * 48)
    for name, (Xtr, Xte) in {
        "E MLM-64 (learned) ": (Xtr_mlm, Xte_mlm),
        "F hand+MLM         ": (np.hstack([Xtr_hand, Xtr_mlm]),
                                np.hstack([Xte_hand, Xte_mlm])),
        "A hand-58 (ref)    ": (Xtr_hand, Xte_hand),
    }.items():
        clf = RandomForestClassifier(n_estimators=300, n_jobs=-1,
                                     random_state=42, class_weight="balanced")
        clf.fit(Xtr, ytr)
        pred = clf.predict(Xte)
        print(f"{name} {Xtr.shape[1]:4d}   "
              f"{accuracy_score(yte,pred)*100:6.2f}%   "
              f"{f1_score(yte,pred,average='macro')*100:6.2f}%")


if __name__ == "__main__":
    main()
