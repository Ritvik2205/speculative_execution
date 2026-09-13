#!/bin/bash
set -uo pipefail
cd ~/sca-fuzzer
source venv/bin/activate
CFGDIR=/home/ritvik/speculative_execution/oracle/revizor/demo_configs
RUNDIR=~/rvzr_runs/baseline
mkdir -p "$RUNDIR"

declare -A CLASSES=(
  [SPECTRE_V1]=detect-v1.yaml
  [SPECTRE_V4]=detect-v4.yaml
  [L1TF]=detect-foreshadow.yaml
  [MDS]=detect-mds.yaml
)

for cls in "${!CLASSES[@]}"; do
  cfg="${CLASSES[$cls]}"
  wd="$RUNDIR/$cls"
  rm -rf "$wd"; mkdir -p "$wd"
  echo "################################################################"
  echo "### $cls  ($cfg)"
  echo "################################################################"
  sudo env "PATH=$PATH" rvzr fuzz \
    -s ~/sca-fuzzer/base_x86.json \
    -c "$CFGDIR/$cfg" \
    -n 200 -i 100 \
    -w "$wd" \
    --nonstop \
    --timeout 300 \
    2>&1 | tail -30
  echo
done
echo "=== ALL DONE ==="
