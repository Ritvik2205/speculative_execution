#!/usr/bin/env python3
"""pairwise_head.py — order-aware (pairwise) leak-vs-safe ranking head.

The pointwise head (rank/filter_gate.py:train) fits a logistic regressor to
P(leak) per gadget. This adds a PAIRWISE head that is trained to rank a leaking
gadget ABOVE a safe one *within the same RL round* (the dominant confounder),
using a RankNet-style pairwise-logistic loss over (leak, safe) pairs.

Drop-in contract: the trained head is exported as `NumpyMLPScorer`, a pure-numpy
object exposing `predict_proba(X)[:, 1]` monotone in the rank score, so it slots
into the exact pickle dict {scaler, model, combined_dim, cls} that
rank/filter_gate.py:LeakGate loads -- no torch at gate/load time, LeakGate
untouched. Torch is used only during fit().

The MLP is Linear -> ReLU -> Dropout -> Linear (no BatchNorm, so the numpy
forward is exact and batch-size-free; dropout is inference-off).
"""
from __future__ import annotations

import numpy as np


class NumpyMLPScorer:
    """Pure-numpy 1-hidden-layer MLP rank scorer. `predict_proba(X)[:, 1]` is a
    monotone map of the rank score s(x) = relu(x W1^T + b1) W2^T + b2, so it is
    a drop-in for the sklearn estimator LeakGate expects. No torch dependency,
    so it unpickles anywhere rank/ is importable."""

    def __init__(self, W1, b1, W2, b2):
        self.W1 = np.asarray(W1, dtype=np.float32)   # (hidden, d)
        self.b1 = np.asarray(b1, dtype=np.float32)   # (hidden,)
        self.W2 = np.asarray(W2, dtype=np.float32)   # (1, hidden)
        self.b2 = np.asarray(b2, dtype=np.float32)   # (1,)

    def decision_function(self, X) -> np.ndarray:
        X = np.asarray(X, dtype=np.float32)
        h = np.maximum(0.0, X @ self.W1.T + self.b1)
        return (h @ self.W2.T + self.b2).ravel()

    def predict_proba(self, X) -> np.ndarray:
        s = self.decision_function(X)
        p = 1.0 / (1.0 + np.exp(-s))
        return np.column_stack([1.0 - p, p])


def _within_round_pairs(y, rnd, max_pairs_per_round, rng):
    """All (leak_idx, safe_idx) cross pairs formed WITHIN each round, capped per
    round. Returns an (n_pairs, 2) int array [leak_idx, safe_idx]."""
    y = np.asarray(y)
    rnd = np.asarray(rnd)
    out = []
    for r in sorted(set(rnd.tolist())):
        idx = np.where(rnd == r)[0]
        leaks = idx[y[idx] == 1]
        safes = idx[y[idx] == 0]
        if len(leaks) == 0 or len(safes) == 0:
            continue
        L, S = np.meshgrid(leaks, safes, indexing="ij")
        pr = np.stack([L.ravel(), S.ravel()], axis=1)
        if len(pr) > max_pairs_per_round:
            pr = pr[rng.choice(len(pr), max_pairs_per_round, replace=False)]
        out.append(pr)
    if not out:
        return np.empty((0, 2), dtype=np.int64)
    return np.concatenate(out, axis=0)


def fit_pairwise(emb, y, rnd, hidden: int = 128, epochs: int = 200,
                 lr: float = 1e-3, dropout: float = 0.3, weight_decay: float = 1e-4,
                 max_pairs_per_round: int = 2000, device: str = "cpu",
                 seed: int = 0) -> NumpyMLPScorer:
    """Train the pairwise head on embeddings `emb` (n, d) with binary labels `y`
    and RL-round ids `rnd`. Forms within-round (leak, safe) pairs and minimises
    the pairwise-logistic loss softplus(-(s_leak - s_safe)). Returns a
    NumpyMLPScorer. Raises ValueError if no within-round pair exists."""
    import torch
    import torch.nn as nn

    emb = np.asarray(emb, dtype=np.float32)
    y = np.asarray(y)
    rnd = np.asarray(rnd)
    rng = np.random.default_rng(seed)
    pairs = _within_round_pairs(y, rnd, max_pairs_per_round, rng)
    if len(pairs) == 0:
        raise ValueError("no within-round (leak, safe) pairs to train on")

    torch.manual_seed(seed)
    dev = torch.device(device)
    d = emb.shape[1]
    net = nn.Sequential(
        nn.Linear(d, hidden), nn.ReLU(), nn.Dropout(dropout), nn.Linear(hidden, 1),
    ).to(dev)
    X = torch.tensor(emb, device=dev)
    I = torch.tensor(pairs[:, 0], device=dev, dtype=torch.long)
    J = torch.tensor(pairs[:, 1], device=dev, dtype=torch.long)
    opt = torch.optim.Adam(net.parameters(), lr=lr, weight_decay=weight_decay)
    softplus = nn.Softplus()
    bs = min(4096, len(pairs))
    net.train()
    for _ in range(epochs):
        perm = torch.randperm(len(pairs), device=dev)
        for k in range(0, len(pairs), bs):
            b = perm[k:k + bs]
            s = net(X).squeeze(1)                       # score every row
            loss = softplus(-(s[I[b]] - s[J[b]])).mean()
            opt.zero_grad()
            loss.backward()
            opt.step()
    net.eval()
    lin1, lin2 = net[0], net[3]
    return NumpyMLPScorer(
        lin1.weight.detach().cpu().numpy(), lin1.bias.detach().cpu().numpy(),
        lin2.weight.detach().cpu().numpy(), lin2.bias.detach().cpu().numpy(),
    )


def make_pairwise_feat_fn(emb, built, y, rnd, device: str = "cpu", **fit_kw):
    """Return a feat_fn(train_idx, test_idx) -> test scores for the eval's
    prospective_oof harness. Fits a pairwise head on the TRAIN rows only
    (built, with a within-round pair), scores the TEST rows. Falls back to 0.5
    (no signal) when train lacks both classes or any within-round pair."""
    from sklearn.preprocessing import StandardScaler
    emb = np.asarray(emb, dtype=np.float32)
    y = np.asarray(y)
    rnd = np.asarray(rnd)

    def feat_fn(tr, te):
        tr = [i for i in tr if built[i]]
        te_b = [i for i in te if built[i]]
        out = np.full(len(te), 0.5)
        if len(set(y[tr].tolist())) < 2 or not te_b:
            return out
        sc = StandardScaler().fit(emb[tr])
        try:
            scorer = fit_pairwise(sc.transform(emb[tr]), y[tr], rnd[tr],
                                  device=device, **fit_kw)
        except ValueError:
            return out
        pr = scorer.predict_proba(sc.transform(emb[te_b]))[:, 1]
        pos = dict(zip(te_b, pr))
        return np.array([pos.get(ti, 0.5) for ti in te])

    return feat_fn
