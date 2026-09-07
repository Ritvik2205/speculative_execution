# W2 result — trigger-masked augmentation removes the opcode shortcut

Model: v54 GINE (hand features, spec-builder) retrained on `v54/data/v55h_train.jsonl` (v54_train + 1083 trigger-masked attack copies). 5 seeds `{42,1,7,13,21}`, frozen recipe. Test: locked `v54/data/v54_test.jsonl`. Checkpoints: `eval/w2/viz_s*/gine_best.pt`. Raw: `eval/w2/robustness_w2.txt`. Baseline: `eval/robustness_baseline.md`.

## Headline (5-seed mean)

| metric | W1 baseline | W2 augmented | change |
|---|---|---|---|
| locked macro-F1 | 0.777 | **0.817** | +4.0pp |
| trigger-masked macro-F1 | 0.503 | **0.805** | +30.2pp |
| **shortcut gap (locked − masked)** | **27.4pp** | **1.1pp** | **−26.3pp** |
| trigger-masked ECE | 0.102 | 0.027 | −0.075 |

## Per-class recall under trigger-masking (the collapsing classes)

| class | baseline masked | W2 masked |
|---|---|---|
| L1TF | 0.016 | **0.665** |
| MDS | 0.080 | **0.898** |
| SPECTRE_V4 | 0.497 | **0.994** |

## Reading

- **The shortcut is essentially gone.** Baseline macro-F1 fell 27.4pp when class-defining opcodes were masked; augmented, it falls 1.1pp. L1TF recall under masking went 1.6% → 66.5%, MDS 8.0% → 89.8%, V4 49.7% → 99.4%. The model now classifies these from structure that survives without the opcode.
- **Locked accuracy did not pay for it — it improved** (+4.0pp macro-F1). This is not the "honest trade" the plan anticipated (locked down, gap closed); it is a strict improvement on both axes.
- **Calibration improved too:** trigger-masked ECE 0.102 → 0.027.

## Acceptance gate (plan Task 2.2 Step 3): PASS
The trigger-masked gap shrank far below the baseline; L1TF/MDS/V4 recovered from near-zero. D1/D2 addressed at the data level. W3 (arch-invariance) and W4 (semantic edges) remain for the arm64 macro-F1 gap (arm64 0.63 vs x86 0.90) and V4's structural signature.
