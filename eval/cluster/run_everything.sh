#!/bin/bash
# ONE script to run everything on the cluster.
# Submits every training job (W3 grid, W4 edge-ablations, W5 leave-one-ISA-out,
# W6 generator pretrain) at 5 seeds, then chains a final aggregation job that
# waits for them all (Slurm afterok) and writes every result table — including
# the honest real-V4 recall on the hardware gadgets.
#
# Usage (on icf, from the repo root, after the one-time conda env + partition check):
#   bash eval/cluster/run_everything.sh
#   squeue -u $USER          # watch
# Results land in eval/cluster_out/*.md when the aggregation job finishes.
set -euo pipefail
cd "$(dirname "$0")/../.."
SB=eval/cluster/train.sbatch
SEEDS=(42 1 7 13 21)          # 5 seeds for the paper headline
IDS=()                        # collect every training job id for the dependency

submit () {  # $1=TAG  $2=EXTRA  $3..=extra sbatch flags
  local tag="$1" extra="$2"; shift 2
  for s in "${SEEDS[@]}"; do
    jid=$(sbatch --parsable "$@" --export=ALL,TAG="$tag",SEED="$s",EXTRA="$extra" "$SB")
    IDS+=("$jid"); echo "submitted $tag s$s -> job $jid"
  done
}

# ---- W3 grid: arch-mode {embed,adversarial} x handcrafted {on,off} ----------
for arch in embed adversarial; do
  for hc in on off; do
    ex=""; [ "$arch" = adversarial ] && ex="--arch-mode adversarial"; [ "$hc" = off ] && ex="$ex --no-handcrafted"
    submit "w3_${arch}_${hc}" "$ex"
  done
done

# ---- W4 edge-ablations ------------------------------------------------------
submit "w4_memedge"    "--mem-order-edges"
submit "w4_taintslice" "--taint-mode slice"
submit "w4_cfgspec"    "--cfg-spec-edges"

# ---- W5 leave-one-ISA-out (one sweep) + W6 pretrain (CMD override) -----------
jid=$(sbatch --parsable --time=08:00:00 --export=ALL,TAG=w5_loio,SEED=0,\
CMD="python3 -u eval/leave_one_isa_out.py --seeds ${SEEDS[*]}" "$SB")
IDS+=("$jid"); echo "submitted w5_loio -> job $jid"

jid=$(sbatch --parsable --time=06:00:00 --partition=ICF-Free --gres=gpu:a40:1 --export=ALL,TAG=w6_pretrain,SEED=0,\
CMD='python3 -u gen/pretrain_encoder.py --corpus v54/data/v55h_train.jsonl --epochs 30 --save "$OUT/pretrained.pt"' "$SB")
IDS+=("$jid"); echo "submitted w6_pretrain -> job $jid (ICF-Free a40)"

# ---- final aggregation: waits for ALL training (afterok) --------------------
DEP=$(IFS=:; echo "${IDS[*]}")
agg=$(sbatch --parsable --dependency=afterok:"$DEP" eval/cluster/aggregate.sbatch)
echo
echo "submitted aggregation -> job $agg (runs after ${#IDS[@]} training jobs succeed)"
echo "watch:   squeue -u \$USER"
echo "results: eval/cluster_out/{W3_grid,W4_ablation,real_v4}.md  (when job $agg finishes)"
echo "cancel:  scancel -u \$USER"

# NOTE: W6 oracle-RL yield is NOT here — it needs the Spectector Docker oracle on
# the i5-8300H box, not the cluster. See docs/NEXT_STEPS_2026-09-09.md P5.
