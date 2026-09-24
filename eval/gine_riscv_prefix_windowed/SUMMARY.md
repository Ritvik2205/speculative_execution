# GINE: train x86_64+arm64 -> test held-out riscv64

Held-out set: 252 real-compiled riscv64 records (40 source families, effective n ≈ 27.3). Always-BENIGN accuracy baseline = 87.7% — accuracy is therefore NOT a headline metric here.

Cells: mean ± 95% t-CI across seeds. `grpCI` = mean per-seed cluster-bootstrap interval (source-family resampling).

## Whole-function inference

| condition | seeds | macro-F1 | benign FP rate | attack detection | J = det − FP | grpCI benign FP | grpCI attack det. |
|---|---|---|---|---|---|---|---|
| b1july | 5 | 27.9 ± 4.2 | 44.8 ± 8.7 | 54.2 ± 17.3 | 9.4 ± 9.1 | [34, 56] | [24, 79] |
| rv_canon_both_nohand | 5 | 12.5 ± 3.1 | 44.8 ± 22.1 | 41.9 ± 16.0 | -2.9 ± 7.6 | [36, 55] | [17, 68] |
| rv_canon_nohand | 5 | 10.6 ± 2.0 | 51.1 ± 14.7 | 45.2 ± 9.0 | -6.0 ± 20.6 | [41, 61] | [18, 73] |
| rv_drop_nohand | 5 | 14.9 ± 3.9 | 23.0 ± 16.2 | 32.9 ± 22.2 | 9.9 ± 18.7 | [15, 32] | [10, 58] |
| rv_embed | 5 | 37.6 ± 4.8 | 28.6 ± 3.9 | 74.8 ± 20.1 | 46.2 ± 18.7 | [20, 39] | [57, 89] |
| v56both | 10 | 9.8 ± 6.1 | 96.4 ± 8.0 | 98.7 ± 2.9 | 2.3 ± 5.0 | [95, 97] | [97, 100] |
| v56learned | 10 | 2.5 ± 1.9 | 99.7 ± 0.5 | 100.0 ± 0.0 | 0.3 ± 0.5 | [99, 100] | [100, 100] |

## Windowed inference (training-size windows, confidence k=0.5; abstain to BENIGN)

Window length = each checkpoint's own training-set p90 (e.g. 33); never tuned on this test set.

| condition | seeds | macro-F1 | benign FP rate | attack detection | J = det − FP |
|---|---|---|---|---|---|
| b1july | 5 | 31.6 ± 4.3 | 3.3 ± 3.3 | 37.4 ± 13.2 | 34.2 ± 9.9 |
| rv_canon_both_nohand | 5 | 15.6 ± 1.2 | 8.3 ± 5.2 | 22.6 ± 15.8 | 14.3 ± 19.5 |
| rv_canon_nohand | 5 | 15.6 ± 1.0 | 8.2 ± 6.7 | 30.3 ± 10.1 | 22.1 ± 13.7 |
| rv_drop_nohand | 5 | 16.9 ± 3.4 | 2.3 ± 2.9 | 23.9 ± 17.1 | 21.6 ± 15.0 |
| rv_embed | 5 | 39.2 ± 4.4 | 3.0 ± 2.8 | 54.8 ± 20.0 | 51.9 ± 17.4 |
| v56both | 10 | 10.6 ± 6.7 | 92.1 ± 15.7 | 98.1 ± 2.9 | 5.9 ± 13.0 |
| v56learned | 10 | 3.8 ± 3.8 | 97.8 ± 1.8 | 99.4 ± 1.5 | 1.5 ± 2.3 |

## Per-class recall (mean ± 95% t-CI across seeds)

| condition | BENIGN | BRANCH_HISTORY_INJECTION | RETBLEED | SPECTRE_RSB | SPECTRE_V1 | SPECTRE_V4 |
|---|---|---|---|---|---|---|
| b1july | 55.2 ± 8.7 | 85.0 ± 27.8 | 0.0 ± 0.0 | 10.0 ± 27.8 | 10.0 ± 18.5 | 0.0 ± 0.0 |
| rv_canon_both_nohand | 55.2 ± 22.1 | 0.0 ± 0.0 | 0.0 ± 0.0 | 16.7 ± 25.3 | 1.7 ± 4.6 | 0.0 ± 0.0 |
| rv_canon_nohand | 48.9 ± 14.7 | 0.0 ± 0.0 | 0.0 ± 0.0 | 10.0 ± 18.5 | 0.0 ± 0.0 | 0.0 ± 0.0 |
| rv_drop_nohand | 77.0 ± 16.2 | 0.0 ± 0.0 | 0.0 ± 0.0 | 10.0 ± 27.8 | 0.0 ± 0.0 | 0.0 ± 0.0 |
| rv_embed | 71.4 ± 3.9 | 90.0 ± 17.0 | 0.0 ± 0.0 | 36.7 ± 34.0 | 23.3 ± 33.8 | 0.0 ± 0.0 |
| v56both | 3.6 ± 8.0 | 40.0 ± 33.9 | 0.0 ± 0.0 | 0.0 ± 0.0 | 87.5 ± 11.0 | 0.0 ± 0.0 |
| v56learned | 0.3 ± 0.5 | 10.0 ± 22.6 | 0.0 ± 0.0 | 0.0 ± 0.0 | 90.0 ± 11.5 | 0.0 ± 0.0 |

Support: BENIGN=221, BRANCH_HISTORY_INJECTION=4 (LOW — not evidence), RETBLEED=7, SPECTRE_RSB=6, SPECTRE_V1=12, SPECTRE_V4=2 (LOW — not evidence)

## Most common false predictions on BENIGN (summed over seeds)

- **b1july**: INCEPTION 281, SPECTRE_V1 84, RETBLEED 81, MDS 26
- **rv_canon_both_nohand**: RETBLEED 171, SPECTRE_RSB 110, INCEPTION 83, L1TF 57
- **rv_canon_nohand**: RETBLEED 198, SPECTRE_RSB 193, INCEPTION 114, L1TF 27
- **rv_drop_nohand**: INCEPTION 135, RETBLEED 50, MDS 21, BRANCH_HISTORY_INJECTION 17
- **rv_embed**: INCEPTION 198, RETBLEED 57, SPECTRE_V1 36, SPECTRE_RSB 18
- **v56both**: SPECTRE_V1 1673, INCEPTION 160, RETBLEED 154, MDS 83
- **v56learned**: SPECTRE_V1 1909, RETBLEED 227, SPECTRE_RSB 30, INCEPTION 28
