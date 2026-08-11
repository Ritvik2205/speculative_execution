import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "eval"))

from evaluate_riscv_augmented import ci  # noqa: E402


def test_ci_single_value_has_zero_width():
    mean, half_width = ci([95.0])
    assert mean == 95.0
    assert half_width == 0.0


def test_ci_identical_values_has_zero_width():
    mean, half_width = ci([90.0, 90.0, 90.0])
    assert mean == 90.0
    assert half_width == 0.0


def test_ci_mean_is_correct():
    mean, half_width = ci([90.0, 92.0, 94.0])
    assert abs(mean - 92.0) < 1e-9
    assert half_width > 0.0
