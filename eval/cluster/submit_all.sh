#!/bin/bash
# Submit the W3 arch-grid + W4 edge-ablations to Slurm (one GPU job each).
# Run this ON the cluster head node (icf / icf2), from the repo root, after
# creating the 'specexec' conda env (see README.md) and setting a real PARTITION
# in train.sbatch. Each sbatch returns immediately; watch with `squeue -u $USER`.
set -euo pipefail
cd "$(dirname "$0")/../.."
SB=eval/cluster/train.sbatch

# W3: arch-mode {embed,adversarial} x handcrafted {on,off} x seeds
for arch in embed adversarial; do
  for hc in on off; do
    extra=""
    [ "$arch" = adversarial ] && extra="--arch-mode adversarial"
    [ "$hc" = off ] && extra="$extra --no-handcrafted"
    for s in 42 1 7; do
      sbatch --export=ALL,TAG="w3_${arch}_${hc}",SEED="$s",EXTRA="$extra" "$SB"
    done
  done
done

# W4 edge-ablations: each edge ON, seeds {42,1,7}. OFF baseline = W3 embed_on (same recipe).
for spec in "memedge:--mem-order-edges" "taintslice:--taint-mode slice" "cfgspec:--cfg-spec-edges"; do
  tag="${spec%%:*}"; flag="${spec#*:}"
  for s in 42 1 7; do
    sbatch --export=ALL,TAG="w4_${tag}",SEED="$s",EXTRA="$flag" "$SB"
  done
done

# W5 leave-one-ISA-out: one self-contained sweep (trains all train->held-out ISA
# splits internally with bootstrap CIs). Longer wall time; result is in the .out log.
# NOTE: this is the BASELINE LOIO on the existing corpus. It does NOT yet use the
# idiomatic-RISC-V corpus (eval/data/idiomatic_riscv.jsonl) or the windowing
# wrapper (eval/isa_windowing.py) — wiring those in is the outstanding Task 5.4.
sbatch --time=08:00:00 --export=ALL,TAG="w5_loio",SEED=0,\
CMD="python3 -u eval/leave_one_isa_out.py --seeds 42 1 7 13 21" "$SB"

# W6 pretrain: next-token pretrain of the generator. Corpus here is v55h_train
# (a runnable proof); for real cross-distribution gain, swap --corpus for a large
# external asm corpus (ExeBench/AnghaBench) staged into the repo first.
sbatch --time=06:00:00 --export=ALL,TAG="w6_pretrain",SEED=0,\
CMD='python3 -u gen/pretrain_encoder.py --corpus v54/data/v55h_train.jsonl --epochs 30 --save "$OUT/pretrained.pt"' "$SB"

# W6 oracle-RL yield is DELIBERATELY NOT submitted here: rejection_sample_finetune
# needs the Spectector Docker oracle, which the teaching cluster does not provide.
# Run that on your Docker/WSL box (the specdiscover-spectector:pinned image), not
# on Slurm. gen/rl_from_oracle.py has no CLI yet — it needs a small runner wiring
# the real generator + realizer + SpectectorValidator over >=3 rounds first.

echo "submitted. Watch: squeue -u \$USER   Cancel all: scancel -u \$USER"
