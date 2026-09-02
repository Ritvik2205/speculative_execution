# Linux/GPU box runbook — RISC-V generalisation retrain

Exact, copy-paste steps to run the multi-scale size-augmentation retrain and
evaluate it. Everything referenced is committed on branch `may2026`. This tests
whether covering the large-graph regime in training (x86/arm size augmentation +
real x86 benign records, **no RISC-V**) fixes two measured failures:

- graph-size domain shift (H3): v54_spec scores **0%** on real+synth RISC-V attacks
- x86-benign gap: v54_spec flags **98.4%** of real x86 benign code as attacks

Diagnosis + evidence: `SPECDISCOVER_RISCV_GENERALISATION.md`,
`eval/benign_xarch_fp_2026-08-31.txt`. This file is the run recipe only.

---

## 0. Prerequisites

```bash
git checkout may2026 && git pull
cd v54
pip install -q -r requirements.txt        # torch, torch-geometric, sklearn, etc.
python3 -c "import torch; print('CUDA:', torch.cuda.is_available())"   # expect True
```

The committed inputs you need already exist:
- `v54/data/v54_train.jsonl` (5,532, cross-split-deduped) + `v54/data/v54_test.jsonl` (locked)
- `v54/data/benign_filler_{x86_64,arm64}.jsonl` (~730K, the augmentation filler)
- held-out RISC-V/x86/arm test sets under `spec/data/*_validation.jsonl`

## 1. Regenerate the multiscale training file (git-ignored, 33M)

One command; needs only the committed filler pools — no clang, no vendor repos:

```bash
cd /path/to/SpecExec
python3 v54/augment_size_multiscale.py --apply --variants 2 --frac 1.0
```

Expect: `total output: ~17,052 records`, `enlarged records duplicating a v54_test
sequence: 0`, gadget-preserved `10970/10970`, and an `x86/arm BENIGN records added`
line. Writes `v54/data/v54_train_multiscale.jsonl`.

## 2. Train (matches the v54_spec recipe + spec builder)

`--use-spec-builder` is REQUIRED — the baseline being compared (`viz_v54_spec`) is
the spec-builder model. Same hyperparameters as `v54/run.sh`.

```bash
cd v54
TQDM_DISABLE=1 python3 -u train_gine_v38.py \
  --train-data data/v54_train_multiscale.jsonl \
  --test-data  data/v54_test.jsonl \
  --output-dir viz_v54_multiscale \
  --viz-dir    viz_v54_multiscale \
  --use-spec-builder \
  --epochs 100 --patience 12 \
  --hidden-dim 128 --num-layers 3 --jk-mode cat \
  --batch-size 32 --lr 1e-3 --weight-decay 5e-4 --dropout 0.5 \
  --lambda-con 0.5 --temperature 0.07 --hard-neg-weight 2.0 --arch-emb-dim 8
```

Checkpoint lands at `v54/viz_v54_multiscale/gine_best.pt`; metrics at
`viz_v54_multiscale/gine_metrics.json`. Run it 3-5 times if time allows — there is NO `--seed` CLI flag, so just rerun
(each run reinitializes; variance comes from training stochasticity). This model
has ~1-2pp run-to-run test variance, so a single run is a data point, not a
verdict; keep the best-val checkpoint and report the spread.

## 3. Gate 1 — must NOT regress x86/arm (the locked test)

```bash
cd v54
python3 -c "import json;m=json.load(open('viz_v54_multiscale/gine_metrics.json'));print('locked test acc:',round(m['test_accuracy']*100,2),'macro-F1:',round(m['classification_report']['macro avg']['f1-score']*100,2))"
```

Baseline to hold: **v54_spec ~96.14% ± 1.59** test acc. A drop of more than ~1-2pp
(beyond seed noise) means the size augmentation hurt the in-distribution task —
report it; do not ship.

## 4. Gate 2 — the point: RISC-V + x86 benign, on held-out sets

`eval_riscv_real.py` now takes `--ckpt`. Run the NEW checkpoint against every
held-out set (all stamped `validation_never_train`):

```bash
cd /path/to/SpecExec
NEW=v54/viz_v54_multiscale/gine_best.pt
for S in benign_x86_64 benign_arm64 riscv_benign riscv_real riscv_synth; do
  echo "=== $S ==="
  python3 spec/eval_riscv_real.py --ckpt $NEW \
    --records-jsonl spec/data/${S}_validation.jsonl 2>/dev/null \
    | grep -E "zero-shot accuracy|prediction distribution"
done
```

Compare against the v54_spec baselines (same command, `--ckpt
v54/viz_v54_spec/gine_best.pt`), which are:

| set | metric | v54_spec baseline |
|---|---|---|
| benign_x86_64 (n=62) | BENIGN recall | **1.6%** (98.4% FP) |
| benign_arm64 (n=62) | BENIGN recall | 72.6% (27.4% FP) |
| riscv_benign (n=180) | BENIGN recall | 63.3% (36.7% FP) |
| riscv_real (n=11) | attack recall | **0/11** |
| riscv_synth (n=358) | attack recall | **0/358** |

