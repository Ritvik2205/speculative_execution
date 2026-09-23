# GINE: train x86_64+arm64 -> test held-out riscv64

Held-out set: 252 real-compiled riscv64 records (40 source families, effective n ≈ 27.3). Always-BENIGN accuracy baseline = 87.7% — accuracy is therefore NOT a headline metric here.

Cells: mean ± 95% t-CI across seeds. `grpCI` = mean per-seed cluster-bootstrap interval (source-family resampling).

| condition | seeds | macro-F1 | benign FP rate | attack detection | grpCI benign FP | grpCI attack det. |
|---|---|---|---|---|---|---|
| rv_canon_both_nohand | [1, 7, 13, 21, 42] | 12.5 ± 3.1 | 44.8 ± 22.1 | 41.9 ± 16.0 | [36, 55] | [17, 68] |
| rv_canon_nohand | [1, 7, 13, 21, 42] | 10.6 ± 2.0 | 51.1 ± 14.7 | 45.2 ± 9.0 | [41, 61] | [18, 73] |
| rv_drop_nohand | [1, 7, 13, 21, 42] | 15.5 ± 5.3 | 23.1 ± 16.3 | 33.5 ± 23.6 | [15, 32] | [11, 58] |
| rv_embed | [1, 7, 13, 21, 42] | 37.1 ± 4.6 | 28.7 ± 3.8 | 72.9 ± 19.3 | [20, 39] | [52, 89] |

## Per-class recall (mean ± 95% t-CI across seeds)

| condition | BENIGN | BRANCH_HISTORY_INJECTION | RETBLEED | SPECTRE_RSB | SPECTRE_V1 | SPECTRE_V4 |
|---|---|---|---|---|---|---|
| rv_canon_both_nohand | 55.2 ± 22.1 | 0.0 ± 0.0 | 0.0 ± 0.0 | 16.7 ± 25.3 | 1.7 ± 4.6 | 0.0 ± 0.0 |
| rv_canon_nohand | 48.9 ± 14.7 | 0.0 ± 0.0 | 0.0 ± 0.0 | 10.0 ± 18.5 | 0.0 ± 0.0 | 0.0 ± 0.0 |
| rv_drop_nohand | 76.9 ± 16.3 | 0.0 ± 0.0 | 0.0 ± 0.0 | 10.0 ± 27.8 | 1.7 ± 4.6 | 0.0 ± 0.0 |
| rv_embed | 71.3 ± 3.8 | 90.0 ± 17.0 | 0.0 ± 0.0 | 36.7 ± 34.0 | 20.0 ± 34.8 | 0.0 ± 0.0 |

Support: BENIGN=221, BRANCH_HISTORY_INJECTION=4 (LOW — not evidence), RETBLEED=7, SPECTRE_RSB=6, SPECTRE_V1=12, SPECTRE_V4=2 (LOW — not evidence)

## Most common false predictions on BENIGN (summed over seeds)

- **rv_canon_both_nohand**: RETBLEED 171, SPECTRE_RSB 110, INCEPTION 83, L1TF 57
- **rv_canon_nohand**: RETBLEED 198, SPECTRE_RSB 193, INCEPTION 114, L1TF 27
- **rv_drop_nohand**: INCEPTION 135, RETBLEED 50, MDS 22, BRANCH_HISTORY_INJECTION 17
- **rv_embed**: INCEPTION 199, RETBLEED 57, SPECTRE_V1 36, SPECTRE_RSB 18
