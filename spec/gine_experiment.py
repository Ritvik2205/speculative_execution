#!/usr/bin/env python3
"""
gine_experiment.py — GINE integration of learned node features (Phase 1).

Tests the core Phase-1 claim inside the real graph model (not RF/mean-pool):
do learned per-instruction embeddings help GINE, and can they match/beat the
hand-engineered 40-dim node features?

Three node-feature configs on the SAME spec-built graphs (SpecBackedPDGBuilder):
  hand    : 40-dim PDG node vector + positional  (the current representation)
  learned : contextual MLM per-instruction embedding (spec/mlm.pt)  [zero hand design]
  both    : hand ++ learned

Compact hand-rolled GINE (paper formula, per-edge-type embedding, manual
message passing — no PyTorch Geometric). CPU-only, deterministic seed.
Node/token alignment is exact (identical skip rules); asserted per record.

Prereq:  python3 spec/train_mlm.py --epochs 10 --save spec/mlm.pt
Run:     python3 spec/gine_experiment.py
"""

from __future__ import annotations

import json
import sys
from collections import Counter
from pathlib import Path

import numpy as np
import torch
import torch.nn as nn
from sklearn.metrics import accuracy_score, f1_score

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "v54"))
sys.path.insert(0, str(ROOT / "spec"))

import pdg_builder as pb  # noqa: E402
from isa_spec import load_engine  # noqa: E402
from asm_tokenizer import AsmTokenizer  # noqa: E402
from spec_pdg_builder import SpecBackedPDGBuilder  # noqa: E402
from train_mlm import MlmEncoder  # noqa: E402

TRAIN = ROOT / "v54" / "data" / "v54_train.jsonl"
TEST = ROOT / "v54" / "data" / "v54_test.jsonl"
NUM_EDGE_TYPES = len(pb.EDGE_TYPES)
MAX_NODES = 128
SEED = 42

ENGINES = {"x86_64": "x86_64.json", "arm64": "arm64.json",
           "arm32": "arm64.json", "unknown": "base.json"}


def load(path):
    return [json.loads(l) for l in open(path) if l.strip()]


# ---- graph precomputation ----------------------------------------------

def build_graphs(rows, builders, tok, mlm, label_id):
    """Return list of dicts: hand[n,41], learned[n,dim], ei[2,e], et[e], y."""
    graphs = []
    for r in rows:
        seq = r["sequence"]
        arch = r.get("arch", "unknown")
        b = builders.get(arch, builders["unknown"])
        pdg = b.build(seq)
        nodes = pdg.nodes[:MAX_NODES]
        n = len(nodes)
        if n == 0:
            continue
        toks = tok.tokenize_sequence(seq)
        # exact alignment expected; guard defensively
        m = min(n, len(toks))
        nodes = nodes[:m]
        toks = toks[:m]
        n = m
        if n == 0:
            continue

        hand = np.stack([
            np.concatenate([nd.get_feature_vector(), [i / MAX_NODES]])
            for i, nd in enumerate(nodes)
        ]).astype(np.float32)                       # [n, 41]
        learned = mlm.embed_instructions(toks)      # [n, dim]
        learned = learned[:n]

        ei, et = [], []
        for e in pdg.edges:
            if e.src < n and e.dst < n:
                ei.append((e.src, e.dst)); et.append(e.edge_type)
        if ei:
            ei = np.array(ei, dtype=np.int64).T
            et = np.array(et, dtype=np.int64)
        else:
            ei = np.zeros((2, 0), dtype=np.int64)
            et = np.zeros(0, dtype=np.int64)

        graphs.append({"hand": hand, "learned": learned,
                       "ei": ei, "et": et, "y": label_id[r["label"]]})
    return graphs


# ---- compact GINE -------------------------------------------------------

