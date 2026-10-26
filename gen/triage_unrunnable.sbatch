#!/bin/bash
# Triage WHY mit=leak gadgets hit UNRUNNABLE (step A). Runs the oracle eval on
# V4 (leak + unknown, n=40), captures the per-gadget reason logging added to
# oracle/spectector_oracle.py, and prints a reason histogram + sample compile
# stderr tails. Same SIF plumbing as the other spectector sbatches.
#SBATCH --job-name=triage_unrun
#SBATCH --partition=Teaching
#SBATCH --mem=8000
#SBATCH --time=03:00:00
#SBATCH --cpus-per-task=4
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err
set -uo pipefail
REPO="${REPO:-$HOME/speculative_execution}"; cd "$REPO"
source "$HOME/miniconda3/etc/profile.d/conda.sh"; conda activate specexec
mkdir -p eval/cluster_out gen/leakcond_triage
export SPECEXEC_CONTAINER_RUNTIME="${SPECEXEC_CONTAINER_RUNTIME:-apptainer}"
export SPECEXEC_SPECTECTOR_SIF="${SPECEXEC_SPECTECTOR_SIF:-$REPO/oracle/apptainer/spectector.sif}"
export SPECEXEC_SPECTECTOR_TIMEOUT="${SPECEXEC_SPECTECTOR_TIMEOUT:-30}"
[ -r "$SPECEXEC_SPECTECTOR_SIF" ] || { echo "FATAL: sif not readable $SPECEXEC_SPECTECTOR_SIF" >&2; exit 1; }
_LOCAL="/disk/scratch/$USER/$(basename "$SPECEXEC_SPECTECTOR_SIF")"
if [ "$SPECEXEC_SPECTECTOR_SIF" != "$_LOCAL" ]; then mkdir -p "/disk/scratch/$USER"
  cp -f "$SPECEXEC_SPECTECTOR_SIF" "$_LOCAL" 2>/dev/null && export SPECEXEC_SPECTECTOR_SIF="$_LOCAL" && echo "staged -> $_LOCAL"; fi

LOG=gen/leakcond_triage/stderr.log
echo "=== triage UNRUNNABLE: $(date) ==="
python3 -u gen/eval_leak_conditioning_oracle.py \
  --model gen/generator_leakcond.pt --classes SPECTRE_V4 --mits leak unknown --n 40 \
  --out-dir gen/leakcond_triage 2> "$LOG"
echo "=== UNRUNNABLE reason histogram (V4, leak+unknown) ==="
grep -oE 'reason=[a-z_]+' "$LOG" | sort | uniq -c | sort -rn
echo "=== sample compile_or_run stderr tails (first 6) ==="
grep 'reason=compile_or_run' "$LOG" | head -6
echo "=== sample status reasons (unsupported/bad status) ==="
grep -E 'reason=status' "$LOG" | head -6
echo "=== UNSUPPORTED INSTRUCTION histogram (the guard-soundness question) ==="
# pull mnemonics out of the uns_lines the oracle logged; a guard is only sound
# if these are all speculation-inert (bt/bsf/cmov/...) and not barriers.
grep -oE "uns_lines=\[.*\]" "$LOG" \
  | grep -oE "(unsupported instruction:?|unknown instr[a-z]*:?|not supported:?)[^',\"]*" \
  | sed -E 's/^[^:]*:?[[:space:]]*//' | tr 'A-Z' 'a-z' | awk '{print $1}' \
  | sort | uniq -c | sort -rn | head -30
echo "(if empty, print raw uns_lines samples:)"
grep -oE "uns_lines=\[.*\]" "$LOG" | sort | uniq -c | sort -rn | head -12
echo "=== done rc=$? ($(date)) ==="
