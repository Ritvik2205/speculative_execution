# RISC-V Corpus Training Integration -- Results

Seeds evaluated: [42, 1, 7, 13, 21]

## Regression check (x86/ARM, eval/data/group_holdout_test.jsonl)

- Baseline (pre-existing group-holdout run): 94.83% +/- 1.50%
- After RISC-V augmentation: 95.60% +/- 1.67%

## RISC-V measurement (eval/data/riscv_eval_holdout.jsonl)

- Zero-shot baseline (prior session, no RISC-V training exposure): 29-34%
- After RISC-V augmentation: 64.24% +/- 6.18%

## Per-class RISC-V holdout breakdown

| class | precision | recall | f1 | n (real examples) | confidence |
|---|---|---|---|---|---|
| BENIGN | N/A | N/A | N/A | 0 | UNMEASURABLE (0 real holdout examples) |
| BRANCH_HISTORY_INJECTION | 0.91 | 1.00 | 0.95 | 10 | LOW (few real examples) |
| INCEPTION | 0.91 | 1.00 | 0.95 | 80 | ok |
| L1TF | N/A | N/A | N/A | 0 | UNMEASURABLE (0 real holdout examples) |
| MDS | 0.88 | 0.18 | 0.30 | 120 | ok |
| RETBLEED | 0.94 | 1.00 | 0.97 | 100 | ok |
| SPECTRE_RSB | 0.00 | 0.00 | 0.00 | 10 | LOW (few real examples) |
| SPECTRE_V1 | N/A | N/A | N/A | 0 | UNMEASURABLE (0 real holdout examples) |
| SPECTRE_V2 | 0.00 | 0.00 | 0.00 | 10 | LOW (few real examples) |
| SPECTRE_V4 | N/A | N/A | N/A | 0 | UNMEASURABLE (0 real holdout examples) |
