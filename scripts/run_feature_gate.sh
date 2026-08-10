#!/usr/bin/env bash
# run_feature_gate.sh — the one command to run before trusting/merging any
# spec, feature-extraction, or encoder change. Chains:
#   1. oracle-agreement regression gate (spec/gate_oracle_check.py)
#   2. per-class recall lift report (eval/per_class_lift.py, reads cached
#      eval/full_tost/ results — does NOT retrain; run eval/run_full_tost.sh
#      separately first if those results are stale for your change)
# Writes eval/gate_summary.json with a PASS/FAIL verdict for stage 1 (stage 2
# is a report, not a gate — no pre-registered per-class threshold exists yet).
set -uo pipefail
cd "$(dirname "$0")/.."

echo "=== 1/2: oracle agreement gate ==="
python3 spec/gate_oracle_check.py --out eval/oracle_gate_result.json
ORACLE_STATUS=$?

echo
echo "=== 2/2: per-class recall lift (reads cached eval/full_tost/ results) ==="
python3 eval/per_class_lift.py --results-dir eval/full_tost --other-mode both \
  --out eval/per_class_lift_results.json
LIFT_STATUS=$?

python3 - "$ORACLE_STATUS" "$LIFT_STATUS" <<'PYEOF'
import json
import sys
from datetime import datetime, timezone
from pathlib import Path

oracle_status, lift_status = int(sys.argv[1]), int(sys.argv[2])
oracle_detail = {}
oracle_result_path = Path("eval/oracle_gate_result.json")
if oracle_result_path.exists():
    oracle_detail = json.loads(oracle_result_path.read_text())

summary = {
    "oracle_gate": "PASS" if oracle_status == 0 else "FAIL",
    "oracle_current_agreement_pct": oracle_detail.get("current", {}).get("agreement_pct"),
    "oracle_baseline_agreement_pct": oracle_detail.get("baseline", {}).get("agreement_pct"),
    "per_class_lift_computed": lift_status == 0,
    "per_class_lift_other_mode": "both",
    "timestamp_utc": datetime.now(timezone.utc).isoformat(),
}
with open("eval/gate_summary.json", "w") as f:
    json.dump(summary, f, indent=2)
print(f"\ngate summary -> eval/gate_summary.json: {summary}")
PYEOF

exit $ORACLE_STATUS
