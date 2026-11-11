#!/bin/bash
# run_gen_vs_random.sh — step 3 on the i5-8300H: violations per test case for
# the learned generator vs Revizor's random generator vs non-learned bars.
# Programs for the learned / unigram / mutation / replay arms are in the repo
# (hw/gen_vs_random, built by gen/revizor_arms.py); the random arm is generated
# here by `rvzr generate` with the same config.
#
# Usage (on the i5, from the repo root, after `git pull`):
#   sudo bash oracle/revizor/scripts/run_gen_vs_random.sh \
#     [--classes "SPECTRE_V1"] [--n 200] [--seeds "0 1 2 3 4"] [--inputs 100] \
#     [--arms hw/gen_vs_random] [--out ~/rvzr_gen_vs_random] [--limit N]
# Resumable: re-running with the same --out continues where it stopped.
# Result: <out>/REPORT.md and <out>/runs.jsonl (copy both back into the repo
# under oracle/revizor/results/gen_vs_random_<date>/).
set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO="$(cd "$SCRIPT_DIR/../../.." && pwd)"
HOME_DIR="/home/${SUDO_USER:-$USER}"
VENV="$HOME_DIR/sca-fuzzer/venv"
SPEC="$HOME_DIR/sca-fuzzer/base_x86.json"
CLASSES="SPECTRE_V1"
N=200
SEEDS="0 1 2 3 4"
INPUTS=100
ARMS="$REPO/hw/gen_vs_random"
OUT="$HOME_DIR/rvzr_gen_vs_random"
LIMIT=0

while [ $# -gt 0 ]; do
  case "$1" in
    --classes) CLASSES="$2"; shift 2;;
    --n) N="$2"; shift 2;;
    --seeds) SEEDS="$2"; shift 2;;
    --inputs) INPUTS="$2"; shift 2;;
    --arms) ARMS="$2"; shift 2;;
    --out) OUT="$2"; shift 2;;
    --limit) LIMIT="$2"; shift 2;;
    -h|--help) sed -n 2,15p "$0"; exit 0;;
    *) echo "FATAL: unknown argument '$1'"; exit 1;;
  esac
done

[ "$(uname -m)" = "x86_64" ] && [ "$(uname -s)" = "Linux" ] || {
  echo "FATAL: needs the i5-8300H bare-metal Linux box (Revizor reads real PMU counters)."; exit 1; }
grep -q '^rvzr_executor ' /proc/modules || {
  echo "FATAL: rvzr_executor kernel module not loaded (see run_multiclass_campaign.sh)."; exit 1; }
[ "$EUID" -eq 0 ] || { echo "FATAL: run with sudo (rvzr needs the executor)."; exit 1; }
for f in "$VENV/bin/rvzr" "$VENV/bin/python" "$SPEC" "$ARMS/manifest.jsonl"; do
  [ -e "$f" ] || { echo "FATAL: missing $f"; exit 1; }
done

mkdir -p "$OUT"
LOG="$OUT/run_$(date +%y%m%d_%H%M%S).log"
exec > >(tee -a "$LOG") 2>&1
echo "=== gen_vs_random: $(date) ==="
grep -m1 "model name" /proc/cpuinfo
echo "smt: $(cat /sys/devices/system/cpu/smt/control 2>/dev/null)"
echo "repo: $(git -C "$REPO" rev-parse --short HEAD 2>/dev/null)"

PY="$VENV/bin/python"
COMMON=(--arms "$ARMS" --out "$OUT" --rvzr "$VENV/bin/rvzr" --spec "$SPEC" --inputs "$INPUTS")
# shellcheck disable=SC2086
"$PY" "$SCRIPT_DIR/gen_vs_random.py" preflight "${COMMON[@]}" --classes $CLASSES || exit 1
# shellcheck disable=SC2086
"$PY" "$SCRIPT_DIR/gen_vs_random.py" random "${COMMON[@]}" --classes $CLASSES --seeds $SEEDS --n "$N" || exit 1
# shellcheck disable=SC2086
"$PY" "$SCRIPT_DIR/gen_vs_random.py" run "${COMMON[@]}" --classes $CLASSES --limit "$LIMIT"
RC=$?
chown -R "${SUDO_USER:-$USER}" "$OUT" "$ARMS" 2>/dev/null
echo "=== done (rc=$RC): $(date) — report at $OUT/REPORT.md ==="
# rc 3 = more than half of this invocation's runs errored; do not chain a long run on it
exit $RC
