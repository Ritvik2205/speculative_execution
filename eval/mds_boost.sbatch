#!/bin/bash
# ---------------------------------------------------------------------------
# MDS class-weighted retrain sweep. The V1<->MDS confusion is a narrow tail:
# on the corpus MDS is already recall 0.933 / precision 1.000, but ~7% of MDS
# (the no-VERW, has-compare gadgets that look structurally like Spectre-V1)
# default to V1 under the 3.4:1 V1:MDS class imbalance. This upweights MDS's
# CE loss (on top of the inverse-sqrt scheme) to pull the ambiguous boundary
# toward MDS, and measures whether MDS recall rises WITHOUT tanking V1
# precision/recall. No new features (the F1/F2/F3 feature route was a null).
#
# "both" node-feature mode (paper config). GPU. 3 boost levels x seeds.
# PREREQ: spec/mlm_large.pt present (same MLM as run_full_tost / kasper_tost).
#
# Submit:  sbatch eval/mds_boost.sbatch
#          BOOSTS="1.0 2.0" SEEDS="42 1" sbatch eval/mds_boost.sbatch
# After:   eval/mds_boost/mds_boost.md  (MDS recall/prec + V1 prec per boost)
# ---------------------------------------------------------------------------
#SBATCH --job-name=mds_boost
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

SEEDS="${SEEDS:-42 1 7}"
BOOSTS="${BOOSTS:-1.0 2.0 3.0}"   # 1.0 = baseline (no extra boost)
MLM="${MLM:-spec/mlm_large.pt}"
OUT="eval/mds_boost"
mkdir -p "$OUT"
[ -f "$MLM" ] || { echo "FATAL: MLM not found: $MLM (set MLM=...)"; exit 1; }

echo "=== MDS class-boost sweep: $(date) boosts=[$BOOSTS] seeds=[$SEEDS] ==="
for b in $BOOSTS; do
  btag=$(echo "$b" | tr -d '.')
  boost_arg=""
  [ "$b" != "1.0" ] && boost_arg="--class-boost MDS:$b"
  for sd in $SEEDS; do
    tag="b${btag}_s${sd}"
    log="$OUT/${tag}.log"
    echo "--- training $tag (MDS boost x$b) ---"
    TQDM_DISABLE=1 python3 -u v54/train_gine_v38.py \
      --train-data v54/data/v54_train.jsonl --test-data v54/data/v54_test.jsonl \
      --output-dir "$OUT/viz_${tag}" --viz-dir "$OUT/viz_${tag}" \
      --epochs 60 --patience 10 --hidden-dim 128 --num-layers 3 --jk-mode cat \
      --batch-size 32 --lr 1e-3 --use-spec-builder --seed "$sd" \
      --node-feature-mode both --mlm-path "$MLM" $boost_arg \
      > "$log" 2>&1
    acc=$(grep -oE "Final test accuracy: [0-9.]+" "$log" | tail -1 | grep -oE "[0-9.]+$")
    echo "  $tag done (acc=$acc)"
  done
done

echo "=== aggregating -> $OUT/mds_boost.md ==="
python3 eval/mds_boost_aggregate.py --results-dir "$OUT"
echo "=== done: $(date). Table in $OUT/mds_boost.md ==="
