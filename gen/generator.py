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
                 archs: List[str], lens: List[str] = None):
        self.classes = list(classes)
        self.archs = list(archs)
        # length-bucket conditioning tokens (Step 4). Optional and additive: a
        # vocab built without `lens` is byte-identical to before, so old
        # checkpoints load and sample unchanged.
        self.lens = list(lens) if lens else []
        self.cls_tokens = [f"<CLS_{c}>" for c in self.classes]
        self.arch_tokens = [f"<ARCH_{a}>" for a in self.archs]
        self.len_tokens = [f"<LEN_{l}>" for l in self.lens]
        toks = ([PAD, EOS] + self.cls_tokens + self.arch_tokens
                + self.len_tokens + list(instr_tokens))
        self.itos = toks
        self.stoi = {t: i for i, t in enumerate(toks)}
        self.pad_id = self.stoi[PAD]
        self.eos_id = self.stoi[EOS]
        self.cls_id = {c: self.stoi[f"<CLS_{c}>"] for c in self.classes}
        self.arch_id = {a: self.stoi[f"<ARCH_{a}>"] for a in self.archs}
        self.len_id = {l: self.stoi[f"<LEN_{l}>"] for l in self.lens}
        # control tokens never emitted mid-stream
        self.control_ids = ([self.pad_id] + list(self.cls_id.values())
                            + list(self.arch_id.values())
                            + list(self.len_id.values()))

    def __len__(self):
        return len(self.itos)

    @classmethod
    def build(cls, tokenized_seqs: List[List[str]], classes: List[str],
              archs: List[str], min_count: int = 5,
              lens: List[str] = None) -> "GenVocab":
        c = Counter(t for seq in tokenized_seqs for t in seq)
        instr = sorted(t for t, n in c.items() if n >= min_count)
        return cls(instr, classes, archs, lens=lens)


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
               top_k=20, max_len=None, greedy=False, target_len=None) -> List[str]:
        self.eval()
        v = self.vocab
        dev = next(self.parameters()).device
        max_len = max_len or self.max_len
        ids = [v.cls_id[target_class], v.arch_id[target_arch]]  # class + arch prefix
        # length conditioning (Step 4): if the vocab carries <LEN_*> tokens and a
        # target bucket is requested, seed it after the arch token. Ignored
        # (back-compatible) for a model trained without length tokens.
        if target_len is not None and getattr(v, "len_id", None) and target_len in v.len_id:
            ids.append(v.len_id[target_len])
        n_prefix = len(ids)
        for _ in range(max_len - len(ids)):
            x = torch.tensor([ids], device=dev)
            pad = torch.zeros_like(x, dtype=torch.bool)
            logits = self.forward(x, pad)[0, -1]        # [V]
            # never emit pad / class / arch tokens mid-stream
            for cid in v.control_ids:
                logits[cid] = -1e9
            # arch purity: if a per-arch disallow mask is attached
            # (arch_purity.attach_arch_masks), forbid every instruction token not
            # valid for target_arch in one masked assignment — the other ISA's
            # opcodes and the symbol/number tokens both go.
            dis = getattr(self, "_arch_disallow", None)
            if dis is not None and target_arch in dis:
                logits[dis[target_arch].to(logits.device)] = -1e9
            # splice safety: if a per-class disallow mask is attached
            # (splice_safety.attach_splice_masks), forbid control flow the
            # class's oracle cannot model or the splice cannot host (e.g. a
            # mid-body `ret` that strands the spliced transmit sink). Keyed by
            # class so a class's own mechanism (V2 indirect call, RETBLEED ret)
            # is never removed.
            sdis = getattr(self, "_splice_disallow", None)
            if sdis is not None and target_class in sdis:
                logits[sdis[target_class].to(logits.device)] = -1e9
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
        return [v.itos[i] for i in ids[n_prefix:]]      # drop class/arch/len prefix

    # ---- persistence ----------------------------------------------------
    def save(self, path):
        torch.save({"state": self.state_dict(),
                    "cfg": {"vocab_size": len(self.vocab), "dim": self.dim,
                            "max_len": self.max_len},
                    "itos": self.vocab.itos, "classes": self.vocab.classes,
                    "archs": self.vocab.archs, "lens": self.vocab.lens}, path)

    @classmethod
    def load(cls, path, map_location="cpu"):
        ck = torch.load(path, map_location=map_location, weights_only=False)
        c = ck["cfg"]
        m = cls(c["vocab_size"], dim=c["dim"], max_len=c["max_len"])
        m.load_state_dict(ck["state"])
        instr = [t for t in ck["itos"] if t not in (PAD, EOS)
                 and not t.startswith("<CLS_") and not t.startswith("<ARCH_")
                 and not t.startswith("<LEN_")]
        # lens persisted since Step 4; older checkpoints omit it -> no length
        # tokens, byte-identical behaviour.
        m.vocab = GenVocab(instr, ck["classes"], ck["archs"], lens=ck.get("lens"))
        return m


