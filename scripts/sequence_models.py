#!/usr/bin/env python3
"""
Scaffold for sequence encoders (BiLSTM/Transformer) over instruction tokens.
This is a training skeleton; not executed by default in the pipeline.
"""
from __future__ import annotations

import argparse
import json
from dataclasses import dataclass
from pathlib import Path
from typing import List, Dict

import torch
import torch.nn as nn
from torch.utils.data import Dataset, DataLoader


def load_jsonl(path: Path) -> List[dict]:
    data = []
    with path.open() as f:
        for line in f:
            line = line.strip()
            if line:
                data.append(json.loads(line))
    return data


def build_vocab(windows: List[dict], min_freq: int = 1) -> Dict[str, int]:
    from collections import Counter
    counter = Counter()
    for w in windows:
        tokens = w.get("features", {}).get("tokens") or []
        counter.update(tokens)
    vocab = {"<pad>": 0, "<unk>": 1}
    for tok, c in counter.items():
        if c >= min_freq and tok not in vocab:
            vocab[tok] = len(vocab)
    return vocab


class WindowDataset(Dataset):
    def __init__(self, windows: List[dict], vocab: Dict[str, int], max_len: int = 64):
        self.windows = windows
        self.vocab = vocab
        self.max_len = max_len

    def __len__(self):
        return len(self.windows)

    def __getitem__(self, idx):
        w = self.windows[idx]
        toks = w.get("features", {}).get("tokens") or []
        ids = [self.vocab.get(t, 1) for t in toks][: self.max_len]
        pad_len = self.max_len - len(ids)
        if pad_len > 0:
            ids += [0] * pad_len
        label = 1 if w.get("label") == "vuln" else 0
        return torch.tensor(ids, dtype=torch.long), torch.tensor(label, dtype=torch.long)


class BiLSTMEncoder(nn.Module):
    def __init__(self, vocab_size: int, d_model: int = 128, num_layers: int = 1, num_classes: int = 2):
        super().__init__()
        self.embed = nn.Embedding(vocab_size, d_model, padding_idx=0)
        self.lstm = nn.LSTM(d_model, d_model // 2, num_layers=num_layers, bidirectional=True, batch_first=True)
        self.fc = nn.Linear(d_model, num_classes)

    def forward(self, x):
        emb = self.embed(x)
        out, _ = self.lstm(emb)
        pooled = out.mean(dim=1)
        return self.fc(pooled)

    def encode(self, x):
        emb = self.embed(x)
        out, _ = self.lstm(emb)
        return out.mean(dim=1)


class TinyTransformer(nn.Module):
    def __init__(self, vocab_size: int, d_model: int = 128, nhead: int = 4, num_layers: int = 2, num_classes: int = 2):
        super().__init__()
        self.embed = nn.Embedding(vocab_size, d_model, padding_idx=0)
        encoder_layer = nn.TransformerEncoderLayer(d_model=d_model, nhead=nhead, batch_first=True)
        self.enc = nn.TransformerEncoder(encoder_layer, num_layers=num_layers)
        self.fc = nn.Linear(d_model, num_classes)

    def forward(self, x):
        mask = x.eq(0)
        emb = self.embed(x)
        out = self.enc(emb, src_key_padding_mask=mask)
        pooled = out.mean(dim=1)
        return self.fc(pooled)

    def encode(self, x):
        mask = x.eq(0)
        emb = self.embed(x)
        out = self.enc(emb, src_key_padding_mask=mask)
        return out.mean(dim=1)


def train_one_epoch(model, loader, optim, device):
    model.train()
    loss_fn = nn.CrossEntropyLoss()
    total = 0
    correct = 0
    for x, y in loader:
        x, y = x.to(device), y.to(device)
        optim.zero_grad()
        logits = model(x)
        loss = loss_fn(logits, y)
        loss.backward()
        optim.step()
        preds = logits.argmax(dim=1)
        total += y.size(0)
        correct += (preds == y).sum().item()
    return correct / max(1, total)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--in", dest="inp", type=Path, default=Path("data/dataset/arm64_windows.jsonl"))
    ap.add_argument("--model", choices=["bilstm", "transformer"], default="bilstm")
    ap.add_argument("--epochs", type=int, default=3)
    ap.add_argument("--batch-size", type=int, default=16)
    args = ap.parse_args()

    windows = load_jsonl(args.inp)
    vocab = build_vocab(windows)
    ds = WindowDataset(windows, vocab)
    dl = DataLoader(ds, batch_size=args.batch_size, shuffle=True)
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")

    if args.model == "bilstm":
        model = BiLSTMEncoder(len(vocab))
    else:
        model = TinyTransformer(len(vocab))
    model.to(device)
    optim = torch.optim.Adam(model.parameters(), lr=1e-3)

    for _ in range(args.epochs):
        acc = train_one_epoch(model, dl, optim, device)
        print({"train_accuracy": acc})


if __name__ == "__main__":
    main()


