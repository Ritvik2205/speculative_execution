from __future__ import annotations
import math
import numpy as np

# Calibrated once from the positive/negative controls in Task 10. Provisional;
# validate_oracle.py asserts the controls separate cleanly around it.
TAU = 3.0

def snr(latencies, secret_line: int) -> float:
    arr = np.array(latencies, dtype=float)
    finite = np.isfinite(arr)
    if not finite[secret_line]:
        return 0.0
    others_mask = finite.copy()
    others_mask[secret_line] = False
    others = arr[others_mask]
    if others.size == 0:
        return 0.0
    mu = float(np.mean(others))
    sd = float(np.std(others))
    diff = mu - float(arr[secret_line])
    if sd < 1e-9:
        return 0.0 if abs(diff) < 1e-9 else math.copysign(1e3, diff)
    return diff / sd

def leak_signal(snr_o3: float, snr_inorder: float) -> float:
    return max(0.0, snr_o3 - snr_inorder)

def is_leak(recovered_ok: bool, snr_o3: float, snr_inorder: float) -> bool:
    return bool(recovered_ok) and (snr_o3 - snr_inorder) > TAU
