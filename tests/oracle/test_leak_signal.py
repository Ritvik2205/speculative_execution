import math
from oracle.leak_signal import snr, leak_signal, is_leak, TAU

def test_snr_high_when_secret_line_faster():
    lat = [200.0] * 256
    lat[83] = 40.0
    assert snr(lat, 83) > 10.0

def test_snr_low_when_uniform():
    lat = [200.0] * 256
    assert abs(snr(lat, 83)) < 1e-6

def test_snr_ignores_nan_lines():
    lat = [float("nan")] * 256
    lat[83] = 40.0
    for i in (10, 20, 30):
        lat[i] = 200.0
    assert snr(lat, 83) > 5.0

def test_leak_signal_is_speculative_delta_clamped():
    assert leak_signal(8.0, 0.2) == 8.0 - 0.2
    assert leak_signal(0.2, 8.0) == 0.0

def test_is_leak_requires_recovery_and_margin():
    assert is_leak(True, 8.0, 0.1) is True
    assert is_leak(False, 8.0, 0.1) is False
    assert is_leak(True, TAU + 0.05, 0.0) is True
    assert is_leak(True, TAU - 0.05, 0.0) is False
