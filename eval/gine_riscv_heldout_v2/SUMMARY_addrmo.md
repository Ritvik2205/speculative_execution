# GINE: train x86_64+arm64 -> test held-out riscv64

Held-out set: 248 real-compiled riscv64 records (37 source families, effective n ≈ 26.6). Always-BENIGN accuracy baseline = 89.1% — accuracy is therefore NOT a headline metric here.

Cells: mean ± 95% t-CI across seeds. `grpCI` = mean per-seed cluster-bootstrap interval (source-family resampling).

## Whole-function inference

| condition | seeds | macro-F1 | benign FP rate | attack detection | J = det − FP | grpCI benign FP | grpCI attack det. |
|---|---|---|---|---|---|---|---|
| embed_specfix | 5 | 51.7 ± 10.6 | 32.3 ± 14.9 | 85.9 ± 10.5 | 53.6 ± 6.1 | [23, 42] | [71, 96] |
| len_embed | 5 | 50.2 ± 8.2 | 12.7 ± 1.8 | 62.2 ± 14.3 | 49.6 ± 13.3 | [7, 19] | [40, 82] |
| len_learned | 5 | 43.4 ± 5.8 | 7.9 ± 2.2 | 57.8 ± 19.1 | 49.9 ± 20.8 | [4, 12] | [39, 76] |
| len_learned_adv | 5 | 45.3 ± 7.0 | 6.6 ± 3.1 | 58.5 ± 18.2 | 51.9 ± 17.7 | [3, 10] | [36, 78] |
| rv_embed_addrmo | 5 | 49.4 ± 18.9 | 34.1 ± 7.8 | 77.0 ± 13.6 | 42.9 ± 13.9 | [25, 45] | [57, 91] |
| rv_lv4_embed_addrmo | 5 | 47.4 ± 7.2 | 12.7 ± 12.4 | 57.0 ± 23.6 | 44.4 ± 13.7 | [8, 18] | [35, 77] |
| rv_lv4_learned_addrmo | 5 | 45.3 ± 10.7 | 6.2 ± 4.2 | 59.3 ± 14.5 | 53.1 ± 13.5 | [3, 10] | [34, 81] |
| rv_lv4_learned_adv_addrmo | 5 | 40.7 ± 11.8 | 9.6 ± 3.0 | 60.7 ± 8.4 | 51.1 ± 7.1 | [5, 15] | [37, 82] |

## Windowed inference (training-size windows, confidence k=0.5; abstain to BENIGN)

Window length = each checkpoint's own training-set p90 (e.g. 33); never tuned on this test set.

| condition | seeds | macro-F1 | benign FP rate | attack detection | J = det − FP |
|---|---|---|---|---|---|
| embed_specfix | 5 | 48.2 ± 5.9 | 7.7 ± 8.0 | 60.7 ± 18.0 | 53.0 ± 14.7 |
| len_embed | 5 | 49.1 ± 7.3 | 12.1 ± 0.7 | 59.3 ± 15.6 | 47.1 ± 14.9 |
| len_learned | 5 | 42.8 ± 3.5 | 6.5 ± 2.0 | 51.9 ± 17.2 | 45.3 ± 17.4 |
| len_learned_adv | 5 | 46.3 ± 6.5 | 5.0 ± 2.4 | 50.4 ± 16.5 | 45.4 ± 15.5 |
| rv_embed_addrmo | 5 | 49.0 ± 16.4 | 3.3 ± 3.0 | 53.3 ± 15.8 | 50.0 ± 13.4 |
| rv_lv4_embed_addrmo | 5 | 47.7 ± 6.4 | 11.2 ± 9.4 | 54.8 ± 20.4 | 43.6 ± 13.6 |
| rv_lv4_learned_addrmo | 5 | 46.4 ± 10.9 | 5.1 ± 3.4 | 54.8 ± 15.7 | 49.7 ± 13.1 |
| rv_lv4_learned_adv_addrmo | 5 | 40.1 ± 11.3 | 6.5 ± 2.2 | 51.9 ± 13.4 | 45.3 ± 13.7 |

## Per-class recall (mean ± 95% t-CI across seeds)

| condition | BENIGN | BRANCH_HISTORY_INJECTION | SPECTRE_RSB | SPECTRE_V1 | SPECTRE_V4 |
|---|---|---|---|---|---|
| embed_specfix | 67.7 ± 14.9 | 90.0 ± 27.8 | 13.3 ± 22.7 | 41.7 ± 40.7 | 44.0 ± 27.2 |
| len_embed | 87.3 ± 1.8 | 85.0 ± 17.0 | 50.0 ± 14.6 | 46.7 ± 23.8 | 0.0 ± 0.0 |
| len_learned | 92.1 ± 2.2 | 75.0 ± 0.0 | 33.3 ± 14.6 | 8.3 ± 12.7 | 0.0 ± 0.0 |
| len_learned_adv | 93.4 ± 3.1 | 70.0 ± 13.9 | 23.3 ± 11.3 | 28.3 ± 23.8 | 0.0 ± 0.0 |
| rv_embed_addrmo | 65.9 ± 7.8 | 70.0 ± 55.5 | 13.3 ± 27.0 | 33.3 ± 24.3 | 44.0 ± 32.4 |
| rv_lv4_embed_addrmo | 87.3 ± 12.4 | 85.0 ± 17.0 | 30.0 ± 17.3 | 46.7 ± 34.8 | 0.0 ± 0.0 |
| rv_lv4_learned_addrmo | 93.8 ± 4.2 | 80.0 ± 13.9 | 46.7 ± 37.0 | 8.3 ± 14.6 | 0.0 ± 0.0 |
| rv_lv4_learned_adv_addrmo | 90.4 ± 3.0 | 55.0 ± 51.0 | 46.7 ± 34.0 | 11.7 ± 9.3 | 0.0 ± 0.0 |

Support: BENIGN=221, BRANCH_HISTORY_INJECTION=4 (LOW — not evidence), SPECTRE_RSB=6, SPECTRE_V1=12, SPECTRE_V4=5

## Most common false predictions on BENIGN (summed over seeds)

- **embed_specfix**: SPECTRE_V1 177, RETBLEED 111, INCEPTION 35, SPECTRE_RSB 28
- **len_embed**: SPECTRE_RSB 56, INCEPTION 50, SPECTRE_V1 19, SPECTRE_V2 9
- **len_learned**: SPECTRE_RSB 38, INCEPTION 30, RETBLEED 8, SPECTRE_V2 7
- **len_learned_adv**: SPECTRE_RSB 42, INCEPTION 16, SPECTRE_V2 8, SPECTRE_V1 4
- **rv_embed_addrmo**: RETBLEED 274, SPECTRE_V1 55, INCEPTION 30, SPECTRE_RSB 13
- **rv_lv4_embed_addrmo**: SPECTRE_RSB 87, INCEPTION 22, SPECTRE_V1 20, SPECTRE_V2 7
- **rv_lv4_learned_addrmo**: SPECTRE_RSB 28, INCEPTION 23, SPECTRE_V2 7, SPECTRE_V1 4
- **rv_lv4_learned_adv_addrmo**: INCEPTION 48, SPECTRE_RSB 25, SPECTRE_V2 10, SPECTRE_V4 8
