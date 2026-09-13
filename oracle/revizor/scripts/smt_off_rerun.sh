#!/bin/bash
set -uo pipefail
echo "=== SMT state before ==="
cat /sys/devices/system/cpu/smt/control

echo "=== disabling SMT ==="
echo off | sudo tee /sys/devices/system/cpu/smt/control
cat /sys/devices/system/cpu/smt/control

source ~/sca-fuzzer/venv/bin/activate
CFGDIR=/home/ritvik/speculative_execution/oracle/revizor/demo_configs
RUNDIR=~/rvzr_runs/smt_off
mkdir -p "$RUNDIR"

declare -A CLASSES=(
  [MDS]=detect-mds.yaml
  [L1TF]=detect-foreshadow.yaml
)

for cls in "${!CLASSES[@]}"; do
  cfg="${CLASSES[$cls]}"
  wd="$RUNDIR/$cls"
  rm -rf "$wd"; mkdir -p "$wd"
  echo "################################################################"
  echo "### $cls (SMT OFF) ($cfg)"
  echo "################################################################"
  sudo env "PATH=$PATH" rvzr fuzz \
    -s ~/sca-fuzzer/base_x86.json \
    -c "$CFGDIR/$cfg" \
    -n 200 -i 100 \
    -w "$wd" \
    --nonstop \
    --timeout 300 \
    2>&1 | tail -20
  echo
done

echo "=== re-enabling SMT (restoring original state) ==="
echo on | sudo tee /sys/devices/system/cpu/smt/control
cat /sys/devices/system/cpu/smt/control
echo "=== ALL DONE ==="
