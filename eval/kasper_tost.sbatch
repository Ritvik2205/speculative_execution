#!/bin/bash
# ---------------------------------------------------------------------------
# KASPER-flags lift: paired multi-seed retrain of the v54 GINE with the three
# opt-in taint flags (F1 is_control_gated_source, F2 is_stale_forward_source,
# F3 is_varlat_sink) OFF then ON, same seeds, same spec-builder graphs, so the
# only difference is the 3 extra node features. Measures whether they move
# detector accuracy / per-class recall -- the lift claim the feature audit left
# open (docs/KASPER_FEATURE_AUDIT_2026-10-20.md). Single-seed deltas are not
# trusted in this repo, hence 5 seeds + paired aggregation.
#
# "both" node-feature mode (PDG base + learned MLM), the config the paper's
# detector uses. base_dim auto-widens 40->43 when SPECEXEC_KASPER_FLAGS=1.
#
# PREREQ: ../spec/mlm_large.pt present (the scaled ISA-neutral MLM, same file
#   eval/run_full_tost.sh uses). GPU required (GINE trains on cuda).
#
# Submit:  sbatch eval/kasper_tost.sbatch
#          SEEDS="42 1 7" sbatch eval/kasper_tost.sbatch   # fewer seeds, faster
# After it finishes it writes eval/kasper_tost/kasper_tost.md (paired table).
# ---------------------------------------------------------------------------
#SBATCH --job-name=kasper_tost
#SBATCH --partition=Teaching
#SBATCH --gres=gpu:1
#SBATCH --mem=24000
#SBATCH --time=12:00:00
#SBATCH --cpus-per-task=4
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err
set -uo pipefail

REPO="${REPO:-$HOME/speculative_execution}"
cd "$REPO"
source "$HOME/miniconda3/etc/profile.d/conda.sh"
conda activate specexec
mkdir -p eval/cluster_out

SEEDS="${SEEDS:-42 1 7 13 21}"
MLM="${MLM:-spec/mlm_large.pt}"
OUT="eval/kasper_tost"
mkdir -p "$OUT"
TSV="$OUT/results.tsv"
: > "$TSV"

[ -f "$MLM" ] || { echo "FATAL: MLM not found: $MLM (set MLM=...)"; exit 1; }

echo "=== KASPER-flags paired TOST: $(date) seeds=[$SEEDS] ==="
# kflag 0 = baseline (40-dim nodes), 1 = +F1/F2/F3 (43-dim nodes)
for kflag in 0 1; do
  for sd in $SEEDS; do
    tag="k${kflag}_s${sd}"
    log="$OUT/${tag}.log"
    echo "--- training $tag (SPECEXEC_KASPER_FLAGS=$kflag) ---"
    SPECEXEC_KASPER_FLAGS=$kflag TQDM_DISABLE=1 python3 -u v54/train_gine_v38.py \
      --train-data v54/data/v54_train.jsonl --test-data v54/data/v54_test.jsonl \
      --output-dir "$OUT/viz_${tag}" --viz-dir "$OUT/viz_${tag}" \
      --epochs 60 --patience 10 --hidden-dim 128 --num-layers 3 --jk-mode cat \
      --batch-size 32 --lr 1e-3 --use-spec-builder --seed "$sd" \
      --node-feature-mode both --mlm-path "$MLM" \
      > "$log" 2>&1
    acc=$(grep -oE "Final test accuracy: [0-9.]+" "$log" | tail -1 | grep -oE "[0-9.]+$")
    f1=$(grep -E "macro avg" "$log" | tail -1 | awk '{print $5}')
    echo -e "${kflag}\t${sd}\t${acc}\t${f1}" | tee -a "$TSV"
  done
done

echo "=== aggregating paired result -> $OUT/kasper_tost.md ==="
python3 eval/kasper_tost_aggregate.py --results-dir "$OUT"
echo "=== done: $(date). Table in $OUT/kasper_tost.md ==="
