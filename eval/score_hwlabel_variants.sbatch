#!/bin/bash
# ---------------------------------------------------------------------------
# Score the GINE detector on the HW-labelled fenced-variant dataset
# (Revizor i5-8300H). CPU-only inference — no training, no GPU.
#
# IMPORTANT (why this sweeps checkpoints):
# The first run proved v54/viz_v54_spec/gine_best.pt (trained Jul-28) does NOT
# reproduce its recorded 0.9527 on current code (got 0.9006) — the graph/feature
# pipeline moved ~10 commits since (ISA-surface normalise, address-based
# MEMORY_ORDER edges, CFG-path spec edges, x86 load/store fix, neutral inline
# features). The reproduce-gate correctly refused to report variant numbers off
# a stale checkpoint.
#
# To score the detector faithfully we need a checkpoint that reproduces its own
# recorded accuracy on CURRENT code. This script sweeps candidates (most-recent,
# full-flagged first) and uses the FIRST one whose reproduce-gate passes. The
# script reads each run's own gine_metrics.json for config + expected acc, so no
# config is hardcoded and the gate is meaningful per checkpoint.
#
# Variants: we always stage the 821-record set from origin/hw-label-variants
# (the in-tree file on `cluster` is a stale 806-record version), without merging
# the branch (which would drag 180 MB of .bin).
#
# Submit:  sbatch eval/score_hwlabel_variants.sbatch
# Output:  eval/hwlabel_variants/<run-tag>/{score.json,score.md,rows.jsonl}
# ---------------------------------------------------------------------------
#SBATCH --job-name=score_hwvar
#SBATCH --partition=Teaching
#SBATCH --mem=12000
#SBATCH --time=02:00:00
#SBATCH --cpus-per-task=4
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err
set -uo pipefail

REPO="${REPO:-$HOME/speculative_execution}"
cd "$REPO"
source "$HOME/miniconda3/etc/profile.d/conda.sh"
conda activate specexec
mkdir -p eval/cluster_out eval/hwlabel_variants

# Stage the 821-record variant set from the remote (no merge, no .bin bloat).
VARS_REPO="eval/data/revizor_hwlabel_variants.jsonl"
STAGED="eval/hwlabel_variants/_variants_821.jsonl"
git fetch -q origin hw-label-variants
git show origin/hw-label-variants:"$VARS_REPO" > "$STAGED" || {
  echo "FATAL: could not stage variants from origin/hw-label-variants" >&2; exit 1; }
echo "staged variant records: $(grep -c . "$STAGED")"

# Candidate checkpoints, most likely to reproduce on current code FIRST.
# A run dir must hold gine_best.pt + gine_metrics.json. Override with
# CANDIDATES="dir1 dir2 ..." to sweep a different list.
CANDIDATES="${CANDIDATES:-\
eval/cluster_out/rv_embed_specfix_s42 \
eval/cluster_out/rv_embed_specfix_s7 \
eval/cluster_out/rv_embed_specfix_s21 \
eval/cluster_out/rv_embed_specfix_s1 \
eval/cluster_out/rv_embed_addrmo_s1 \
v54/viz_v54_spec}"

winner=""
for dir in $CANDIDATES; do
  ckpt="$dir/gine_best.pt"; met="$dir/gine_metrics.json"
  tag=$(echo "$dir" | tr '/' '_')
  if [[ ! -f "$ckpt" || ! -f "$met" ]]; then
    echo "--- skip $dir (missing gine_best.pt or gine_metrics.json) ---"; continue
  fi
  echo "=================================================================="
  echo "=== candidate: $dir  ($(date)) ==="
  python3 -u eval/score_hwlabel_variants.py \
    --checkpoint "$ckpt" --metrics "$met" \
    --train-data v54/data/v54_train.jsonl \
    --test-data  v54/data/v54_test.jsonl \
    --variants   "$STAGED" \
    --out-dir    "eval/hwlabel_variants/$tag"
  rc=$?
  if [[ $rc -eq 0 ]]; then
    echo "=== GATE PASSED + SCORED with $dir -> eval/hwlabel_variants/$tag ==="
    winner="$dir"; break
  elif [[ $rc -eq 2 ]]; then
    echo "=== gate FAILED for $dir (stale vs current code), trying next ==="
  else
    echo "=== ERROR rc=$rc for $dir, trying next ==="
  fi
done

if [[ -z "$winner" ]]; then
  echo "########################################################" >&2
  echo "NO candidate reproduced its recorded accuracy on current code." >&2
  echo "This means current graph/feature code reproduces NO committed" >&2
  echo "checkpoint -> a retrain on current code is required before any" >&2
  echo "detector number (incl. the paper's) can be scored faithfully." >&2
  echo "########################################################" >&2
  exit 2
fi
echo "=== done: $(date) winner=$winner ==="
