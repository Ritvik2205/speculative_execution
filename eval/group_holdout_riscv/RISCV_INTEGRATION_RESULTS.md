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

**Note:** the numbers above (64.24%/30.00%) and the numbers below are
measured on DIFFERENT holdout sets (the split changed) and different
training-data compositions -- they are not directly comparable to each
other. The apples-to-apples comparison for the CURRENT run is the control
section below, not this prior-result section.

Seeds evaluated: [42, 1, 7, 13, 21]

## Regression check (x86/ARM, eval/data/group_holdout_test.jsonl)

- Baseline (pre-existing group-holdout run): 94.83% +/- 1.50%
- After RISC-V augmentation: 95.89% +/- 1.69%
- **Regression check: PASS** -- augmented accuracy 95.89% is not below baseline 94.83%

## RISC-V measurement (eval/data/riscv_eval_holdout.jsonl)

- After RISC-V augmentation: 75.45% +/- 13.20%
- Note: this is not directly comparable to the pre-stratification prior result (64.24%, see the Prior result section above) -- the two numbers are measured on different holdout sets. The apples-to-apples comparison for this run is the control section immediately below, not the prior result.

### Apples-to-apples control (primary comparison)

Identical recipe/seeds/split as the RISC-V-augmented checkpoints (`eval/group_holdout/viz_s<seed>/gine_best.pt`), RISC-V training data withheld, evaluated on the SAME `eval/data/riscv_eval_holdout.jsonl` set:

- Control (no RISC-V training exposure, 5 seeds [42, 1, 7, 13, 21]): 24.85% +/- 7.36%
- After RISC-V augmentation: 75.45% +/- 13.20%
- Lift: +50.61pp

### Prior zero-shot baseline (cited for continuity, not apples-to-apples)

- Source: `eval/eval_riscv_multiseed_postfix_results.txt`
- Zero-shot baseline (different model family -- `dataflow_taint` -- and a different, larger eval set; no RISC-V training exposure): 29-34%

### Composition of the 75.45% result

RETBLEED (20 examples, 100% recall) and INCEPTION (16 examples, 89% recall) supply the majority of correct predictions; MDS (12 examples) has 73% recall; L1TF -- the single largest class in the full RISC-V corpus -- now has 2 real holdout examples (100% recall).

## Per-class RISC-V holdout breakdown

Note: small `n` counts often represent few distinct source programs at multiple optimization levels, not independent examples -- e.g. L1TF's holdout examples are the same source file at O0 and O2, not two independently-sampled programs. Treat precision/recall for LOW-confidence rows accordingly.

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
