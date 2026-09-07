import numpy as np
from eval.calibration import expected_calibration_error, fit_temperature

def test_ece_zero_when_perfectly_calibrated():
    probs = np.array([[0.0,1.0],[1.0,0.0]]); labels = np.array([1,0])
    assert expected_calibration_error(probs, labels) < 1e-6

def test_temperature_reduces_overconfidence():
    # logits over-scaled by 5x -> fitted T should be > 1
    rng = np.random.default_rng(0)
    logits = rng.normal(size=(200,3)) * 5.0
    labels = logits.argmax(1)
    T = fit_temperature(logits, labels)
    assert T > 1.0
