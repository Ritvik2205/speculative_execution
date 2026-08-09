#!/usr/bin/env python3
"""
generator.py — class-conditioned autoregressive generator over ISA tokens (Phase 2).

Vocabulary = normalized instruction tokens (asm_tokenizer, shared with the
Phase-1 encoder) + specials (<pad>/<eos>) + one conditioning token per
vulnerability class (<CLS_L1TF>, ...). A decoder-only Transformer is trained
with next-token prediction on sequences

    [<CLS_class>, instr_1, instr_2, ..., <eos>]

so the leading class token conditions generation. Sampling starts from
[<CLS_target>] and decodes autoregressively (temperature + top-k).

Every generated token is a valid normalized instruction, so output is
grammar-valid by construction; concrete assembly is produced by realize.py.

Small by design (d=128, 3 layers): CPU-trainable; scale (or swap for a LoRA
code-LLM) on the GPU cluster. Same corpus as the classifier.
"""

from __future__ import annotations

import sys
from collections import Counter
from pathlib import Path
from typing import Dict, List

import numpy as np
import torch
import torch.nn as nn

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "spec"))

PAD, EOS = "<pad>", "<eos>"


class GenVocab:
    def __init__(self, instr_tokens: List[str], classes: List[str],
                 archs: List[str]):
        self.classes = list(classes)
        self.archs = list(archs)
        self.cls_tokens = [f"<CLS_{c}>" for c in self.classes]
        self.arch_tokens = [f"<ARCH_{a}>" for a in self.archs]
        toks = [PAD, EOS] + self.cls_tokens + self.arch_tokens + list(instr_tokens)
        self.itos = toks
        self.stoi = {t: i for i, t in enumerate(toks)}
        self.pad_id = self.stoi[PAD]
        self.eos_id = self.stoi[EOS]
        self.cls_id = {c: self.stoi[f"<CLS_{c}>"] for c in self.classes}
        self.arch_id = {a: self.stoi[f"<ARCH_{a}>"] for a in self.archs}
        # control tokens never emitted mid-stream
        self.control_ids = ([self.pad_id] + list(self.cls_id.values())
                            + list(self.arch_id.values()))

    def __len__(self):
        return len(self.itos)

    @classmethod
    def build(cls, tokenized_seqs: List[List[str]], classes: List[str],
              archs: List[str], min_count: int = 5) -> "GenVocab":
        c = Counter(t for seq in tokenized_seqs for t in seq)
        instr = sorted(t for t, n in c.items() if n >= min_count)
        return cls(instr, classes, archs)


class CondTransformerLM(nn.Module):
    def __init__(self, vocab_size, dim=128, layers=3, heads=4, max_len=64,
                 dropout=0.1):
        super().__init__()
        self.dim = dim
        self.max_len = max_len
        self.tok = nn.Embedding(vocab_size, dim, padding_idx=0)
        self.pos = nn.Embedding(max_len, dim)
        layer = nn.TransformerEncoderLayer(
            d_model=dim, nhead=heads, dim_feedforward=dim * 4,
            dropout=dropout, batch_first=True)
        self.dec = nn.TransformerEncoder(layer, num_layers=layers)
        self.head = nn.Linear(dim, vocab_size)
        self.vocab: GenVocab | None = None

    def forward(self, ids, pad_mask):
        n = ids.size(1)
        causal = torch.triu(torch.ones(n, n, device=ids.device, dtype=torch.bool),
                            diagonal=1)
        pos = torch.arange(n, device=ids.device).unsqueeze(0)
        h = self.tok(ids) + self.pos(pos)
        h = self.dec(h, mask=causal, src_key_padding_mask=pad_mask)
        return self.head(h)

    # ---- sampling -------------------------------------------------------
    @torch.no_grad()
    def sample(self, target_class: str, target_arch: str, temperature=1.0,
               top_k=20, max_len=None, greedy=False) -> List[str]:
        self.eval()
        v = self.vocab
        dev = next(self.parameters()).device
        max_len = max_len or self.max_len
        ids = [v.cls_id[target_class], v.arch_id[target_arch]]  # class + arch prefix
        for _ in range(max_len - len(ids)):
            x = torch.tensor([ids], device=dev)
            pad = torch.zeros_like(x, dtype=torch.bool)
            logits = self.forward(x, pad)[0, -1]        # [V]
            # never emit pad / class / arch tokens mid-stream
            for cid in v.control_ids:
                logits[cid] = -1e9
            if greedy:
                nxt = int(logits.argmax())
            else:
                logits = logits / max(temperature, 1e-6)
                if top_k:
                    kth = torch.topk(logits, min(top_k, logits.numel())).values[-1]
                    logits[logits < kth] = -1e9
                probs = torch.softmax(logits, -1)
                nxt = int(torch.multinomial(probs, 1))
            if nxt == v.eos_id:
                break
            ids.append(nxt)
        return [v.itos[i] for i in ids[2:]]             # drop class + arch tokens

    # ---- persistence ----------------------------------------------------
    def save(self, path):
        torch.save({"state": self.state_dict(),
                    "cfg": {"vocab_size": len(self.vocab), "dim": self.dim,
                            "max_len": self.max_len},
                    "itos": self.vocab.itos, "classes": self.vocab.classes,
                    "archs": self.vocab.archs}, path)

    @classmethod
    def load(cls, path, map_location="cpu"):
        ck = torch.load(path, map_location=map_location, weights_only=False)
        c = ck["cfg"]
        m = cls(c["vocab_size"], dim=c["dim"], max_len=c["max_len"])
        m.load_state_dict(ck["state"])
        instr = [t for t in ck["itos"] if t not in (PAD, EOS)
                 and not t.startswith("<CLS_") and not t.startswith("<ARCH_")]
        m.vocab = GenVocab(instr, ck["classes"], ck["archs"])
        return m


def encode_record(seq_tokens: List[str], cls: str, arch: str, vocab: GenVocab,
                  max_len: int) -> List[int]:
    ids = [vocab.cls_id[cls], vocab.arch_id[arch]] + \
          [vocab.stoi[t] for t in seq_tokens if t in vocab.stoi]
    ids = ids[: max_len - 1] + [vocab.eos_id]
    return ids


def train(model, encoded: List[List[int]], epochs, pad_id, bs=64, lr=3e-3):
    opt = torch.optim.AdamW(model.parameters(), lr=lr)
    lossf = nn.CrossEntropyLoss(ignore_index=pad_id)
    for ep in range(epochs):
        model.train()
        order = np.random.permutation(len(encoded))
        tot = nb = 0.0
        for k in range(0, len(order), bs):
            batch = [encoded[i] for i in order[k:k + bs]]
            m = max(len(r) for r in batch)
            ids = np.full((len(batch), m), pad_id, dtype=np.int64)
            for r, row in enumerate(batch):
                ids[r, :len(row)] = row
            ids = torch.tensor(ids)
            pad = ids.eq(pad_id)
            logits = model(ids[:, :-1], pad[:, :-1])
            loss = lossf(logits.reshape(-1, logits.size(-1)),
                         ids[:, 1:].reshape(-1))
            opt.zero_grad(); loss.backward(); opt.step()
            tot += loss.item(); nb += 1
        print(f"  epoch {ep+1}/{epochs}  lm_loss={tot/max(nb,1):.4f}")
    return model
