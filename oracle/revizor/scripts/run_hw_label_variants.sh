#!/bin/bash
# run_hw_label_variants.sh — hardware-label the fenced twins / misplaced-fence
# controls by `rvzr reproduce`-ing fenced variants of real violation programs
# on the i5-8300H. See hw_label_variants.py for the variants and the labelling
# rule.
#
# Usage (on the i5, from the repo root):
#   sudo bash oracle/revizor/scripts/run_hw_label_variants.sh \
#     [--records "<jsonl ...>" (default: the 4 class held-out sets)] [--classes "SPECTRE_V1 ..."] \
#     [--limit N] [--reps 3] [--out ~/rvzr_hwlabel]
#     [--skip-labelled "<results dir or labelled jsonl> ..."]   (skip dirs already run)
# Resumable: re-running with the same --out skips finished runs.
# Afterwards (anywhere with clang + objdump):
#   python3 oracle/revizor/scripts/hw_label_variants.py emit --out <out>
set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO="$(cd "$SCRIPT_DIR/../../.." && pwd)"
HOME_DIR="/home/${SUDO_USER:-$USER}"
VENV="$HOME_DIR/sca-fuzzer/venv"
SPEC="$HOME_DIR/sca-fuzzer/base_x86.json"
RECORDS="eval/data/revizor_spectre_v1_heldout.jsonl eval/data/revizor_spectre_v4_heldout.jsonl eval/data/revizor_mds_heldout.jsonl eval/data/revizor_l1tf_heldout.jsonl"
CLASSES="SPECTRE_V1 SPECTRE_V4 MDS L1TF"
LIMIT=0
SKIP=""
REPS=3
OUT="$HOME_DIR/rvzr_hwlabel"

while [ $# -gt 0 ]; do
  case "$1" in
    --records) RECORDS="$2"; shift 2;;
    --classes) CLASSES="$2"; shift 2;;
    --limit) LIMIT="$2"; shift 2;;
    --skip-labelled) SKIP="$2"; shift 2;;
    --reps) REPS="$2"; shift 2;;
    --out) OUT="$2"; shift 2;;
    -h|--help) sed -n 2,14p "$0"; exit 0;;
    *) echo "FATAL: unknown argument '$1'"; exit 1;;
  esac
done

# Host guard: same requirements as run_multiclass_campaign.sh.
[ "$(uname -m)" = "x86_64" ] && [ "$(uname -s)" = "Linux" ] || {
  echo "FATAL: needs the i5-8300H bare-metal Linux box (Revizor reads real PMU counters)."; exit 1; }
grep -q '^rvzr_executor ' /proc/modules || {
  echo "FATAL: rvzr_executor kernel module not loaded (see run_multiclass_campaign.sh)."; exit 1; }
[ "$EUID" -eq 0 ] || { echo "FATAL: run with sudo (rvzr reproduce needs the executor)."; exit 1; }
for f in "$VENV/bin/rvzr" "$VENV/bin/python" "$SPEC"; do
  [ -e "$f" ] || { echo "FATAL: missing $f"; exit 1; }
done

mkdir -p "$OUT"
LOG="$OUT/run_$(date +%y%m%d_%H%M%S).log"
exec > >(tee -a "$LOG") 2>&1
echo "=== hw_label_variants: $(date) ==="
grep -m1 "model name" /proc/cpuinfo
echo "smt: $(cat /sys/devices/system/cpu/smt/control 2>/dev/null)"
echo "spec_store_bypass: $(cat /sys/devices/system/cpu/vulnerabilities/spec_store_bypass 2>/dev/null)"

cd "$REPO" || exit 1
PY="$VENV/bin/python"
# shellcheck disable=SC2086
"$PY" "$SCRIPT_DIR/hw_label_variants.py" plan --records $RECORDS --classes $CLASSES \
  --limit "$LIMIT" --out "$OUT" ${SKIP:+--skip-labelled $SKIP} || exit 1
"$PY" "$SCRIPT_DIR/hw_label_variants.py" run --out "$OUT" --rvzr "$VENV/bin/rvzr" \
  --spec "$SPEC" --reps "$REPS" || exit 1
chown -R "${SUDO_USER:-$USER}" "$OUT"
echo "=== done: $(date). Next: hw_label_variants.py emit --out $OUT ==="
