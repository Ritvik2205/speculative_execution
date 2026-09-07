import numpy as np, torch

def expected_calibration_error(probs, labels, n_bins=15):
    conf = probs.max(1); pred = probs.argmax(1); correct = (pred == labels).astype(float)
    bins = np.linspace(0,1,n_bins+1); ece = 0.0; n = len(labels)
    for i in range(n_bins):
        m = (conf > bins[i]) & (conf <= bins[i+1])
        if m.sum() == 0: continue
        ece += m.sum()/n * abs(correct[m].mean() - conf[m].mean())
    return float(ece)

def fit_temperature(val_logits, val_labels):
    logits = torch.tensor(val_logits, dtype=torch.float32)
    labels = torch.tensor(val_labels, dtype=torch.long)
    # Parametrize scale parameter S, return T = 1/S
    log_S = torch.nn.Parameter(torch.zeros(1))
    opt = torch.optim.LBFGS([log_S], lr=0.05, max_iter=100)
    lossf = torch.nn.CrossEntropyLoss()

    def closure():
        opt.zero_grad()
        S = torch.exp(log_S)
        # Use logits / S, which is equivalent to logits * (1/S) = logits * T
        l = lossf(logits / S, labels)
        l.backward()
        return l

    opt.step(closure)
    # Return T = 1/S (inverse of optimized scale)
    S = torch.exp(log_S.detach()).item()
    return float(1.0 / S) if S > 0 else 1e-3
