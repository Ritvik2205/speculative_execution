import numpy as np, sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parents[2]))
from rank.efficiency import efficiency_curve

class PerfectRanker:
    # predicts the true signal => ranking is optimal
    def predict_mc(self, rows, passes=1):
        s = np.array([r["signal"] for r in rows]); return s, np.zeros_like(s)

class BlindRanker:
    def predict_mc(self, rows, passes=1):
        n = len(rows); return np.zeros(n), np.zeros(n)

def _rows(n=40, n_pos=10):
    rows = [{"signal": 0.0, "verdict": "unrunnable"} for _ in range(n)]
    for i in range(n_pos):
        rows[i] = {"signal": 5.0 + i, "verdict": "leak"}
    return rows

def test_perfect_ranker_beats_random():
    out = efficiency_curve(PerfectRanker(), _rows(), beta=0.0)
    assert out["auc_gain_over_random"] > 0
    assert out["precision_at_k"][0] == 1.0          # first pick is a leak

def test_all_negative_batch_reports_nan():
    out = efficiency_curve(BlindRanker(), _rows(n=20, n_pos=0), beta=0.0)
    assert out["n_pos"] == 0 and np.isnan(out["auc_gain_over_random"])
    assert "note" in out