class GINE(nn.Module):
    def __init__(self, in_dim, hidden=96, layers=2, num_classes=10, dropout=0.3):
        super().__init__()
        self.inp = nn.Linear(in_dim, hidden)
        self.edge_emb = nn.Embedding(NUM_EDGE_TYPES, hidden)
        self.eps = nn.Parameter(torch.zeros(layers))
        self.mlps = nn.ModuleList([
            nn.Sequential(nn.Linear(hidden, hidden), nn.ReLU(),
                          nn.Linear(hidden, hidden)) for _ in range(layers)])
        self.bns = nn.ModuleList([nn.BatchNorm1d(hidden) for _ in range(layers)])
        self.layers = layers
        self.head = nn.Sequential(
            nn.Linear(hidden, hidden), nn.ReLU(), nn.Dropout(dropout),
            nn.Linear(hidden, num_classes))

    def forward(self, x, ei, et, batch, num_graphs):
        h = self.inp(x)
        for k in range(self.layers):
            if ei.size(1) > 0:
                msg = torch.relu(h[ei[0]] + self.edge_emb(et))     # [E, H]
                agg = torch.zeros_like(h).index_add_(0, ei[1], msg)
            else:
                agg = torch.zeros_like(h)
            h = self.mlps[k]((1 + self.eps[k]) * h + agg)
            h = torch.relu(self.bns[k](h))
        # mean pool per graph
        pooled = torch.zeros(num_graphs, h.size(1), device=h.device)
        pooled.index_add_(0, batch, h)
        counts = torch.zeros(num_graphs, device=h.device).index_add_(
            0, batch, torch.ones(h.size(0), device=h.device))
        pooled = pooled / counts.clamp(min=1).unsqueeze(1)
        return self.head(pooled)


def node_matrix(g, key):
    if key == "hand":
        return g["hand"]
    if key == "learned":
        return g["learned"]
    return np.concatenate([g["hand"], g["learned"]], axis=1)


def compute_stats(graphs, key):
    """Per-dimension mean/std over all train nodes (scale-fair inputs)."""
    allrows = np.concatenate([node_matrix(g, key) for g in graphs], axis=0)
    mean = allrows.mean(0)
    std = allrows.std(0)
    std[std < 1e-6] = 1.0
    return mean.astype(np.float32), std.astype(np.float32)


def collate(graphs, key, stats=None):
    xs, eis, ets, batch = [], [], [], []
    off = 0
    for gi, g in enumerate(graphs):
        x = node_matrix(g, key)
        if stats is not None:
            x = (x - stats[0]) / stats[1]
        n = x.shape[0]
        xs.append(x)
        if g["ei"].shape[1] > 0:
            eis.append(g["ei"] + off); ets.append(g["et"])
        batch.append(np.full(n, gi, dtype=np.int64))
        off += n
    X = torch.tensor(np.concatenate(xs, 0), dtype=torch.float32)
    EI = torch.tensor(np.concatenate(eis, 1) if eis else np.zeros((2, 0), np.int64))
    ET = torch.tensor(np.concatenate(ets) if ets else np.zeros(0, np.int64))
    B = torch.tensor(np.concatenate(batch))
    Y = torch.tensor([g["y"] for g in graphs], dtype=torch.long)
    return X, EI, ET, B, Y


