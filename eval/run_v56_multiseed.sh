#!/usr/bin/env bash
# run_v56_multiseed.sh — Phase 4 multi-seed comparison: hand / learned / both /
# diff_gated_both node-feature modes, all with --use-spec-builder (matching
# the "current best" recipe), on the locked v54 data/split.
#
# Splittable across machines: pass MODES/SEEDS as env vars to run a shard,
# then merge the results.tsv files (see SPECDISCOVER_LEARNED_FEATURES_PLAN.md).
#
# Usage:
#   ./eval/run_v56_multiseed.sh                       # all modes, all seeds
#   MODES="diff_gated_both" SEEDS="99 123 55" ./eval/run_v56_multiseed.sh
#
# Columns: mode  seed  test_acc  macro_f1  <per-class recalls...>
# Metrics are read from each run's gine_metrics.json (structured), NOT scraped
# from the log — an earlier version awk'd the log and silently emitted rows
# with empty accuracy and class *names* in the recall columns when a run
# crashed, which wasted a full 20-run batch before anyone noticed.
set -uo pipefail
cd "$(dirname "$0")/../v56"

SEEDS=(${SEEDS:-42 1 7 13 21})
MODES=(${MODES:-hand learned both diff_gated_both})
MLM="${MLM:-../spec/mlm_large.pt}"
TRAIN="../v54/data/v54_train.jsonl"
TEST="../v54/data/v54_test.jsonl"
# Overridable so a pre-fix and a post-fix run can be kept in separate
# directories instead of silently interleaving in one results file.
OUT="${OUT:-../eval/v56_multiseed}"
CLASSES="SPECTRE_V2 L1TF RETBLEED INCEPTION BRANCH_HISTORY_INJECTION MDS"

# ---- preflight: fail loudly and early, not 20 crashed runs later ----------
fail() { echo "PREFLIGHT FAILED: $*" >&2; exit 1; }
for f in "$TRAIN" "$TEST" train_gine_v38.py; do
  [ -f "$f" ] || fail "missing $f"
done
need_mlm=0
for m in "${MODES[@]}"; do [ "$m" = "hand" ] || need_mlm=1; done
if [ "$need_mlm" = "1" ]; then
  [ -f "$MLM" ] || fail "missing $MLM (needed by modes: ${MODES[*]})"
  python3 - "$MLM" <<'PY' || fail "cannot load $MLM in this environment (see traceback above)"
import sys, pathlib
sys.path.insert(0, str(pathlib.Path("../spec").resolve()))
from train_mlm import MlmEncoder
m = MlmEncoder.load(sys.argv[1])
print(f"preflight: {sys.argv[1]} loads OK — vocab={len(m.vocab)} dim={m.dim} "
      f"tokenizer={getattr(m,'tokenizer_mode','mnemonic')}")
PY
fi
python3 -c "import torch,sklearn,numpy,matplotlib,tqdm; print('preflight: torch',torch.__version__,'cuda',torch.cuda.is_available())" \
  || fail "missing python dependencies (pip install -r requirements.txt)"

mkdir -p "$OUT"
TSV="$OUT/results.tsv"
echo "preflight OK — ${#MODES[@]} mode(s) x ${#SEEDS[@]} seed(s) = $((${#MODES[@]} * ${#SEEDS[@]})) runs -> $TSV"

n_ok=0; n_fail=0
for mode in "${MODES[@]}"; do
  extra="--use-spec-builder"
  if [ "$mode" != "hand" ]; then extra="$extra --node-feature-mode $mode --mlm-path $MLM"; fi
  for sd in "${SEEDS[@]}"; do
    log="$OUT/${mode}_s${sd}.log"
    viz="$OUT/viz_${mode}_s${sd}"
    TQDM_DISABLE=1 python3 -u train_gine_v38.py \
      --train-data "$TRAIN" --test-data "$TEST" \
      --output-dir "$viz" --viz-dir "$viz" \
      --epochs 100 --patience 12 --hidden-dim 128 --num-layers 3 --jk-mode cat \
      --batch-size 32 --lr 1e-3 --weight-decay 5e-4 --dropout 0.5 \
      --lambda-con 0.5 --temperature 0.07 --hard-neg-weight 2.0 --arch-emb-dim 8 \
      --seed "$sd" $extra \
      > "$log" 2>&1
    rc=$?
    if [ $rc -ne 0 ] || [ ! -f "$viz/gine_metrics.json" ]; then
      n_fail=$((n_fail + 1))
      echo "FAILED  ${mode} seed=${sd} (exit $rc) — last lines of $log:" >&2
      tail -15 "$log" >&2
      echo "---" >&2
      continue
    fi
    # Structured extraction: no row is written unless the run really finished.
    row=$(python3 - "$viz/gine_metrics.json" "$mode" "$sd" $CLASSES <<'PY'
import json, sys
m = json.load(open(sys.argv[1]))
mode, sd, classes = sys.argv[2], sys.argv[3], sys.argv[4:]
rep = m["classification_report"]
cells = [mode, sd, f"{m['test_accuracy']*100:.2f}", f"{rep['macro avg']['f1-score']*100:.2f}"]
cells += [f"{rep.get(c, {}).get('recall', float('nan'))*100:.2f}" for c in classes]
print("\t".join(cells))
PY
    ) || { n_fail=$((n_fail + 1)); echo "FAILED to parse metrics for ${mode} s${sd}" >&2; continue; }
    n_ok=$((n_ok + 1))
    # Append per run so an interrupted batch keeps its completed rows.
    echo "$row" | tee -a "$TSV"
  done
done

echo "DONE — $n_ok succeeded, $n_fail failed -> $TSV"
echo "columns: mode seed test_acc macro_f1 $CLASSES"
[ $n_fail -eq 0 ] || exit 1
