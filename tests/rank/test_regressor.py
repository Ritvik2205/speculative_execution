import sys
from pathlib import Path
import numpy as np
ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT))
import pytest
pytestmark = pytest.mark.skipif(
    not (ROOT / "models" / "locked_classifier.json").exists(), reason="no locked classifier")

class FakeHook:
    combined_dim = 8
    def __init__(self): self._rng = np.random.RandomState(0)
    def train(self): pass
    def eval(self): pass
    def embed(self, records, batch_size=64):
        # deterministic embedding keyed on record id; signal = embed[:,0]*5
        return np.stack([r["_vec"] for r in records])

def _data(n=64):
    rng = np.random.RandomState(1)
    recs = [{"_vec": rng.randn(8).astype("float32"), "sequence": ["x"], "arch": "x86_64"} for _ in range(n)]
    sig = np.array([r["_vec"][0] * 5.0 for r in recs], dtype="float32")
    return recs, sig

def test_fit_predict_learns_linear_signal():
    from rank.regressor import LeakRanker
    recs, sig = _data()
    r = LeakRanker(FakeHook())
    r.fit(recs, sig, epochs=300)
    pred = r.predict(recs)
    # correlation with truth should be strong on this trivial linear target
    assert np.corrcoef(pred, sig)[0, 1] > 0.9

def test_constant_target_does_not_crash():
    from rank.regressor import LeakRanker
    recs, _ = _data(16)
    r = LeakRanker(FakeHook())
    r.fit(recs, np.zeros(16, dtype="float32"), epochs=20)   # all-safe round
    assert r.predict(recs).shape == (16,)

def test_mc_gives_non_negative_sigma():
    from rank.regressor import LeakRanker
    recs, sig = _data(16)
    r = LeakRanker(FakeHook())
    r.fit(recs, sig, epochs=50)
    mu, sigma = r.predict_mc(recs, passes=10)
    assert mu.shape == sigma.shape == (16,)
    assert (sigma >= 0).all()

def test_predict_mc_does_not_change_predict():
    from rank.regressor import LeakRanker
    recs, sig = _data(32)
    r = LeakRanker(FakeHook())
    r.fit(recs, sig, epochs=50)
    p1 = r.predict(recs)
    # calling predict_mc should not drift BatchNorm stats
    r.predict_mc(recs, passes=10)
    p2 = r.predict(recs)
    # predictions must remain stable (no BN stat drift)
    assert np.allclose(p1, p2, atol=1e-5)

def test_predict_mc_single_row():
    from rank.regressor import LeakRanker
    recs, sig = _data(32)
    r = LeakRanker(FakeHook())
    r.fit(recs, sig, epochs=50)
    # predict_mc on single row must not crash (BN in eval mode, only Dropout stochastic)
    mu, sigma = r.predict_mc(recs[:1], passes=5)
    assert mu.shape == sigma.shape == (1,)
