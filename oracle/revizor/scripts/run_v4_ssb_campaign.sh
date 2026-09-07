#!/bin/bash
# run_v4_ssb_campaign.sh — V4/SSB campaign driver for the i5-8300H.
# Implements V4_SSB_RUNBOOK.md steps 1-4 in one root invocation.
#
#   sudo bash oracle/revizor/scripts/run_v4_ssb_campaign.sh
#
# Configs are pre-generated into /tmp/v4_configs/ by the calling session.
# Everything is logged to ~/rvzr_runs/campaign_<date>.log; violations land in
# ~/rvzr_runs/v4_<seed>/violation-*/.
set -uo pipefail

REPO=/home/ritvik/speculative_execution
VENV=/home/ritvik/sca-fuzzer/venv
SPEC=/home/ritvik/sca-fuzzer/base_x86.json
CFGDIR=/tmp/v4_configs
RUNS=/home/ritvik/rvzr_runs
LOG=$RUNS/campaign_$(date +%y%m%d_%H%M).log
SEEDS="1000000 2222222 3333333 4444444 5555555"
N=1000
I=100
TIMEOUT=900

mkdir -p "$RUNS"
exec > >(tee -a "$LOG") 2>&1
echo "=== V4/SSB campaign start: $(date) ==="

if [ "$EUID" -ne 0 ]; then echo "FATAL: must run as root (sudo)"; exit 1; fi
for f in "$VENV/bin/rvzr" "$SPEC"; do
  [ -e "$f" ] || { echo "FATAL: missing $f"; exit 1; }
done
ls "$CFGDIR"/v4_*.yaml >/dev/null 2>&1 || { echo "FATAL: no configs in $CFGDIR"; exit 1; }

# --- environment facts worth recording alongside the results -----------------
echo "--- environment ---"
grep -m1 "model name" /proc/cpuinfo
echo "spec_store_bypass: $(cat /sys/devices/system/cpu/vulnerabilities/spec_store_bypass)"
echo "smt: $(cat /sys/devices/system/cpu/smt/control)"
uname -r

# --- step 1: load the executor module ---------------------------------------
echo "--- step 1: kernel module ---"
if lsmod | grep -q rvzr_executor; then
  echo "rvzr_executor already loaded"
else
  cd /home/ritvik/sca-fuzzer/rvzr/executor_km || exit 1
  rmmod rvzr_executor 2>/dev/null
  make || { echo "FATAL: module build failed"; exit 1; }
  insmod rvzr_executor.ko || { echo "FATAL: insmod failed"; exit 1; }
fi
lsmod | grep rvzr_executor || { echo "FATAL: module not loaded"; exit 1; }

RVZR="$VENV/bin/rvzr"
cd "$REPO" || exit 1

run_fuzz () {  # $1=config  $2=workdir  $3=label
  echo ""
  echo "=== FUZZ [$3] cfg=$1 wd=$2 : $(date +%H:%M:%S) ==="
  mkdir -p "$2"
  "$RVZR" fuzz -s "$SPEC" -c "$1" -n "$N" -i "$I" -w "$2" --nonstop --timeout "$TIMEOUT"
  local v; v=$(find "$2" -maxdepth 1 -name 'violation-*' -type d 2>/dev/null | wc -l)
  echo "=== [$3] violations: $v ==="
}

# --- step 2: the SSB campaign (SSBP off = un-mitigated) ----------------------
echo ""
echo "########## STEP 2: V4/SSB campaign, SSBP OFF ##########"
for seed in $SEEDS; do
  run_fuzz "$CFGDIR/v4_$seed.yaml" "$RUNS/v4_$seed" "seed $seed"
done

TOTAL=$(find "$RUNS"/v4_[0-9]* -maxdepth 1 -name 'violation-*' -type d 2>/dev/null | wc -l)
echo ""
echo "########## STEP 2 TOTAL VIOLATIONS: $TOTAL ##########"

# --- step 3: mitigated control (SSBP on) -- only meaningful if step 2 fired --
if [ "$TOTAL" -gt 0 ]; then
  echo ""
  echo "########## STEP 3: mitigated control, SSBP ON (expect 0) ##########"
  run_fuzz "$CFGDIR/v4_ssbp_on.yaml" "$RUNS/v4_ssbp_on" "ssbp-on control"

  # --- step 4: SMT-off re-test -----------------------------------------------
  echo ""
  echo "########## STEP 4: SMT-off re-test ##########"
  SMT_WAS=$(cat /sys/devices/system/cpu/smt/control)
  echo off > /sys/devices/system/cpu/smt/control
  echo "smt now: $(cat /sys/devices/system/cpu/smt/control)"
  for seed in $SEEDS; do
    run_fuzz "$CFGDIR/v4_$seed.yaml" "$RUNS/v4_smtoff_$seed" "seed $seed SMT-off"
  done
  SMTOFF_TOTAL=$(find "$RUNS"/v4_smtoff_* -maxdepth 1 -name 'violation-*' -type d 2>/dev/null | wc -l)
  echo "########## STEP 4 SMT-OFF VIOLATIONS: $SMTOFF_TOTAL ##########"
  echo "$SMT_WAS" > /sys/devices/system/cpu/smt/control
  echo "smt restored: $(cat /sys/devices/system/cpu/smt/control)"
else
  echo ""
  echo "########## STEP 2 found 0 violations — SKIPPING steps 3-4 ##########"
  echo "(the mitigated control and SMT-off re-test only mean anything against"
  echo " violations to explain; see V4_SSB_RUNBOOK.md 'If step 2 STILL finds 0')"
fi

echo ""
echo "=== campaign end: $(date) ==="
echo "log: $LOG"
