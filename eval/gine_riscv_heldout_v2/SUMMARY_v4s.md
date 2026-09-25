# GINE: train x86_64+arm64 -> test held-out riscv64

Held-out set: 248 real-compiled riscv64 records (37 source families, effective n ≈ 26.6). Always-BENIGN accuracy baseline = 89.1% — accuracy is therefore NOT a headline metric here.

Cells: mean ± 95% t-CI across seeds. `grpCI` = mean per-seed cluster-bootstrap interval (source-family resampling).

## Whole-function inference

| condition | seeds | macro-F1 | benign FP rate | attack detection | J = det − FP | grpCI benign FP | grpCI attack det. |
|---|---|---|---|---|---|---|---|
| embed_specfix | 5 | 51.7 ± 10.6 | 32.3 ± 14.9 | 85.9 ± 10.5 | 53.6 ± 6.1 | [23, 42] | [71, 96] |
| len_learned_adv | 5 | 45.3 ± 7.0 | 6.6 ± 3.1 | 58.5 ± 18.2 | 51.9 ± 17.7 | [3, 10] | [36, 78] |
| rv_embed_v4s | 5 | 51.1 ± 10.5 | 35.5 ± 21.7 | 73.3 ± 13.6 | 37.9 ± 11.7 | [26, 45] | [50, 89] |
| rv_lv4_learned_addrmo | 5 | 45.3 ± 10.7 | 6.2 ± 4.2 | 59.3 ± 14.5 | 53.1 ± 13.5 | [3, 10] | [34, 81] |
| rv_lv4s_embed_v4s | 5 | 46.2 ± 7.1 | 11.7 ± 9.8 | 65.9 ± 18.8 | 54.3 ± 16.7 | [7, 17] | [46, 83] |
| rv_lv4s_learned_adv_v4s | 5 | 48.4 ± 4.1 | 5.2 ± 3.5 | 60.0 ± 17.0 | 54.8 ± 13.9 | [2, 9] | [33, 84] |
| rv_lv4s_learned_v4s | 5 | 46.1 ± 8.4 | 7.5 ± 2.2 | 48.1 ± 17.2 | 40.6 ± 16.0 | [3, 12] | [22, 75] |
| rv_lv4x_embed_v4s | 5 | 49.2 ± 5.0 | 17.0 ± 11.7 | 74.1 ± 7.3 | 57.1 ± 8.9 | [11, 24] | [58, 88] |
| rv_lv4x_learned_v4s | 5 | 43.0 ± 7.1 | 8.7 ± 1.8 | 54.1 ± 14.8 | 45.4 ± 14.5 | [4, 14] | [31, 75] |

## Windowed inference (training-size windows, confidence k=0.5; abstain to BENIGN)

Window length = each checkpoint's own training-set p90 (e.g. 33); never tuned on this test set.

| condition | seeds | macro-F1 | benign FP rate | attack detection | J = det − FP |
|---|---|---|---|---|---|
| embed_specfix | 5 | 48.2 ± 5.9 | 7.7 ± 8.0 | 60.7 ± 18.0 | 53.0 ± 14.7 |
| len_learned_adv | 5 | 46.3 ± 6.5 | 5.0 ± 2.4 | 50.4 ± 16.5 | 45.4 ± 15.5 |
| rv_embed_v4s | 5 | 52.5 ± 10.3 | 6.1 ± 9.2 | 55.6 ± 16.6 | 49.5 ± 11.3 |
| rv_lv4_learned_addrmo | 5 | 46.4 ± 10.9 | 5.1 ± 3.4 | 54.8 ± 15.7 | 49.7 ± 13.1 |
| rv_lv4s_embed_v4s | 5 | 47.2 ± 6.9 | 10.8 ± 9.8 | 64.4 ± 19.1 | 53.7 ± 17.3 |
| rv_lv4s_learned_adv_v4s | 5 | 45.4 ± 8.0 | 4.1 ± 3.1 | 44.4 ± 30.5 | 40.4 ± 27.8 |
| rv_lv4s_learned_v4s | 5 | 46.1 ± 8.3 | 7.1 ± 2.8 | 46.7 ± 15.1 | 39.6 ± 14.0 |
| rv_lv4x_embed_v4s | 5 | 48.5 ± 5.0 | 16.6 ± 11.7 | 72.6 ± 8.4 | 56.0 ± 9.1 |
| rv_lv4x_learned_v4s | 5 | 43.7 ± 6.2 | 7.8 ± 2.1 | 53.3 ± 14.0 | 45.6 ± 14.0 |

