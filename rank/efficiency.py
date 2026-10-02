from __future__ import annotations
import numpy as np
from rank.acquisition import ucb


def _is_leak(r):
    return str(r.get("verdict", "")).lower() == "leak"


def _leaks_vs_calls(order, leak):
    return np.cumsum(leak[order])


def efficiency_curve(ranker, test_rows, beta: float = 1.0, seed: int = 0) -> dict:
    leak = np.array([_is_leak(r) for r in test_rows], bool)
    n, n_pos = len(test_rows), int(leak.sum())
    base = {"n": n, "n_pos": n_pos}
    if n_pos == 0 or n_pos == n:
        return {**base, "precision_at_k": [], "auc_gain_over_random": float("nan"),
                "note": "held-out batch has 0 or all positives — efficiency undefined"}
    mu, sigma = ranker.predict_mc(test_rows)
    ranker_order = np.argsort(ucb(mu, sigma, beta))[::-1]
    greedy_order = np.argsort(mu)[::-1]
    rng = np.random.RandomState(seed)
    rand = np.mean([_leaks_vs_calls(rng.permutation(n), leak) for _ in range(200)], axis=0)
    r_curve = _leaks_vs_calls(ranker_order, leak)
    prec = [r_curve[k] / (k + 1) for k in range(n)]
    return {**base,
            "precision_at_k": prec,
            "leaks_vs_calls": {"ranker": r_curve.tolist(), "random": rand.tolist(),
                               "greedy": _leaks_vs_calls(greedy_order, leak).tolist()},
            "auc_gain_over_random": float((r_curve - rand).sum())}
