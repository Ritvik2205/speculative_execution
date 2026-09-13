"""Tests for spec/gate_oracle_check.py's pure comparison logic.

No llvm-mc/capstone dependency here — compare_to_baseline() takes
already-computed dicts, so it's testable without the oracle's external deps
(which are not guaranteed to be on PATH — see plan Global Constraints).
"""
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent.parent / "spec"))

from gate_oracle_check import compare_to_baseline  # noqa: E402


def _result(agreement_pct, covered=22807):
    return {"agreement_pct": agreement_pct, "covered": covered, "agree": int(covered * agreement_pct / 100)}


def test_pass_when_agreement_matches_baseline():
    baseline = _result(98.80)
    current = _result(98.80)
    passed, msg = compare_to_baseline(current, baseline, tolerance_pct=0.5)
    assert passed
    assert "PASS" in msg


def test_pass_when_agreement_improves():
    baseline = _result(98.80)
    current = _result(99.50)
    passed, msg = compare_to_baseline(current, baseline, tolerance_pct=0.5)
    assert passed


def test_fail_when_agreement_regresses_beyond_tolerance():
    baseline = _result(98.80)
    current = _result(97.00)
    passed, msg = compare_to_baseline(current, baseline, tolerance_pct=0.5)
    assert not passed
    assert "FAIL" in msg
    assert "97.00" in msg and "98.80" in msg


def test_pass_when_regression_within_tolerance():
    baseline = _result(98.80)
    current = _result(98.50)
    passed, msg = compare_to_baseline(current, baseline, tolerance_pct=0.5)
    assert passed


def test_fail_when_coverage_collapses_even_if_agreement_pct_holds():
    # 5/5 agreement on covered=5 is 100% agreement but worthless if coverage
    # cratered from 22807 to 5 (e.g. llvm-mc silently broke). Gate must catch this.
    baseline = _result(98.80, covered=22807)
    current = _result(100.0, covered=5)
    passed, msg = compare_to_baseline(current, baseline, tolerance_pct=0.5)
    assert not passed
    assert "coverage" in msg.lower()
