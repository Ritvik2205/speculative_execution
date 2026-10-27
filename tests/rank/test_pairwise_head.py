"""Pure unit tests for the pairwise ranking head (no PDG, no GPU, no oracle).

Covers the parts that must be right for the head to be a sound, drop-in
replacement behind LeakGate: within-round pair formation, numpy==torch forward
equivalence, the learned head actually ranking leak>safe, and the pickle
round-trip exposing predict_proba exactly as LeakGate calls it.
"""
import pickle
import sys
from pathlib import Path

import numpy as np
import pytest

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "rank"))

from pairwise_head import (  # noqa: E402
    NumpyMLPScorer, _within_round_pairs, fit_pairwise, make_pairwise_feat_fn,
)

torch = pytest.importorskip("torch")  # fit needs torch; numpy scorer does not


def test_within_round_pairs_never_cross_rounds():
    # round 0: 2 leak, 1 safe -> 2 pairs; round 1: 1 leak, 2 safe -> 2 pairs.
    y = np.array([1, 1, 0, 1, 0, 0])
    rnd = np.array([0, 0, 0, 1, 1, 1])
    pairs = _within_round_pairs(y, rnd, max_pairs_per_round=10_000,
                                rng=np.random.default_rng(0))
    assert len(pairs) == 4
    for i, j in pairs:
        assert y[i] == 1 and y[j] == 0          # (leak, safe)
        assert rnd[i] == rnd[j]                  # same round, never crossed


def test_no_pairs_when_a_round_is_single_class():
    y = np.array([1, 1, 0, 0])
    rnd = np.array([0, 0, 1, 1])                  # each round is one class
    pairs = _within_round_pairs(y, rnd, 10_000, np.random.default_rng(0))
    assert len(pairs) == 0


def test_cap_per_round():
    y = np.array([1] * 10 + [0] * 10)
    rnd = np.zeros(20, dtype=int)                 # 100 possible pairs, 1 round
    pairs = _within_round_pairs(y, rnd, max_pairs_per_round=7,
                                rng=np.random.default_rng(0))
    assert len(pairs) == 7


def test_numpy_scorer_matches_torch_forward():
    rng = np.random.default_rng(0)
    W1 = rng.standard_normal((8, 5)).astype("float32")
    b1 = rng.standard_normal(8).astype("float32")
    W2 = rng.standard_normal((1, 8)).astype("float32")
    b2 = rng.standard_normal(1).astype("float32")
    X = rng.standard_normal((6, 5)).astype("float32")

    net = torch.nn.Sequential(
        torch.nn.Linear(5, 8), torch.nn.ReLU(), torch.nn.Dropout(0.3),
        torch.nn.Linear(8, 1))
    with torch.no_grad():
        net[0].weight.copy_(torch.tensor(W1)); net[0].bias.copy_(torch.tensor(b1))
        net[3].weight.copy_(torch.tensor(W2)); net[3].bias.copy_(torch.tensor(b2))
    net.eval()
    with torch.no_grad():
        t = net(torch.tensor(X)).squeeze(1).numpy()

    s = NumpyMLPScorer(W1, b1, W2, b2).decision_function(X)
    assert np.allclose(s, t, atol=1e-5)


def test_predict_proba_shape_and_monotone():
    sc = NumpyMLPScorer(np.eye(1, dtype="float32"), np.zeros(1, "float32"),
                        np.ones((1, 1), "float32"), np.zeros(1, "float32"))
    # x >= 0 so the ReLU is linear and the score increases with x
    X = np.array([[0.0], [1.0], [3.0]], dtype="float32")
    p = sc.predict_proba(X)
    assert p.shape == (3, 2)
    assert np.allclose(p.sum(axis=1), 1.0)
    assert p[0, 1] < p[1, 1] < p[2, 1]            # higher score -> higher P(leak)


def test_fit_ranks_leak_above_safe_and_is_separable():
    # two separable clusters, both classes present in each of two rounds.
    rng = np.random.default_rng(1)
    d = 6
    leak = rng.standard_normal((20, d)).astype("float32") + 2.0
    safe = rng.standard_normal((20, d)).astype("float32") - 2.0
    emb = np.vstack([leak, safe])
    y = np.array([1] * 20 + [0] * 20)
    rnd = np.array(([0] * 10 + [1] * 10) * 2)     # both classes in rounds 0 and 1
    sc = fit_pairwise(emb, y, rnd, hidden=16, epochs=150, seed=0)
    s = sc.decision_function(emb)
    assert s[y == 1].mean() > s[y == 0].mean()    # leaks rank higher on average
    # rank-AUC should be essentially perfect on separable data
    from itertools import product
    wins = sum(s[i] > s[j] for i, j in product(np.where(y == 1)[0],
                                               np.where(y == 0)[0]))
    assert wins / (20 * 20) > 0.95


def test_fit_raises_without_within_round_pair():
    emb = np.random.default_rng(0).standard_normal((4, 5)).astype("float32")
    y = np.array([1, 1, 0, 0])
    rnd = np.array([0, 0, 1, 1])                   # no round has both classes
    with pytest.raises(ValueError):
        fit_pairwise(emb, y, rnd, epochs=5)


def test_pickle_roundtrip_is_leakgate_drop_in(tmp_path):
    # the exact dict LeakGate loads, with a pairwise NumpyMLPScorer as `model`.
    from sklearn.preprocessing import StandardScaler
    rng = np.random.default_rng(2)
    emb = np.vstack([rng.standard_normal((10, 6)) + 2,
                     rng.standard_normal((10, 6)) - 2]).astype("float32")
    y = np.array([1] * 10 + [0] * 10)
    rnd = np.array(([0] * 5 + [1] * 5) * 2)
    scaler = StandardScaler().fit(emb)
    model = fit_pairwise(scaler.transform(emb), y, rnd, hidden=8, epochs=50)
    p = tmp_path / "head.pkl"
    with open(p, "wb") as f:
        pickle.dump({"scaler": scaler, "model": model,
                     "combined_dim": 6, "cls": "SPECTRE_V4"}, f)
    with open(p, "rb") as f:
        h = pickle.load(f)                         # must not need torch
    # LeakGate.score does exactly this:
    x = h["scaler"].transform(emb[:1])
    val = float(h["model"].predict_proba(x)[0, 1])
    assert 0.0 <= val <= 1.0


def test_feat_fn_falls_back_to_half_without_pairs():
    emb = np.random.default_rng(0).standard_normal((4, 5)).astype("float32")
    y = np.array([1, 1, 0, 0])
    rnd = np.array([0, 0, 1, 1])                   # train has no within-round pair
    built = np.ones(4, bool)
    fn = make_pairwise_feat_fn(emb, built, y, rnd)
    out = fn(np.array([0, 1, 2]), np.array([3]))   # single-class per round in tr
    assert np.allclose(out, 0.5)
