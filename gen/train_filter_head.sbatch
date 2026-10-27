#!/bin/bash
# ---------------------------------------------------------------------------
# Train the pre-oracle filter heads (paper T6) as a batch job. Each head is a
# StandardScaler + LogisticRegression on the FROZEN locked-classifier GINE
# embedding; building the embedding runs the GNN over every logged leak/safe
# sample and builds a PDG each, which is memory-heavy enough to keep off the
# head node. GPU optional (speeds the encoder); CPU works too.
#
# Produces rank/filter_head_SPECTRE_{V1,V4}.pkl, which gen/rl_lencond.sbatch
# then consumes via:
#   EXTRA_ARGS="--filter-head rank/filter_head_{cls}.pkl --filter-threshold 0.5"
#
# Submit:  sbatch gen/train_filter_head.sbatch
# ---------------------------------------------------------------------------
#SBATCH --job-name=filter_head
#SBATCH --partition=Teaching
#SBATCH --gres=gpu:1
#SBATCH --mem=16000
#SBATCH --time=02:00:00
#SBATCH --cpus-per-task=4
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err
set -uo pipefail

REPO="${REPO:-$HOME/speculative_execution}"
cd "$REPO"
source "$HOME/miniconda3/etc/profile.d/conda.sh"
conda activate specexec

SAMPLES="${SAMPLES:-gen/rl_lencond_samples.jsonl}"
DEVICE="${DEVICE:-cpu}"   # set DEVICE=cuda to use the GPU for the encoder

# HEAD=pointwise (default, the logistic head) | pairwise (order-aware) | both
HEAD="${HEAD:-both}"

echo "=== train filter heads: $(date) samples=$SAMPLES device=$DEVICE head=$HEAD ==="
for CLS in SPECTRE_V1 SPECTRE_V4; do
  echo "--- $CLS"
  if [ "$HEAD" = "pointwise" ] || [ "$HEAD" = "both" ]; then
    python3 -u rank/filter_gate.py train --class "$CLS" \
      --samples "$SAMPLES" --device "$DEVICE" \
      --out "rank/filter_head_${CLS}.pkl"
  fi
  if [ "$HEAD" = "pairwise" ] || [ "$HEAD" = "both" ]; then
    # SPECTRE_V1 has no SAFE class in generated data, so a pairwise (leak vs
    # safe) head is undefined for it; train-pairwise exits with the same
    # both-classes-required error. Harmless under `set -uo pipefail` (no -e).
    python3 -u rank/filter_gate.py train-pairwise --class "$CLS" \
      --samples "$SAMPLES" --device "$DEVICE" \
      --out "rank/filter_head_pairwise_${CLS}.pkl" || echo "  (pairwise $CLS skipped)"
  fi
done
echo "=== done: $(date). pointwise -> rank/filter_head_SPECTRE_{V1,V4}.pkl;"
echo "    pairwise -> rank/filter_head_pairwise_SPECTRE_{V1,V4}.pkl ==="
