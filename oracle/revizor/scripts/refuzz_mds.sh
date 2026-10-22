#!/usr/bin/env bash
# Fresh MDS fuzzing on the i5-8300H to resolve the 0/6 replay non-reproduction:
# does this box still produce ANY MDS violation from new random programs, or has
# the channel closed (microcode / MD_CLEAR) since the original recordings?
#
# This is Revizor's own contract-fuzzing (no exploit, no secret exfiltration):
# it runs random programs and flags htrace differences the MDS contract forbids.
# Run both SMT states; a violation under either is a positive, 0/both is a
# genuine negative for this box.
#
# Usage (as root, module loaded):
#   sudo bash oracle/revizor/scripts/refuzz_mds.sh            # defaults below
#   ROUNDS=2000 CONFIG=/path/detect-mds.yaml sudo -E bash .../refuzz_mds.sh
set -u

RVZR="${RVZR:-/home/ritvik/sca-fuzzer/venv/bin/rvzr}"
SPEC="${SPEC:-/home/ritvik/sca-fuzzer/base_x86.json}"
CONFIG="${CONFIG:-/home/ritvik/speculative_execution/oracle/revizor/demo_configs/detect-mds.yaml}"
REPO="${REPO:-/home/ritvik/speculative_execution}"
ROUNDS="${ROUNDS:-1000}"          # test cases to fuzz
INPUTS="${INPUTS:-200}"           # inputs per test case
OWNER="${SUDO_USER:-ritvik}"
OUT="$REPO/rvzr_runs/mds_refuzz_$(date +%y%m%d-%H%M%S)"

[ -x "$RVZR" ] || { echo "FATAL: rvzr not found: $RVZR"; exit 1; }
[ -f "$CONFIG" ] || { echo "FATAL: MDS config not found: $CONFIG (set CONFIG=...)"; exit 1; }
grep -q '^rvzr_executor ' /proc/modules || { echo "FATAL: rvzr_executor module not loaded"; exit 1; }
mkdir -p "$OUT"

smt_state() { cat /sys/devices/system/cpu/smt/control 2>/dev/null || echo "unknown"; }

run() {
  local tag="$1"
  local dir="$OUT/$tag"
  mkdir -p "$dir"
  echo "=== MDS re-fuzz [$tag]  SMT=$(smt_state)  rounds=$ROUNDS inputs=$INPUTS ==="
  # --extensions ALL_SUPPORTED so the fenced-test-case builder has lfence/mfence
  # (HARDWARE_VALIDATION_RESULTS.md: missing fences crash the fuzzer).
  "$RVZR" fuzz -s "$SPEC" -c "$CONFIG" -n "$ROUNDS" -i "$INPUTS" \
      --extensions ALL_SUPPORTED -w "$dir" 2>&1 | tee "$dir/fuzz.log"
  local v
  v=$(grep -oE 'Violations: *[0-9]+' "$dir/fuzz.log" | tail -1 | grep -oE '[0-9]+')
  echo "  [$tag] violations=${v:-?}  (artifacts in $dir)"
}

echo "SMT currently: $(smt_state)"
run "smt_$(smt_state)"

echo
echo "To test the other SMT state, toggle and re-run, e.g.:"
echo "  echo off | sudo tee /sys/devices/system/cpu/smt/control && sudo -E bash $0"
chown -R "$OWNER" "$OUT"
