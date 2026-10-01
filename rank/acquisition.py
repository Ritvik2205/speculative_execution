import numpy as np

def ucb(mu, sigma, beta: float = 1.0):
    return np.asarray(mu, float) + beta * np.asarray(sigma, float)

def select_topk(mu, sigma, k: int, beta: float = 1.0, mask=None):
    a = ucb(mu, sigma, beta)
    if mask is not None:
        a = np.where(np.asarray(mask, bool), a, -np.inf)
    k = min(k, int(np.isfinite(a).sum()))
    if k <= 0:
        return []
    return np.argsort(a)[::-1][:k].tolist()
