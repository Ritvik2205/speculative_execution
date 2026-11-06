#!/bin/bash
# ---------------------------------------------------------------------------
# Score the real-world eval set (eval/data/realworld_*.jsonl) with
#   * the new arms rw, rw_memreads  (own pool v54/data/rw_train.jsonl)
#       - scored with --overlap-clean   -> eval/realworld_score/<arm>_s<seed>/
#         (Spectector/SafeSide/FastSpec rows are out of their pool, so the
#          train_overlap rows count as clean)
#       - AND on the collector's flags  -> eval/realworld_score/<arm>_h0set_s<seed>/
#         (same headline rows as H0, for a like-for-like comparison)
#   * every existing checkpoint (H0): allhw3, allhw3_mech, allhw2, allhw, b1,
#     b1_mech, collector flags (train_overlap rows stay excluded).
# Each checkpoint runs the scorer's reproduce gate first; exit 2 = drift ->
# logged skip, the batch continues.  CPU-only.  Then SUMMARY.md.
# Submitted by eval/cluster/submit_realworld.sh.
# ---------------------------------------------------------------------------
#SBATCH --job-name=score_realworld
#SBATCH --partition=Teaching
#SBATCH --mem=12000
#SBATCH --time=06:00:00
#SBATCH --cpus-per-task=4
#SBATCH --output=eval/cluster_out/%x_%j.out
#SBATCH --error=eval/cluster_out/%x_%j.err
set -uo pipefail
REPO="${REPO:-$HOME/speculative_execution}"; cd "$REPO"
source "$HOME/miniconda3/etc/profile.d/conda.sh"; conda activate specexec
SEEDS="${SEEDS:-1 7 13 21 42}"
RW_PREFIX="${RW_PREFIX:-rw}"                       # rw (allhw3 pool) or rw_interim (allhw pool)
RW_TRAIN="${RW_TRAIN:-v54/data/rw_train.jsonl}"
DATA='eval/data/realworld_*.jsonl'
ROOT=eval/realworld_score
mkdir -p "$ROOT"
STATUS="$ROOT/STATUS.tsv"     # I6: one `<name>\t<rc|no_ckpt>` line per expected run; SUMMARY.md reads it
: > "$STATUS"
EXPECTED=()
score() {  # name dir train [extra flags]
  local name=$1 d=$2 train=$3; shift 3
  EXPECTED+=("$name")
  [ -f "$d/gine_best.pt" ] || { echo "skip $name (no ckpt at $d)"; printf '%s\tno_ckpt\n' "$name" >> "$STATUS"; return; }
  python3 -u -m eval.score_realworld --run-dir "$d" --data "$DATA" --train-pool "$train" \
      --out-dir "$ROOT/$name" "$@"
  local rc=$?
  printf '%s\t%s\n' "$name" "$rc" >> "$STATUS"
  [ $rc -eq 0 ] || echo "$name FAILED rc=$rc (rc 2 = reproduce-gate drift) -- skipped"
}
for s in $SEEDS; do
  P=$RW_PREFIX
  score "${P}_s$s"               "eval/cluster_out/${P}_s$s"          "$RW_TRAIN" --overlap-clean
  score "${P}_h0set_s$s"         "eval/cluster_out/${P}_s$s"          "$RW_TRAIN"
  score "${P}_memreads_s$s"      "eval/cluster_out/${P}_memreads_s$s" "$RW_TRAIN" --overlap-clean
  score "${P}_memreads_h0set_s$s" "eval/cluster_out/${P}_memreads_s$s" "$RW_TRAIN"
  score "allhw3_s$s"      "eval/cluster_out/allhw3_s$s"      v54/data/v55h_allhw3_train.jsonl
  score "allhw3_mech_s$s" "eval/cluster_out/allhw3_mech_s$s" v54/data/v55h_allhw3_train.jsonl
  score "allhw3_memreads_s$s" "eval/cluster_out/allhw3_memreads_s$s" v54/data/v55h_allhw3_train.jsonl
  score "allhw2_s$s"      "eval/cluster_out/allhw2_s$s"      v54/data/v55h_allhw2_train.jsonl
  score "allhw_s$s"       "eval/cluster_out/allhw_s$s"       v54/data/v55h_allhw_train.jsonl
  score "b1_s$s"          "eval/cluster_out/rv_embed_specfix_s$s" v54/data/v54_train.jsonl
  score "b1_mech_s$s"     "eval/cluster_out/b1_mech_s$s"     v54/data/v54_train.jsonl
done
python3 -m eval.realworld_score_summary --root "$ROOT" --out "$ROOT/SUMMARY.md" \
    --status "$STATUS" --expected "${EXPECTED[@]}"