# Length buckets by instruction-token count, shared by training and sampling so
# the <LEN_*> token means the same thing both ways. Boundaries match the
# diversity sweep's S/M/L (gen/length_diversity_sweep.py bucket_of 8,16).
LEN_BUCKETS = ["short", "med", "long"]
# opt-in 4-bucket scheme: splits the open-ended `long` tail into long (17--32)
# and xlong (>32). SPECTRE_V4 leaks average ~52 instrs and the yield rose
# monotone to the end of the `long` bucket, so xlong lets a retrain probe
# whether the V4 ceiling climbs further (paper expansion). Enabled only when a
# vocab's `lens` includes "xlong"; the 3-bucket default is unchanged.
LEN_BUCKETS_X = ["short", "med", "long", "xlong"]


def length_bucket(n_instr: int, buckets: List[str] = None) -> str:
    """Map an instruction count to a length-bucket name. With the default
    (3-bucket) scheme: short <=8, med 9--16, long >16. If `buckets` contains
    "xlong", the 4-bucket scheme is used instead: short <=8, med 9--16,
    long 17--32, xlong >32. Passing the vocab's own `lens` keeps the bucketing
    consistent with whatever tokens the checkpoint actually has."""
    if n_instr <= 8:
        return "short"
    if n_instr <= 16:
        return "med"
    if buckets and "xlong" in buckets and n_instr > 32:
        return "xlong"
    return "long"


def encode_record(seq_tokens: List[str], cls: str, arch: str, vocab: GenVocab,
                  max_len: int) -> List[int]:
    prefix = [vocab.cls_id[cls], vocab.arch_id[arch]]
    # if the vocab carries length tokens, insert the record's own length bucket
    # after the arch token so the model learns length as a conditioning signal.
    if vocab.len_id:
        instr_tokens = [t for t in seq_tokens if t in vocab.stoi]
        prefix.append(vocab.len_id[length_bucket(len(instr_tokens), vocab.lens)])
    ids = prefix + [vocab.stoi[t] for t in seq_tokens if t in vocab.stoi]
    ids = ids[: max_len - 1] + [vocab.eos_id]
    return ids


def train(model, encoded: List[List[int]], epochs, pad_id, bs=64, lr=3e-3):
    # Use the GPU when one is present -- without this the transformer trains on
    # CPU no matter what node it runs on, which is intractable on a large
    # (100k+ record) corpus. sample() is already device-aware (it reads the
    # parameters' device), so only the training path needed moving.
    dev = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    model.to(dev)
    n_batches = (len(encoded) + bs - 1) // bs
    print(f"  [train] device={dev} records={len(encoded)} "
          f"batches/epoch={n_batches} bs={bs}", flush=True)
    opt = torch.optim.AdamW(model.parameters(), lr=lr)
    lossf = nn.CrossEntropyLoss(ignore_index=pad_id)
    # Print intra-epoch progress ~10x/epoch so a long run isn't silent for hours.
    log_every = max(1, n_batches // 10)
    for ep in range(epochs):
        model.train()
        order = np.random.permutation(len(encoded))
        tot = nb = 0.0
        for bi, k in enumerate(range(0, len(order), bs)):
            batch = [encoded[i] for i in order[k:k + bs]]
            m = max(len(r) for r in batch)
            ids = np.full((len(batch), m), pad_id, dtype=np.int64)
            for r, row in enumerate(batch):
                ids[r, :len(row)] = row
            ids = torch.tensor(ids).to(dev)
            pad = ids.eq(pad_id)
            logits = model(ids[:, :-1], pad[:, :-1])
            loss = lossf(logits.reshape(-1, logits.size(-1)),
                         ids[:, 1:].reshape(-1))
            opt.zero_grad(); loss.backward(); opt.step()
            tot += loss.item(); nb += 1
            if (bi + 1) % log_every == 0:
                print(f"    epoch {ep+1}/{epochs}  batch {bi+1}/{n_batches}  "
                      f"lm_loss={tot/max(nb,1):.4f}", flush=True)
        print(f"  epoch {ep+1}/{epochs}  lm_loss={tot/max(nb,1):.4f}", flush=True)
    return model
