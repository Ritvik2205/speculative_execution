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
    # Fit T>0 via log-parametrization (T = exp(logT)); return T directly.
    # Minimizing CE(logits / T) IS temperature scaling — no reciprocal on the way out.
    logits = torch.tensor(val_logits, dtype=torch.float32)
    labels = torch.tensor(val_labels, dtype=torch.long)
    logT = torch.nn.Parameter(torch.zeros(1))  # T starts at 1.0
    opt = torch.optim.LBFGS([logT], lr=0.05, max_iter=100)
    lossf = torch.nn.CrossEntropyLoss()
    def closure():
        opt.zero_grad(); l = lossf(logits / logT.exp(), labels); l.backward(); return l
    opt.step(closure)
    return float(logT.exp().detach())
