#!/bin/bash
# ---------------------------------------------------------------------------
# Score allhw3 / allhw3_mech (and the earlier allhw, allhw2, B1 baselines for
# H0) on the dev-806 and held-out counterfactual sets, then build the
# scoreboard (plan 2026-11-02-mechanism-vs-shape, Task 6 steps 4-5).
# Every checkpoint must pass its own reproduce gate (tol 3e-3) or it is skipped.
# CPU-only. Submitted by eval/cluster/submit_allhw3.sh.
# result: eval/mechanism/scoreboard_allhw3.md, preds in eval/mechanism/preds/
# ---------------------------------------------------------------------------
#SBATCH --job-name=score_allhw3
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
DATA="eval/data/revizor_hwlabel_variants.jsonl eval/data/revizor_hwlabel_cf_heldout.jsonl"
mkdir -p eval/mechanism/preds
args=()
score() {  # tag dir train
  local tag=$1 d=$2 train=$3
  [ -f "$d/gine_best.pt" ] || { echo "skip $tag (no ckpt at $d)"; return; }
  for v in $DATA; do
    local out="eval/mechanism/preds/${tag}__$(basename "$v" .jsonl).jsonl"
    python3 -u eval/score_hwlabel_variants.py \
      --checkpoint "$d/gine_best.pt" --metrics "$d/gine_metrics.json" \
      --train-data "$train" --test-data v54/data/v54_test.jsonl \
      --variants "$v" --out-dir "eval/mechanism/score/${tag}/$(basename "$v" .jsonl)" \
      --acc-tol 0.003 --dump-preds "$out" \
      && args+=(--preds "$tag=$out") || echo "$tag on $v gate-FAILED (rc=$?)"
  done
}
for s in $SEEDS; do
  score "allhw3_s$s"      "eval/cluster_out/allhw3_s$s"      v54/data/v55h_allhw3_train.jsonl
  score "allhw3_mech_s$s" "eval/cluster_out/allhw3_mech_s$s" v54/data/v55h_allhw3_train.jsonl
  score "allhw2_s$s"      "eval/cluster_out/allhw2_s$s"      v54/data/v55h_allhw2_train.jsonl
  score "allhw_s$s"       "eval/cluster_out/allhw_s$s"       v54/data/v55h_allhw_train.jsonl
  score "b1_s$s"          "eval/cluster_out/rv_embed_specfix_s$s" v54/data/v54_train.jsonl
  score "b1_mech_s$s"     "eval/cluster_out/b1_mech_s$s"     v54/data/v54_train.jsonl
done
# one preds NAME per seed (per-seed rows); arm means come from the per-seed rows
python3 -m eval.mechanism.scoreboard --data $DATA "${args[@]}" --out eval/mechanism/scoreboard_allhw3.md
