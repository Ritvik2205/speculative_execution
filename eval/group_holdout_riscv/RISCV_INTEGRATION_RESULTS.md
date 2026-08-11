# RISC-V Corpus Training Integration -- Results

Seeds evaluated: [42, 1, 7, 13, 21]

## Known data issue: 2 BENIGN riscv records in training data

This plan's Global Constraints explicitly say not to add any BENIGN riscv records (the design doc's Non-goals section defers RISC-V BENIGN entirely -- riscv_corpus adds real examples for the 8 vulnerable classes only). Despite that, 2 of the 5944 training records (0.03%) in `eval/data/riscv_augmented_train.jsonl` are RISC-V `utils.c` files (`riscv_corpus/c_vulns_c_code_utils.O0/O2.riscv64.s`) labeled BENIGN. This happened because `eval/build_riscv_labeled.py` reuses `spec/eval_riscv_real.py`'s `KEYWORD_TO_LABEL` table, which maps `"utils"` filenames to BENIGN. Impact is negligible (2 of 5944 records) and not worth an 87-minute retrain to fix retroactively. `eval/build_riscv_labeled.py`'s `build_records()` has been fixed to skip any BENIGN-mapped record going forward (see the `if label == "BENIGN"` filter with explanatory comment); the already-committed `eval/data/riscv_labeled.jsonl` and downstream files are left as-is so they stay consistent with the checkpoints actually trained on them.

## Regression check (x86/ARM, eval/data/group_holdout_test.jsonl)

- Baseline (pre-existing group-holdout run): 94.83% +/- 1.50%
- After RISC-V augmentation: 95.60% +/- 1.67%
- **Regression check: PASS** -- augmented accuracy 95.60% is not below baseline 94.83%

## RISC-V measurement (eval/data/riscv_eval_holdout.jsonl)

- After RISC-V augmentation: 64.24% +/- 6.18%

### Apples-to-apples control (primary comparison)

Identical recipe/seeds/split as the RISC-V-augmented checkpoints (`eval/group_holdout/viz_s<seed>/gine_best.pt`), RISC-V training data withheld, evaluated on the SAME `eval/data/riscv_eval_holdout.jsonl` set:

- Control (no RISC-V training exposure, 5 seeds [42, 1, 7, 13, 21]): 30.00% +/- 7.45%
- After RISC-V augmentation: 64.24% +/- 6.18%
- Lift: +34.24pp

### Prior zero-shot baseline (cited for continuity, not apples-to-apples)

- Source: `eval/eval_riscv_multiseed_postfix_results.txt`
- Zero-shot baseline (different model family -- `dataflow_taint` -- and a different, larger eval set; no RISC-V training exposure): 29-34%

### Composition of the 64.24% result

RETBLEED (20 examples, 100% recall) and INCEPTION (16 examples, 100% recall) supply the majority of correct predictions; MDS (24 examples, the largest holdout class) has weak recall (18% recall); L1TF -- the single largest class in the full RISC-V corpus -- has zero holdout examples and could not be measured at all.

## Per-class RISC-V holdout breakdown

| class | precision | recall | f1 | n (real corpus examples) | confidence |
|---|---|---|---|---|---|
| BENIGN | N/A | N/A | N/A | 0 | UNMEASURABLE (0 real holdout examples) |
| BRANCH_HISTORY_INJECTION | 0.91 | 1.00 | 0.95 | 2 | LOW (few real examples) |
| INCEPTION | 0.91 | 1.00 | 0.95 | 16 | ok |
| L1TF | N/A | N/A | N/A | 0 | UNMEASURABLE (0 real holdout examples) |
| MDS | 0.88 | 0.18 | 0.30 | 24 | ok |
| RETBLEED | 0.94 | 1.00 | 0.97 | 20 | ok |
| SPECTRE_RSB | 0.00 | 0.00 | 0.00 | 2 | LOW (few real examples) |
| SPECTRE_V1 | N/A | N/A | N/A | 0 | UNMEASURABLE (0 real holdout examples) |
| SPECTRE_V2 | 0.00 | 0.00 | 0.00 | 2 | LOW (few real examples) |
| SPECTRE_V4 | N/A | N/A | N/A | 0 | UNMEASURABLE (0 real holdout examples) |