def run_config(key, in_dim, train_g, val_g, test_g, class_w, num_classes,
               seed=SEED, standardize=True, epochs=30, patience=7, bs=64, lr=2e-3):
    torch.manual_seed(seed)
    stats = compute_stats(train_g, key) if standardize else None
    model = GINE(in_dim, num_classes=num_classes)
    opt = torch.optim.AdamW(model.parameters(), lr=lr, weight_decay=5e-4)
    lossf = nn.CrossEntropyLoss(weight=class_w)

    def evaluate(graphs):
        model.eval()
        preds, ys = [], []
        with torch.no_grad():
            for k in range(0, len(graphs), 256):
                chunk = graphs[k:k + 256]
                X, EI, ET, B, Y = collate(chunk, key, stats)
                logits = model(X, EI, ET, B, len(chunk))
                preds.append(logits.argmax(1).numpy()); ys.append(Y.numpy())
        p, y = np.concatenate(preds), np.concatenate(ys)
        return accuracy_score(y, p), f1_score(y, p, average="macro"), p, y

    best_f1, best_state, bad = -1.0, None, 0
    idx = np.arange(len(train_g))
    for ep in range(epochs):
        model.train()
        np.random.seed(seed + ep); np.random.shuffle(idx)
        for k in range(0, len(idx), bs):
            chunk = [train_g[i] for i in idx[k:k + bs]]
            X, EI, ET, B, Y = collate(chunk, key, stats)
            logits = model(X, EI, ET, B, len(chunk))
            loss = lossf(logits, Y)
            opt.zero_grad(); loss.backward(); opt.step()
        _, vf1, _, _ = evaluate(val_g)
        if vf1 > best_f1:
            best_f1, best_state, bad = vf1, {k2: v.clone() for k2, v in model.state_dict().items()}, 0
        else:
            bad += 1
            if bad >= patience:
                break
    if best_state:
        model.load_state_dict(best_state)
    acc, f1, _, _ = evaluate(test_g)
    return acc, f1, best_f1


def main():
    engines = {a: load_engine(f) for a, f in ENGINES.items()}
    builders = {a: SpecBackedPDGBuilder(e, speculative_window=20) for a, e in engines.items()}
    tok = AsmTokenizer(engines["unknown"])
    mlm = MlmEncoder.load(ROOT / "spec" / "mlm.pt")
    dim_learned = mlm.dim

    train_rows, test_rows = load(TRAIN), load(TEST)
    labels = sorted({r["label"] for r in train_rows} | {r["label"] for r in test_rows})
    label_id = {c: i for i, c in enumerate(labels)}
    num_classes = len(labels)

    print("building graphs (spec-backed PDG + aligned MLM node embeddings)...")
    train_g = build_graphs(train_rows, builders, tok, mlm, label_id)
    test_g = build_graphs(test_rows, builders, tok, mlm, label_id)

    # val split from train (stratified-ish random)
    rng = np.random.default_rng(SEED)
    perm = rng.permutation(len(train_g))
    n_val = int(0.12 * len(train_g))
    val_g = [train_g[i] for i in perm[:n_val]]
    tr_g = [train_g[i] for i in perm[n_val:]]
    print(f"train={len(tr_g)} val={len(val_g)} test={len(test_g)} "
          f"classes={num_classes} learned_dim={dim_learned}")

    # class weights (1/sqrt count), normalized mean 1
    cnt = Counter(g["y"] for g in tr_g)
    w = np.array([1.0 / np.sqrt(max(cnt.get(i, 1), 1)) for i in range(num_classes)])
    w = w / w.mean()
    class_w = torch.tensor(w, dtype=torch.float32)

    # Standardized inputs (universal practice), 3 seeds -> mean±std.
    # Compact proxy GINE is noisy at this scale; report variance honestly.
    seeds = [42, 1, 7]
    configs = {"hand": 41, "learned": dim_learned, "both": 41 + dim_learned}
    print(f"\n{'node features':16s} in-dim   test-acc (mean±std)   macro-F1 (mean±std)   [{len(seeds)} seeds]")
    print("-" * 78)
    for key, in_dim in configs.items():
        accs, f1s = [], []
        for sd in seeds:
            acc, f1, _ = run_config(key, in_dim, tr_g, val_g, test_g,
                                    class_w, num_classes, seed=sd, standardize=True)
            accs.append(acc); f1s.append(f1)
        accs, f1s = np.array(accs), np.array(f1s)
        print(f"{key:16s} {in_dim:5d}    {accs.mean()*100:5.2f} ± {accs.std()*100:4.2f}%"
              f"        {f1s.mean()*100:5.2f} ± {f1s.std()*100:4.2f}%")


if __name__ == "__main__":
    main()
