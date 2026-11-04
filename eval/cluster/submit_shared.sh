#!/bin/bash
# ---------------------------------------------------------------------------
# Shared-config confound test (eval/shared_config.py), cluster half. Run on the
# cluster HEAD node after pulling, once the converted campaign files
# eval/data/revizor_<class>_shared.jsonl are in the repo. Runs
# `eval.shared_config prepare` (seed-disjoint split + training pool), trains
# GINE (B1 recipe) on v55h_train + shared-train positives, 5 seeds, then
# scores those on the shared held-out gadgets and the old-config models
# (allhw, allhw2, b1) on all shared gadgets.
#   bash eval/cluster/submit_shared.sh
# ---------------------------------------------------------------------------
set -euo pipefail
REPO="${REPO:-$HOME/speculative_execution}"; cd "$REPO"
SEEDS="${SEEDS:-1 7 13 21 42}"
TRAIN=v54/data/v55h_shared_train.jsonl
source "$HOME/miniconda3/etc/profile.d/conda.sh"; conda activate specexec
python3 -m eval.shared_config prepare    # exits non-zero if no shared files / on a split leak
ids=()
for s in $SEEDS; do
  ids+=("$(sbatch --parsable --export=ALL,TAG=shared_gine,SEED=$s,TRAIN=$TRAIN,EXTRA= eval/cluster/train.sbatch)")
done
dep=$(IFS=:; echo "${ids[*]}")
sbatch --dependency=afterany:"$dep" --export=ALL,SEEDS="$SEEDS" eval/cluster/score_shared.sbatch
echo "submitted ${#ids[@]} trainings + scoring (afterany:$dep)"
