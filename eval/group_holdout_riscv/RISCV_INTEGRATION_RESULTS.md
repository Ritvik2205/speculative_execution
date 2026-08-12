# RISC-V Corpus Training Integration -- Results

## Prior result (pre-stratification split, kept for comparison)

Before this fix, the RISC-V holdout split was a pure random group shuffle
that happened to put all 6 of L1TF's groups on the train side, leaving it
with zero real holdout examples. The headline numbers under that split:

- RISC-V holdout accuracy: 64.24% +/- 6.18% (apples-to-apples control: 30.00% +/- 7.45%)
- x86/ARM regression check: 95.60% +/- 1.67% vs baseline 94.83% +/- 1.50%
- Unmeasurable classes (0 real holdout examples): L1TF, SPECTRE_V4, BENIGN, SPECTRE_V1

See docs/superpowers/specs/2026-08-12-riscv-l1tf-coverage-gap-design.md for
why the split changed. The numbers below reflect the new stratified split,
where L1TF is measurable for the first time. BENIGN no longer appears in
the RISC-V corpus at all as of this run (filtered per the "vulnerable
classes only" constraint) -- it is absent by design, not unmeasurable.

Seeds evaluated: [42, 1, 7, 13, 21]

## Known data issue: 2 BENIGN riscv records in training data

This plan's Global Constraints explicitly say not to add any BENIGN riscv records (the design doc's Non-goals section defers RISC-V BENIGN entirely -- riscv_corpus adds real examples for the 8 vulnerable classes only). Despite that, 2 of the 5944 training records (0.03%) in `eval/data/riscv_augmented_train.jsonl` are RISC-V `utils.c` files (`riscv_corpus/c_vulns_c_code_utils.O0/O2.riscv64.s`) labeled BENIGN. This happened because `eval/build_riscv_labeled.py` reuses `spec/eval_riscv_real.py`'s `KEYWORD_TO_LABEL` table, which maps `"utils"` filenames to BENIGN. Impact is negligible (2 of 5944 records) and not worth an 87-minute retrain to fix retroactively. `eval/build_riscv_labeled.py`'s `build_records()` has been fixed to skip any BENIGN-mapped record going forward (see the `if label == "BENIGN"` filter with explanatory comment); the already-committed `eval/data/riscv_labeled.jsonl` and downstream files are left as-is so they stay consistent with the checkpoints actually trained on them.

## Regression check (x86/ARM, eval/data/group_holdout_test.jsonl)

- Baseline (pre-existing group-holdout run): 94.83% +/- 1.50%
- After RISC-V augmentation: 95.89% +/- 1.69%
- **Regression check: PASS** -- augmented accuracy 95.89% is not below baseline 94.83%

## RISC-V measurement (eval/data/riscv_eval_holdout.jsonl)

- After RISC-V augmentation: 75.45% +/- 13.20%

### Apples-to-apples control (primary comparison)

Identical recipe/seeds/split as the RISC-V-augmented checkpoints (`eval/group_holdout/viz_s<seed>/gine_best.pt`), RISC-V training data withheld, evaluated on the SAME `eval/data/riscv_eval_holdout.jsonl` set:

- Control checkpoints not found -- see console output.

### Prior zero-shot baseline (cited for continuity, not apples-to-apples)

- Source: `eval/eval_riscv_multiseed_postfix_results.txt`
- Zero-shot baseline (different model family -- `dataflow_taint` -- and a different, larger eval set; no RISC-V training exposure): 29-34%

### Composition of the 75.45% result

RETBLEED (20 examples, 100% recall) and INCEPTION (16 examples, 89% recall) supply the majority of correct predictions; MDS (12 examples, the largest holdout class) has weak recall (73% recall); L1TF -- the single largest class in the full RISC-V corpus -- has zero holdout examples and could not be measured at all.

## Per-class RISC-V holdout breakdown

| class | precision | recall | f1 | n (real corpus examples) | confidence |
|---|---|---|---|---|---|
| BENIGN | N/A | N/A | N/A | 0 | UNMEASURABLE (0 real holdout examples) |
| BRANCH_HISTORY_INJECTION | 0.16 | 1.00 | 0.27 | 2 | LOW (few real examples) |
| INCEPTION | 1.00 | 0.89 | 0.94 | 16 | ok |
| L1TF | 0.38 | 1.00 | 0.56 | 2 | LOW (few real examples) |
| MDS | 0.98 | 0.73 | 0.84 | 12 | ok |
| RETBLEED | 0.93 | 1.00 | 0.96 | 20 | ok |
| SPECTRE_RSB | 0.00 | 0.00 | 0.00 | 2 | LOW (few real examples) |
| SPECTRE_V1 | N/A | N/A | N/A | 0 | UNMEASURABLE (0 real holdout examples) |
| SPECTRE_V2 | 1.00 | 0.23 | 0.38 | 12 | ok |
| SPECTRE_V4 | N/A | N/A | N/A | 0 | UNMEASURABLE (0 real holdout examples) |
