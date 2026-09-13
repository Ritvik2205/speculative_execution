# Training v54 with multi-scale size augmentation (run on the GPU box)

Tests the H3 fix from `SPECDISCOVER_RISCV_GENERALISATION.md`: whether covering the
large-graph regime in training (via x86/arm size augmentation, **no RISC-V**)
recovers RISC-V generalisation.

## Data (already generated, committed)

- `v54/data/v54_train_multiscale.jsonl` — ~17,052 records = 5,532 originals +
  ~10,970 enlarged (size aug) + ~547 real x86/arm BENIGN records (closes the
  x86-benign gap: v54_spec flags 98.4% of real x86 benign as attacks — see
  `eval/benign_xarch_fp_2026-08-31.txt`). Size median 28→72 instr, p90 33→156 (RISC-V real is 159/275).
  Active graph nodes median 28→108. Gadgets preserved verbatim; labels preserved;
  no RISC-V; no new train/test overlap.
- `v54/data/v54_test.jsonl` — the LOCKED test split, unchanged.

The 33M train file is git-ignored (regenerable). The benign filler pools
(`v54/data/benign_filler_{x86_64,arm64}.jsonl`, ~730K) ARE committed, so on the
GPU box you regenerate the train file with ONE command — no clang, no vendor repos:
```bash
python3 v54/augment_size_multiscale.py --apply --variants 2 --frac 1.0
```
(Only if you want to rebuild the filler from scratch do you need clang +
`spec/fetch_riscv_pocs.sh` then `v54/build_benign_filler.py --apply`.)

## Train

Baseline recipe is `v54/run.sh` (patience=15, epochs=120, hidden=128, layers=3,
jk=cat). Swap the data for the pre-split multiscale file:

```bash
cd v54
python3 train_gine_v38.py \
  --train-data data/v54_train_multiscale.jsonl \
  --test-data  data/v54_test.jsonl \
  --use-spec-builder \
  --epochs 120 --patience 15 --hidden-dim 128 --num-layers 3 --jk-mode cat \
  --out-dir viz_v54_multiscale
```

## Evaluate the fix (the point of it)

Compare the new checkpoint against `viz_v54_spec/gine_best.pt` on:
1. the LOCKED test (must not regress x86/arm): report test acc + macro-F1.
2. the held-out RISC-V sets — the fix's target:
```bash
CKPT=viz_v54_multiscale/gine_best.pt   # point eval at the new checkpoint
python3 ../spec/eval_riscv_real.py --records-jsonl ../spec/data/riscv_real_validation.jsonl
python3 ../spec/eval_riscv_real.py --records-jsonl ../spec/data/riscv_synth_validation.jsonl
python3 ../spec/eval_riscv_real.py --records-jsonl ../spec/data/riscv_benign_validation.jsonl
# x86/arm benign FP — the size aug also injects x86 benign records, so these must improve:
python3 ../spec/eval_riscv_real.py --records-jsonl ../spec/data/benign_x86_64_validation.jsonl
python3 ../spec/eval_riscv_real.py --records-jsonl ../spec/data/benign_arm64_validation.jsonl
```
Success = (a) x86 benign FP down from 98.4% (the biggest, clearest target);
(b) RISC-V attack recall up from 0% and/or RISC-V benign FP down from 36.7%;
ALL without the locked-test accuracy regressing. (eval_riscv_real.py currently hardcodes
CKPT near line 57 — point it at the new checkpoint.)

Expectation from the no-retrain windowing proxy: whole-function RISC-V recall
should move off 0% if H3 is the cause; the windowing experiment already showed
0%→27-64% by matching sizes, so training across sizes should recover a comparable
whole-function number.
