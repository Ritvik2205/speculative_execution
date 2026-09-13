# Multi-scale size-augmentation retrain — result

*2026-09-02. Executes the retrain recipe from `LINUX_BOX_RUNBOOK.md` /
`v54/TRAIN_MULTISCALE.md`, testing the "retrain with size augmentation" fix
proposed in `SPECDISCOVER_RISCV_GENERALISATION.md` §"What this says to do
next". One run (CPU; see Infra note).*

## The question

`SPECDISCOVER_RISCV_GENERALISATION.md` diagnosed the RISC-V 0%-recall failure
as a graph-size domain shift (H3): the classifier trains on ~24–28-instruction
windows and RISC-V functions run 2–6x larger. A no-retrain windowing proxy
recovered 27–64% real-attack recall by matching window size at inference. The
open question: does training on size-augmented x86/arm data (no RISC-V) recover
the same generalisation directly, without needing the windowing scan at
deployment time?

## Result: the x86-benign gap closes; RISC-V does not move

| set | metric | v54_spec baseline | multiscale retrain | verdict |
|---|---|---|---|---|
| benign_x86_64 (n=62) | BENIGN recall (FP) | 1.6% (98.4% FP) | **75.8% (24.2% FP)** | fixed |
| benign_arm64 (n=62) | BENIGN recall (FP) | 72.6% (27.4% FP) | **96.8% (3.2% FP)** | improved |
| riscv_benign (n=180) | BENIGN recall (FP) | 63.3% (36.7% FP) | **44.4% (55.6% FP)** | worse |
| riscv_real (n=11) | attack recall | 0/11 | **0/11** | unchanged |
| riscv_synth (n=358) | attack recall | 0/358 | **0/358** | unchanged |
| locked test (x86/arm) | accuracy / macro-F1 | 96.14%±1.59 (this-session single-run baseline: 95.27% / 80.87) | **92.93% / 78.56** | regressed 2.3–3.2pp |

Full per-record predictions: `eval/riscv_multiscale_retrain_2026-09-02.txt`.
Checkpoint: `v54/viz_v54_multiscale/gine_best.pt` (best epoch 14/26,
val_acc=0.9389, early-stopped patience=12).

Reading it against the runbook's own success criteria:
- **Primary criterion (x86 benign FP) — met decisively.** 98.4% FP → 24.2% FP,
  the clearest, highest-n signal in the whole exercise. The injected real
  x86/arm BENIGN records (`v54/build_benign_filler.py`, `augment_size_multiscale.py`)
  did their job.
- **Secondary criterion (RISC-V) — not met.** Real and synthetic RISC-V attack
  recall are unchanged at 0%. RISC-V benign FP got *worse* (36.7% → 55.6%),
  not better.
- **Constraint (locked-test accuracy) — failed.** Dropped 2.3–3.2pp, outside
  the ~1-2pp seed-noise budget the runbook set as the "do not ship" line.

## What this means for the H3 hypothesis

This is a genuine negative result, and an informative one: **training on
size-augmented x86/arm graphs does not transfer to RISC-V**, even though
**matching window size to training distribution at inference time (the
no-retrain windowing proxy) recovered 27–64% real-attack recall** on the exact
same held-out sets. If graph *size* alone were the binding constraint, seeing
the large-graph regime in training (regardless of ISA) should have moved the
RISC-V numbers at least partially — it did not move them at all, in either
direction, on attacks. Meanwhile RISC-V benign FP got worse, suggesting the
enlarged-but-still-x86/arm training distribution pulled the decision boundary
in a direction that doesn't fit RISC-V's benign code shape either.

The likely resolution: the windowing proxy's benefit wasn't really "the model
has seen this size before" — it was "the window isolates the gadget instead of
diluting it inside a much larger function." Multi-scale training reproduces
the *size* but not that *isolation* property, so it doesn't reproduce the
benefit. Per the runbook's own decision tree: **H3/size-as-trained-distribution
is not the whole story; the next suspect is node/edge feature representation
on large graphs (or the windowing-at-deployment approach specifically), not
training-time window size.**

## Infra note (why CPU, not GPU)

The GPU box's card (GTX 1050, compute capability 6.1 / Pascal) has no CUDA
kernels in the available torch build (`torch==2.13.0+cu130` ships
sm_75/80/86/90/100/120 only). A reinstall targeting CUDA 12.6
(`torch==2.13.0+cu126`, which does target older archs) downloaded ~5GB of
CUDA/cuDNN/NCCL wheels over ~35 minutes and then failed with `OSError: [Errno
122] Disk quota exceeded` — a per-user quota, not actual disk space (`df`
showed 17-20GB free throughout). Training instead ran on CPU
(`CUDA_VISIBLE_DEVICES=""`, 8-core i5-8300H): ~167s/epoch, 26 epochs + PDG
precompute, ~2 hours total. `spec/eval_riscv_real.py` needed the same
`CUDA_VISIBLE_DEVICES=""` override, since `select_device()` otherwise picks
CUDA and hits the same kernel-mismatch error at inference.

Also fixed in this pass: `spec/eval_riscv_real.py` checked the hardcoded
default checkpoint's existence *before* parsing `--ckpt`, so passing `--ckpt`
never actually worked — every invocation exited with "missing checkpoint
.../viz_v54_spec/gine_best.pt" regardless of what `--ckpt` pointed to. Fixed
to check the resolved checkpoint path (default-or-`--ckpt`) once, after
argparse.

## Honest limits

- Single run each side (this retrain; this session's baseline re-derivation).
  The runbook flags ~1-2pp run-to-run variance for this model; a 2.3-3.2pp
  drop is likely real but 3-5 seeded reruns would be needed to be certain, and
  weren't done here (CPU-only training makes that a ~10 hour investment).
- The multiscale training file's exact composition (`--variants 2 --frac 1.0`)
  was used as documented; untried: `--variants 1` or `--frac 0.5` (the
  runbook's own suggested tuning knob if locked-test accuracy regresses).
- riscv_benign FP got measurably worse, not just flat — this is the one
  clearly negative side effect, worth flagging above the "unchanged" attack
  numbers.

## Reproduce

```bash
python3 v54/augment_size_multiscale.py --apply --variants 2 --frac 1.0
cd v54
CUDA_VISIBLE_DEVICES="" TQDM_DISABLE=1 python3 -u train_gine_v38.py \
  --train-data data/v54_train_multiscale.jsonl --test-data data/v54_test.jsonl \
  --output-dir viz_v54_multiscale --viz-dir viz_v54_multiscale --use-spec-builder \
  --epochs 100 --patience 12 --hidden-dim 128 --num-layers 3 --jk-mode cat \
  --batch-size 32 --lr 1e-3 --weight-decay 5e-4 --dropout 0.5 \
  --lambda-con 0.5 --temperature 0.07 --hard-neg-weight 2.0 --arch-emb-dim 8
cd ..
for S in benign_x86_64 benign_arm64 riscv_benign riscv_real riscv_synth; do
  CUDA_VISIBLE_DEVICES="" python3 spec/eval_riscv_real.py \
    --ckpt v54/viz_v54_multiscale/gine_best.pt \
    --records-jsonl spec/data/${S}_validation.jsonl
done
```
