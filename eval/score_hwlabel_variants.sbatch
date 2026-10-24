#!/bin/bash
# ---------------------------------------------------------------------------
# Score the locked GINE detector (v54_spec) on the HW-labelled fenced-variant
# dataset (Revizor i5-8300H). CPU-only inference — no training, no GPU.
#
# The checkpoint, v54 train/test data, and this script live on the `cluster`
# branch. The variant dataset lives on `hw-label-variants`, so we stage just
# that one blob from the remote rather than merging the branch first (which
# would also drag in 180 MB of regenerable .bin inputs — see
# rvzr_runs hygiene note). Nothing compute-heavy runs on the login node.
#
# Pre-flight already verified 0 train/test overlap and 0 Revizor fingerprint,
# so this is a clean OOD test. The script's own reproduce-gate HARD-ABORTS if
# the pipeline no longer reproduces the locked v54 test accuracy (0.9526946…),
# which would mean preprocessing drifted and the variant numbers are junk.
#
# Submit:  sbatch eval/score_hwlabel_variants.sbatch
# Output:  eval/hwlabel_variants/{score.json,score.md,rows.jsonl}
# ---------------------------------------------------------------------------
#SBATCH --job-name=score_hwvar
#SBATCH --partition=Teaching
#SBATCH --mem=12000
#SBATCH --time=01:00:00
#SBATCH --cpus-per-task=4
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err
set -uo pipefail

REPO="${REPO:-$HOME/speculative_execution}"
cd "$REPO"
source "$HOME/miniconda3/etc/profile.d/conda.sh"
conda activate specexec
mkdir -p eval/cluster_out eval/hwlabel_variants

CKPT="v54/viz_v54_spec/gine_best.pt"
if [[ ! -f "$CKPT" ]]; then
  echo "FATAL: checkpoint $CKPT missing — are you on the cluster branch?" >&2
  exit 1
fi

# Stage the variant blob from the remote (no merge, no .bin bloat).
VARS="eval/data/revizor_hwlabel_variants.jsonl"
STAGED="eval/hwlabel_variants/_variants_staged.jsonl"
if [[ -f "$VARS" ]]; then
  echo "using in-tree $VARS"
  SRC="$VARS"
else
  echo "staging variants from origin/hw-label-variants"
  git fetch -q origin hw-label-variants
  git show origin/hw-label-variants:"$VARS" > "$STAGED" || {
    echo "FATAL: could not stage $VARS from origin/hw-label-variants" >&2; exit 1; }
  SRC="$STAGED"
fi
echo "variant records: $(grep -c . "$SRC")"

echo "=== scoring: $(date) ==="
python3 -u eval/score_hwlabel_variants.py \
  --checkpoint "$CKPT" \
  --train-data v54/data/v54_train.jsonl \
  --test-data  v54/data/v54_test.jsonl \
  --variants   "$SRC" \
  --out-dir    eval/hwlabel_variants
rc=$?
echo "=== done: $(date) rc=$rc ==="
exit $rc
