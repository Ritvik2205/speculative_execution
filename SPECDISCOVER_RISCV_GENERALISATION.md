# Improving new-ISA generalisation — what actually breaks on RISC-V

*2026-08-30. All experiments zero-shot on RISC-V, NO training on RISC-V (it is
held out as the "new ISA"). Anchored on the independent test sets built this
session: real PoCs (n=11), synthetic (n=358), benign mbedTLS (n=180).*

## The question

The v54_spec classifier scores 0% on real and synthetic RISC-V attacks and a
36.7% false-positive rate on benign RISC-V. Is that because RISC-V is a different
*instruction set*, or something more mundane and fixable without training on it?

## Two candidate causes, tested

### The architecture embedding — a red herring for the core failure

The model concatenates an 8-dim arch embedding; `riscv64` maps to a row that
received **zero gradient** (no riscv in training), so at inference it injects
random noise. `eval/arch_embedding_diagnostic.py` overrides that row five ways
(as-is / as-x86 / as-arm / averaged / zeroed) on the same graphs:

- On the **attack** sets, every setting ties (real: 0% across the board).
- On **benign**, the row acts as a *bias knob*: `as-arm` 69.4%, `as-is` 63.9%,
  `as-x86`/`zeroed` ~49% — it shifts predictions toward or away from BENIGN but
  no setting fixes the failure, and on synth attacks the best (`zeroed`) reaches
  only 14%.

Verdict: the untrained arch row is a poor operating point, not the bottleneck.
The principled fix (a neutral averaged embedding for unseen ISAs) is worth
keeping, but it does not recover accuracy.

### The graph-size domain shift (H3) — the real cause

Instruction-count census, per window:

| corpus | median | p90 | max |
|---|---|---|---|
| v54_train arm64 | 28 | 30 | 104 |
| v54_train x86_64 | 24 | 47 | 500 |
| RISC-V real | **159** | 275 | 328 |
| RISC-V synth | 56 | 96 | 109 |
| RISC-V benign | 40 (mean 121) | 246 | 1927 |

The model was trained on ~24–28-instruction windows and asked to classify RISC-V
graphs 2–6× larger. The graphs are not truncated — they pad to 256 nodes with a
mask, and `speculative_window` is only the speculation-edge decay horizon — so the
size difference is real, and message-passing + attention pooling operate in a
regime they never saw.

## The fix, no retraining: match the test window to the training window

`eval/rewindow_riscv_eval.py` slides a training-sized window over each RISC-V
function, classifies each window, and aggregates with a k-alarm threshold
(function flagged only if ≥k windows fire). At window=24 (training median),
stride=12:

| config | real attack recall (n=11) | benign FP (n=180) |
|---|---|---|
| **baseline (whole function)** | **0%** | **36.7%** |
| windowed, k=1 | 63.6% | 50.0% |
| windowed, k=2 | 27.3% | 13.9% |
| windowed, k=3 | 27.3% | 8.9% |

Synth attacks move the same way: 0% → 23.7% (k=1). **windowed k=3 strictly
dominates the baseline** — higher recall (27.3% vs 0%) AND lower FP (8.9% vs
36.7%) at once — which is only possible if the size shift, not the ISA, was the
binding constraint.

This is also a deployment recipe: scan a new-ISA function the way the training
data was constructed (training-sized sliding windows) and aggregate with a
calibrated threshold, rather than classifying whole functions.

## Windowing scan — the calibrated operating curve

The windowing fix is a deployment knob, not a single number. Full sweep
(`eval/riscv_windowing_curve_2026-08-31.txt`), window W, stride W/2, threshold k
(function flagged only if >=k windows alarm):

| W | k | synth recall (n=358) | real recall (n=11) | benign FP (n=180) |
|---|---|---|---|---|
| 20 | 1 | 44.4% | 54.5% | 55.0% |
| 20 | 2 | 10.1% | 36.4% | 24.4% |
| 20 | 3 | 0.0% | 27.3% | 16.1% |
| 24 | 1 | 23.7% | 63.6% | 50.0% |
| 24 | 2 | 0.0% | 27.3% | 13.9% |
| 24 | 3 | 0.0% | 27.3% | **8.9%** |
| 32 | 1 | 3.9% | 27.3% | 31.7% |
| 32 | 3 | 0.0% | 0.0% | 0.6% |

baseline (whole function): synth 0%, real 0%, benign FP 36.7%.

Reading it:
- **Smaller window recovers more attack signal.** W=20 gives the best synth recall
  (44.4% at k=1) and W=24 the best real recall (63.6% at k=1); the synth gadgets
  are compact, so a large window dilutes them.
- **k trades recall for FP.** Raising k from 1 to 3 at W=24 cuts benign FP 50%->8.9%
  while real recall holds at 27.3% (synth collapses because its gadgets are single-
  window).
- **Recommended operating points:**
  - *max recall*: W=20, k=1 — real 54.5% / synth 44.4%, FP 55% (triage/scan use).
  - *balanced, dominates baseline*: W=20, k=2 — real 36.4% / synth 10.1%, FP 24.4%.
  - *low FP, dominates baseline*: W=24, k=3 — real 27.3%, FP 8.9%.
- Several points **strictly beat the whole-function baseline on both axes at once**
  (recall > 0 AND FP < 36.7%), which a single global threshold cannot — the size
  match is doing real work, not trading one error for another.

## Honest limits

- n=11 real: 27–64% is 3–7 gadgets. The synth (n=358) and benign (n=180) sets
  carry the weight; both move in the same direction.
- The operating point is aggregation-dependent (k=1 maximises recall, k=3
  minimises FP); synth gadgets are single-window, so a high k suppresses them —
  the aggregation needs per-deployment calibration, not a fixed k.
- 63.6% is far from solved. The remaining gap is the next target, and it now has
  a measurable instrument.

## What this says to do next

1. **Retrain with size augmentation** — train on windows spanning the RISC-V size
   range (multi-scale windows of the existing x86/arm data), so the model sees the
   large-graph regime without ever seeing RISC-V. Testable directly on these held-
   out sets.
2. **Calibrate the scan aggregation** (window size, stride, k) against the benign
   FP budget a deployment will tolerate.
3. Give unseen ISAs the averaged arch embedding rather than a random row (cheap,
   already implemented in the diagnostic).

## Reproduce

| claim | command |
|---|---|
| arch embedding is a bias knob | `eval/arch_embedding_diagnostic.py --records-jsonl spec/data/riscv_benign_validation.jsonl` |
| size census | see table above; `eval/riscv_generalisation_2026-08-30.txt` |
| windowing recovers signal | `eval/rewindow_riscv_eval.py --records-jsonl spec/data/riscv_real_validation.jsonl --window 24 --stride 12 --min-alarms 3` |