## Per-class recall (mean ± 95% t-CI across seeds)

| condition | BENIGN | BRANCH_HISTORY_INJECTION | SPECTRE_RSB | SPECTRE_V1 | SPECTRE_V4 |
|---|---|---|---|---|---|
| embed_specfix | 67.7 ± 14.9 | 90.0 ± 27.8 | 13.3 ± 22.7 | 41.7 ± 40.7 | 44.0 ± 27.2 |
| len_learned_adv | 93.4 ± 3.1 | 70.0 ± 13.9 | 23.3 ± 11.3 | 28.3 ± 23.8 | 0.0 ± 0.0 |
| rv_embed_v4s | 64.5 ± 21.7 | 85.0 ± 17.0 | 6.7 ± 18.5 | 33.3 ± 17.9 | 40.0 ± 30.4 |
| rv_lv4_learned_addrmo | 93.8 ± 4.2 | 80.0 ± 13.9 | 46.7 ± 37.0 | 8.3 ± 14.6 | 0.0 ± 0.0 |
| rv_lv4s_embed_v4s | 88.3 ± 9.8 | 85.0 ± 17.0 | 13.3 ± 9.3 | 55.0 ± 22.7 | 0.0 ± 0.0 |
| rv_lv4s_learned_adv_v4s | 94.8 ± 3.5 | 70.0 ± 13.9 | 36.7 ± 37.0 | 28.3 ± 28.0 | 0.0 ± 0.0 |
| rv_lv4s_learned_v4s | 92.5 ± 2.2 | 80.0 ± 26.0 | 46.7 ± 27.0 | 10.0 ± 17.0 | 0.0 ± 0.0 |
| rv_lv4x_embed_v4s | 83.0 ± 11.7 | 90.0 ± 17.0 | 33.3 ± 20.7 | 61.7 ± 18.8 | 0.0 ± 0.0 |
| rv_lv4x_learned_v4s | 91.3 ± 1.8 | 70.0 ± 13.9 | 30.0 ± 17.3 | 11.7 ± 15.7 | 0.0 ± 0.0 |

Support: BENIGN=221, BRANCH_HISTORY_INJECTION=4 (LOW — not evidence), SPECTRE_RSB=6, SPECTRE_V1=12, SPECTRE_V4=5

## Most common false predictions on BENIGN (summed over seeds)

- **embed_specfix**: SPECTRE_V1 177, RETBLEED 111, INCEPTION 35, SPECTRE_RSB 28
- **len_learned_adv**: SPECTRE_RSB 42, INCEPTION 16, SPECTRE_V2 8, SPECTRE_V1 4
- **rv_embed_v4s**: RETBLEED 276, SPECTRE_V1 40, INCEPTION 30, SPECTRE_RSB 26
- **rv_lv4_learned_addrmo**: SPECTRE_RSB 28, INCEPTION 23, SPECTRE_V2 7, SPECTRE_V1 4
- **rv_lv4s_embed_v4s**: SPECTRE_RSB 51, INCEPTION 40, SPECTRE_V1 23, SPECTRE_V2 10
- **rv_lv4s_learned_adv_v4s**: INCEPTION 25, SPECTRE_RSB 18, SPECTRE_V2 6, SPECTRE_V1 5
- **rv_lv4s_learned_v4s**: SPECTRE_RSB 37, INCEPTION 30, SPECTRE_V2 10, SPECTRE_V4 3
- **rv_lv4x_embed_v4s**: SPECTRE_RSB 104, INCEPTION 41, SPECTRE_V1 32, SPECTRE_V2 9
- **rv_lv4x_learned_v4s**: SPECTRE_RSB 48, INCEPTION 33, RETBLEED 5, SPECTRE_V2 4
