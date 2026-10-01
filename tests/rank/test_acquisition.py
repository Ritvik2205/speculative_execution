import numpy as np, sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parents[2]))
from rank.acquisition import ucb, select_topk

def test_ucb_rewards_uncertainty():
    mu = np.array([1.0, 1.0]); sigma = np.array([0.0, 2.0])
    a = ucb(mu, sigma, beta=1.0)
    assert a[1] > a[0]

def test_zero_sigma_falls_back_to_greedy_mu():
    mu = np.array([0.1, 0.9, 0.5]); sigma = np.zeros(3)
    assert select_topk(mu, sigma, k=1, beta=5.0) == [1]

def test_mask_excludes_candidates():
    mu = np.array([9.0, 0.1]); sigma = np.zeros(2)
    mask = np.array([False, True])
    assert select_topk(mu, sigma, k=1, mask=mask) == [1]

def test_nan_score_not_selected():
    mu = np.array([np.nan, 1.0]); sigma = np.zeros(2)
    assert select_topk(mu, sigma, k=1) == [1]
