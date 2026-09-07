import numpy as np
from eval.calibration import expected_calibration_error, fit_temperature

def test_ece_zero_when_perfectly_calibrated():
    probs = np.array([[0.0,1.0],[1.0,0.0]]); labels = np.array([1,0])
    assert expected_calibration_error(probs, labels) < 1e-6

def test_temperature_reduces_overconfidence():
    # Over-scaled logits AND label noise => an interior NLL minimum at T>1.
    rng = np.random.default_rng(0)
    base = rng.normal(size=(400,3))
    labels = base.argmax(1)
    flip = rng.random(400) < 0.25
    labels[flip] = rng.integers(0,3,size=int(flip.sum()))
    logits = base * 5.0
    T = fit_temperature(logits, labels)
    assert T > 1.0
