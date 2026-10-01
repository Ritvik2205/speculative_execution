from __future__ import annotations
import numpy as np
import torch
import torch.nn as nn


class LeakRanker:
    """Frozen encoder (hook) + a small regression head predicting leak_signal.

    Targets are standardised (z-scored) internally so a constant or
    tiny-range target cannot explode the loss; predict() returns to raw
    signal units. MC-dropout keeps the head's dropout on at inference for
    uncertainty.
    """

    def __init__(self, hook, hidden: int = 128, dropout: float = 0.3, device: str = "cpu"):
        self.hook = hook
        self.device = torch.device(device)
        self.head = nn.Sequential(
            nn.Linear(hook.combined_dim, hidden), nn.BatchNorm1d(hidden),
            nn.ReLU(), nn.Dropout(dropout), nn.Linear(hidden, 1),
        ).to(self.device)
        self._mu = 0.0
        self._sd = 1.0

    def _X(self, records):
        return torch.tensor(self.hook.embed(records), dtype=torch.float32, device=self.device)

    def fit(self, records, signals, epochs: int = 100, lr: float = 1e-3):
        signals = np.asarray(signals, dtype="float32")
        self._mu, self._sd = float(signals.mean()), float(signals.std() or 1.0)
        y = torch.tensor((signals - self._mu) / self._sd, device=self.device).unsqueeze(1)
        X = self._X(records)
        opt = torch.optim.Adam(self.head.parameters(), lr=lr, weight_decay=1e-4)
        loss_fn = nn.SmoothL1Loss()
        self.head.train()
        bs = max(2, min(32, len(records)))          # BatchNorm needs >=2
        for _ in range(epochs):
            perm = torch.randperm(len(records))
            for i in range(0, len(records) - 1, bs):
                idx = perm[i:i + bs]
                if len(idx) < 2:
                    continue
                opt.zero_grad()
                loss_fn(self.head(X[idx]), y[idx]).backward()
                opt.step()
        return self

    @torch.no_grad()
    def predict(self, records) -> np.ndarray:
        self.head.eval()
        z = self.head(self._X(records)).squeeze(1).cpu().numpy()
        return z * self._sd + self._mu

    @torch.no_grad()
    def predict_mc(self, records, passes: int = 20):
        self.head.eval()                            # keep BN deterministic + running stats frozen
        for m in self.head.modules():
            if isinstance(m, torch.nn.Dropout):
                m.train()                           # only Dropout on for stochasticity
        X = self._X(records)
        preds = np.stack([self.head(X).squeeze(1).cpu().numpy() for _ in range(passes)])
        preds = preds * self._sd + self._mu
        return preds.mean(0), preds.std(0)

    def save(self, path):
        torch.save({"state": self.head.state_dict(), "mu": self._mu, "sd": self._sd}, path)

    def load(self, path, hook=None):
        c = torch.load(path, map_location=self.device, weights_only=False)
        self.head.load_state_dict(c["state"]); self._mu, self._sd = c["mu"], c["sd"]
        return self