## 5. Success criteria (report these exactly)

1. **Primary:** x86 benign recall up from 1.6% (FP 98.4% → sharply lower). This is
   the clearest, highest-n signal.
2. **Secondary:** RISC-V attack recall (real and/or synth) up from 0%, and/or
   RISC-V benign FP down from 36.7%.
3. **Constraint:** locked-test accuracy holds within seed noise of 96.14%.

If (1)/(2) move but (3) drops badly → tune (fewer enlarged variants, `--variants 1`,
or `--frac 0.5`) and rerun. If (3) holds and (1)/(2) do NOT move → H3/size is not
the whole story; next suspect is node/edge feature representation on large graphs,
not window size (note it, hand back).

## 6. Push results back

```bash
git checkout -b linux-box-multiscale
git add v54/viz_v54_multiscale/gine_metrics.json v54/viz_v54_multiscale/gine_best.pt
# plus any eval logs you saved
git commit -m "results: v54 multiscale retrain (RISC-V + x86 benign generalisation)"
git push -u origin linux-box-multiscale
```

(Then the Mac session pulls `origin/linux-box-multiscale` and folds the numbers in.)

## Run B (NEXT) — x86-benign fix WITHOUT size enlargement

Run A (the size-augmented retrain, `--frac 1.0`) fixed x86 benign FP (98.4%->24.2%)
but regressed the locked test 2.3pp (SPECTRE_V2 dilution) and did not help RISC-V
(`SPECDISCOVER_MULTISCALE_RETRAIN_RESULT.md`). Run B isolates the good half: inject
the benign records, skip all enlargement.

```bash
# regenerate with NO size enlargement (benign records only): 5,532 + ~547 = ~6,079
python3 v54/augment_size_multiscale.py --apply --variants 2 --frac 0.0
cd v54
CUDA_VISIBLE_DEVICES="" TQDM_DISABLE=1 python3 -u train_gine_v38.py   --train-data data/v54_train_multiscale.jsonl --test-data data/v54_test.jsonl   --output-dir viz_v54_benignonly --viz-dir viz_v54_benignonly --use-spec-builder   --epochs 100 --patience 12 --hidden-dim 128 --num-layers 3 --jk-mode cat   --batch-size 32 --lr 1e-3 --weight-decay 5e-4 --dropout 0.5   --lambda-con 0.5 --temperature 0.07 --hard-neg-weight 2.0 --arch-emb-dim 8
cd ..
for S in benign_x86_64 benign_arm64 riscv_benign riscv_real riscv_synth; do
  echo "=== $S ==="
  CUDA_VISIBLE_DEVICES="" python3 spec/eval_riscv_real.py     --ckpt v54/viz_v54_benignonly/gine_best.pt     --records-jsonl spec/data/${S}_validation.jsonl 2>/dev/null     | grep -E "zero-shot accuracy|prediction distribution"
done
```

Success for Run B: x86 benign FP stays low (~<=25%) AND locked test recovers to
~95% (near the v54_spec baseline) AND RISC-V benign does not regress past 36.7%.
If so, ship Run B as the new base model; RISC-V handled separately by the windowing
scan at inference (§operating curve in SPECDISCOVER_RISCV_GENERALISATION.md).

## Run C (independent) — B1 oracle × structure cross-tab (generation accuracy)

Needs Docker + the Spectector image (built via oracle/docker/build_spectector.sh).
Answers the real generation-accuracy question: of syntactically valid gadgets, how
many actually leak, and does having the class's defining structure predict leaking?

```bash
# structure half already runs on any box and is committed
# (eval/b1_oracle_structure_records.jsonl); this adds the oracle verdict:
python3 gen/b1_oracle_structure.py --n 40 --validate
```

Emits the VERDICT x STRUCTURE cross-tab. The key cell is "safe/unrunnable WITH
has-primitive" = right structure but no leak (dataflow / speculation-window / probe
missing) -- that is what decides whether Phase-C generator work is worthwhile
(SPECDISCOVER_GENERATION_PLAN.md Phase B gate). Spectector is x86-first; arm/riscv
leak coverage is thinner (InvisiSpec/Revizor).

## Notes / gotchas

- Do NOT add any `spec/data/*_validation.jsonl` to training — they are held-out
  test sets. The augmentation uses only x86/arm; verified 0 RISC-V leak.
- The 33M `v54_train_multiscale.jsonl` is git-ignored — regenerate it (step 1), do
  not expect it in the repo.
- If you want to rebuild the filler from scratch (needs clang + vendor repos):
  `bash spec/fetch_riscv_pocs.sh && python3 v54/build_benign_filler.py --apply`.
  Not required — the filler jsonls are committed.
- Full context for a fresh agent: `SPECDISCOVER_RISCV_GENERALISATION.md`,
  `v54/TRAIN_MULTISCALE.md`, standup `SPECDISCOVER_UPDATE_2026-09-02.md` §6-9.
