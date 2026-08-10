#!/usr/bin/env python3
"""
gate_oracle_check.py — pass/fail gate on external-oracle control-flow
agreement, for use before merging any spec/pdg_builder change.

Wraps validate_external.compute_agreement() (the same independent llvm-mc +
capstone cross-check used for the Phase-0 findings, see
PHASE0_EXTERNAL_FINDINGS.md) with a stored baseline and a tolerance, so a spec
edit that silently regresses control-flow categorization fails CI/local gate
instead of being caught by chance in a later ablation run.

Run (check against baseline, exit 1 on regression):
  python3 spec/gate_oracle_check.py

Update the baseline after a verified, intentional improvement (requires the
explicit flag so baselines can't be silently ratcheted down):
  python3 spec/gate_oracle_check.py --update-baseline --i-verified-the-regression
"""
from __future__ import annotations

import argparse
import json
import sys
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "spec"))

from validate_external import compute_agreement  # noqa: E402

BASELINE_PATH = ROOT / "spec" / "oracle_baseline.json"
DEFAULT_TOLERANCE_PCT = 0.5
DEFAULT_MIN_COVERAGE = 0.9  # current run's covered count must be >= 90% of baseline's


def compare_to_baseline(current: dict, baseline: dict, tolerance_pct: float = DEFAULT_TOLERANCE_PCT) -> tuple[bool, str]:
    """Pure comparison — no I/O, so it's unit-testable without the oracle deps."""
    cur_pct, base_pct = current["agreement_pct"], baseline["agreement_pct"]
    cur_cov, base_cov = current["covered"], baseline["covered"]

    if base_cov and cur_cov < DEFAULT_MIN_COVERAGE * base_cov:
        return False, (
            f"FAIL: oracle coverage collapsed ({cur_cov} vs baseline {base_cov}, "
            f"< {DEFAULT_MIN_COVERAGE:.0%} threshold) — agreement_pct alone is "
            f"meaningless here (current={cur_pct:.2f}%, baseline={base_pct:.2f}%)"
        )

    diff = cur_pct - base_pct
    if diff < -tolerance_pct:
        return False, (
            f"FAIL: oracle agreement regressed {cur_pct:.2f}% vs baseline "
            f"{base_pct:.2f}% (diff {diff:+.2f}pp, tolerance {tolerance_pct}pp)"
        )
    return True, f"PASS: oracle agreement {cur_pct:.2f}% (baseline {base_pct:.2f}%, diff {diff:+.2f}pp)"


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--tolerance-pct", type=float, default=DEFAULT_TOLERANCE_PCT)
    ap.add_argument("--update-baseline", action="store_true")
    ap.add_argument("--i-verified-the-regression", action="store_true",
                     help="required alongside --update-baseline to confirm the "
                          "new baseline was reviewed, not just accepted by default")
    ap.add_argument("--out", type=Path, default=None,
                     help="optional path to write the current/baseline/pass/fail result as JSON")
    args = ap.parse_args()

    current = compute_agreement()
    print(f"current: agreement={current['agreement_pct']:.2f}% "
          f"covered={current['covered']} checked={current['checked']}")

    if args.update_baseline:
        if not args.i_verified_the_regression:
            print("FAIL: --update-baseline requires --i-verified-the-regression "
                  "(prevents silent baseline creep)")
            sys.exit(1)
        BASELINE_PATH.write_text(json.dumps(current, indent=2) + "\n")
        print(f"baseline updated -> {BASELINE_PATH}")
        sys.exit(0)

    if not BASELINE_PATH.exists():
        print(f"FAIL: no baseline at {BASELINE_PATH}; run with --update-baseline "
              f"--i-verified-the-regression to seed one")
        sys.exit(1)

    baseline = json.loads(BASELINE_PATH.read_text())
    passed, msg = compare_to_baseline(current, baseline, args.tolerance_pct)

    if args.out:
        payload = {
            "current": current,
            "baseline": baseline,
            "tolerance_pct": args.tolerance_pct,
            "passed": passed,
            "message": msg,
            "timestamp_utc": datetime.now(timezone.utc).isoformat(),
        }
        args.out.write_text(json.dumps(payload, indent=2))

    print(msg)
    sys.exit(0 if passed else 1)


if __name__ == "__main__":
    main()
