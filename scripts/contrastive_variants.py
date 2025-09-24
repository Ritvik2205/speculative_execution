#!/usr/bin/env python3
"""
Scaffold for contrastive learning using compiler variants as positives.
Not executed by default. Uses the sequence encoders defined in sequence_models.py
"""
from __future__ import annotations

import argparse
import json
from collections import defaultdict
from pathlib import Path
from typing import List

import torch
import torch.nn as nn
from torch.utils.data import Dataset, DataLoader

from sequence_models import build_vocab, TinyTransformer, BiLSTMEncoder


def load_jsonl(path: Path) -> List[dict]:
    data = []
    with path.open() as f:
        for line in f:
            line = line.strip()
            if line:
                data.append(json.loads(line))
    return data


def canonical_source_id(path: str) -> str:
    name = Path(path).name
    for marker in ("_clang_", "_gcc_"):
        if marker in name:
            return name.split(marker)[0]
    return name.rsplit(".", 1)[0]


class PairDataset(Dataset):
    def __init__(self, windows: List[dict], vocab):
        groups = defaultdict(list)
        for w in windows:
            sid = canonical_source_id(w.get("source_file", ""))
            groups[sid].append(w)
        self.pairs = []
        for lst in groups.values():
            if len(lst) >= 2:
                # Make simple adjacent pairs
                for i in range(len(lst) - 1):
                    self.pairs.append((lst[i], lst[i + 1], 1))  # positive
        # Negatives: cross-source pairs (sampled)
        for i in range(min(len(self.pairs), len(windows) - 1)):
            self.pairs.append((windows[i], windows[-i - 1], 0))
        self.vocab = vocab

    def __len__(self):
        return len(self.pairs)

    def encode(self, w):
        toks = w.get("features", {}).get("tokens") or []
        ids = [self.vocab.get(t, 1) for t in toks][:64]
        if len(ids) < 64:
            ids += [0] * (64 - len(ids))
        return torch.tensor(ids, dtype=torch.long)

    def __getitem__(self, idx):
        a, b, y = self.pairs[idx]
        return self.encode(a), self.encode(b), torch.tensor(y, dtype=torch.float32)


class NTXentLoss(nn.Module):
    def __init__(self, temperature: float = 0.1):
        super().__init__()
        self.temperature = temperature

    def forward(self, z1, z2, labels):
        # Simple cosine similarity loss for positive/negative pairs
        z1 = nn.functional.normalize(z1, dim=1)
        z2 = nn.functional.normalize(z2, dim=1)
        sims = (z1 * z2).sum(dim=1) / self.temperature
        pos = labels.eq(1).float()
        neg = 1.0 - pos
        loss = - (pos * torch.log(torch.sigmoid(sims) + 1e-8) + neg * torch.log(1 - torch.sigmoid(sims) + 1e-8)).mean()
        return loss


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--in", dest="inp", type=Path, default=Path("data/dataset/arm64_windows.jsonl"))
    ap.add_argument("--encoder", choices=["bilstm", "transformer"], default="transformer")
    args = ap.parse_args()

    windows = load_jsonl(args.inp)
    vocab = build_vocab(windows)
    ds = PairDataset(windows, vocab)
    dl = DataLoader(ds, batch_size=16, shuffle=True)

    if args.encoder == "transformer":
        enc = TinyTransformer(len(vocab))
    else:
        enc = BiLSTMEncoder(len(vocab))

    proj = nn.Linear(2, 64)  # project logits to embedding space (toy)
    params = list(enc.parameters()) + list(proj.parameters())
    opt = torch.optim.Adam(params, lr=1e-3)
    loss_fn = NTXentLoss()

    enc.train()
    for _ in range(2):  # few epochs placeholder
        for a, b, y in dl:
            za = proj(enc(a))
            zb = proj(enc(b))
            loss = loss_fn(za, zb, y)
            opt.zero_grad()
            loss.backward()
            opt.step()
        print({"contrastive_epoch_loss": float(loss.detach().cpu())})


if __name__ == "__main__":
    main()


