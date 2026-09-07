# W1 honest baseline — shipped v54 GINE (hand features, spec-builder)

Scoreboard for W2–W6. Checkpoints: `eval/full_tost/viz_hand_s{42,1,7,13,21}/gine_best.pt`. Test: locked `v54/data/v54_test.jsonl` (1670). Tool: `eval/robustness_suite.py`. Raw: `eval/robustness_baseline.txt`.

## Headline (mean over 5 seeds)

| condition | macro-F1 | ECE |
|---|---|---|
| locked | 0.777 | 0.042 |
| **trigger-masked** | **0.503** | 0.102 |
| arch=x86_64 | 0.808 | 0.110 |
| arch=arm64 | 0.654 | 0.006 |

## The two numbers W2/W3 must move

1. **Shortcut size = macro-F1 drop under trigger-masking: −27.4pp** (0.777 → 0.503). Masking the class-defining opcodes (verw/clflush/rdtsc/lfence/...) — structure preserved — collapses the detector. Per-class, L1TF and MDS recall fall toward 0 under masking (see raw file). This is D1/D2 quantified.
2. **Calibration degrades under masking: ECE 0.042 → 0.102** (~2.4×). The model is confidently wrong once its opcode crutch is removed.

## D4 note (per-ISA benign)
`benign_fp` for arch=x86_64 is `nan` across all seeds: the locked test set contains **no x86_64 BENIGN records** — benign is arm64-only, exactly the corpus gap the audit flagged (D4). Benign-FP cannot be measured on x86 until x86 benign is added to the evaluation set.

## Caveat on the 0.777 vs 0.96 gap
The 96% figure quoted elsewhere is **accuracy**; macro-F1 over 10 label classes (incl. SPECTRE_RSB recall≈0, BHI/L1TF low) is 0.78. Per Global Constraint, macro-F1 is the headline — accuracy masks minority collapse (A4).
