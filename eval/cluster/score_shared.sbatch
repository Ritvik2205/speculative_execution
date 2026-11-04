#!/bin/bash
# ---------------------------------------------------------------------------
# Score models on the shared-config gadgets (eval/shared_config.py):
#   old-config models (allhw, allhw2, b1) on ALL shared gadgets (cross-config),
#   shared_gine on the shared HELD-OUT gadgets (T2).
# Every checkpoint must pass its own reproduce gate (tol 3e-3) or it is skipped.
# CPU-only. Submitted by eval/cluster/submit_shared.sh; also runnable alone
# (missing checkpoints are skipped).
# result: eval/shared_config_report.md, preds in eval/shared_config_preds/
# ---------------------------------------------------------------------------
#SBATCH --job-name=score_shared
#SBATCH --partition=Teaching
#SBATCH --mem=12000
#SBATCH --time=04:00:00
#SBATCH --cpus-per-task=4
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err
set -uo pipefail
REPO="${REPO:-$HOME/speculative_execution}"; cd "$REPO"
source "$HOME/miniconda3/etc/profile.d/conda.sh"; conda activate specexec
SEEDS="${SEEDS:-1 7 13 21 42}"
mkdir -p eval/shared_config_preds
args=()
score() {  # tag dir train variants
  local tag=$1 d=$2 train=$3 v=$4
  [ -f "$d/gine_best.pt" ] || { echo "skip $tag (no ckpt at $d)"; return; }
  local out="eval/shared_config_preds/${tag}__$(basename "$v" .jsonl).jsonl"
  python3 -u eval/score_hwlabel_variants.py \
    --checkpoint "$d/gine_best.pt" --metrics "$d/gine_metrics.json" \
    --train-data "$train" --test-data v54/data/v54_test.jsonl \
    --variants "$v" --out-dir "eval/shared_config_score/${tag}" \
    --acc-tol 0.003 --dump-preds "$out" \
    && args+=(--preds "$tag=$out") || echo "$tag gate-FAILED (rc=$?)"
}
ALL=eval/data/revizor_shared_all_variants.jsonl
HELD=eval/data/revizor_shared_heldout_variants.jsonl
for s in $SEEDS; do
  score "shared_gine_s$s" "eval/cluster_out/shared_gine_s$s"     v54/data/v55h_shared_train.jsonl "$HELD"
  score "allhw_s$s"       "eval/cluster_out/allhw_s$s"           v54/data/v55h_allhw_train.jsonl  "$ALL"
  score "allhw2_s$s"      "eval/cluster_out/allhw2_s$s"          v54/data/v55h_allhw2_train.jsonl "$ALL"
  score "b1_s$s"          "eval/cluster_out/rv_embed_specfix_s$s" v54/data/v54_train.jsonl        "$ALL"
done
python3 -m eval.shared_config report "${args[@]}"
