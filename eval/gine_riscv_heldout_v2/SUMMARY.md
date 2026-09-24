# GINE: train x86_64+arm64 -> test held-out riscv64

Held-out set: 248 real-compiled riscv64 records (37 source families, effective n ≈ 26.6). Always-BENIGN accuracy baseline = 89.1% — accuracy is therefore NOT a headline metric here.

Cells: mean ± 95% t-CI across seeds. `grpCI` = mean per-seed cluster-bootstrap interval (source-family resampling).

## Whole-function inference

| condition | seeds | macro-F1 | benign FP rate | attack detection | J = det − FP | grpCI benign FP | grpCI attack det. |
|---|---|---|---|---|---|---|---|
| canon_both_nohand_specfix | 5 | 11.8 ± 2.8 | 56.0 ± 16.6 | 51.1 ± 16.4 | -4.9 ± 6.9 | [47, 65] | [21, 76] |
| canon_nohand_specfix | 5 | 15.3 ± 2.4 | 44.6 ± 12.4 | 51.1 ± 6.0 | 6.5 ± 16.6 | [36, 54] | [21, 78] |
| drop_nohand_specfix | 5 | 37.8 ± 15.2 | 35.3 ± 8.4 | 73.3 ± 15.0 | 38.0 ± 10.1 | [25, 47] | [56, 86] |
| embed_specfix | 5 | 51.7 ± 10.6 | 32.3 ± 14.9 | 85.9 ± 10.5 | 53.6 ± 6.1 | [23, 42] | [71, 96] |
| len_both | 5 | 42.0 ± 6.0 | 5.6 ± 2.8 | 46.7 ± 16.8 | 41.1 ± 17.7 | [3, 9] | [25, 69] |
| len_embed | 5 | 50.2 ± 8.2 | 12.7 ± 1.8 | 62.2 ± 14.3 | 49.6 ± 13.3 | [7, 19] | [40, 82] |
| len_learned | 5 | 43.4 ± 5.8 | 7.9 ± 2.2 | 57.8 ± 19.1 | 49.9 ± 20.8 | [4, 12] | [39, 76] |
| len_learned_adv | 5 | 45.3 ± 7.0 | 6.6 ± 3.1 | 58.5 ± 18.2 | 51.9 ± 17.7 | [3, 10] | [36, 78] |
| len_neutral | 5 | 37.8 ± 9.9 | 11.0 ± 4.4 | 52.6 ± 8.8 | 41.6 ± 9.2 | [5, 18] | [29, 70] |
| len_neutral_adv | 5 | 40.6 ± 7.5 | 15.6 ± 7.8 | 55.6 ± 18.7 | 40.0 ± 13.9 | [9, 23] | [38, 69] |

## Windowed inference (training-size windows, confidence k=0.5; abstain to BENIGN)

Window length = each checkpoint's own training-set p90 (e.g. 33); never tuned on this test set.

| condition | seeds | macro-F1 | benign FP rate | attack detection | J = det − FP |
|---|---|---|---|---|---|
| canon_both_nohand_specfix | 5 | 18.3 ± 0.6 | 8.4 ± 6.5 | 34.1 ± 12.8 | 25.7 ± 6.7 |
| canon_nohand_specfix | 5 | 20.2 ± 2.7 | 6.0 ± 4.5 | 34.8 ± 6.2 | 28.8 ± 8.2 |
| drop_nohand_specfix | 5 | 39.8 ± 14.8 | 5.0 ± 3.4 | 50.4 ± 14.8 | 45.4 ± 13.6 |
| embed_specfix | 5 | 48.2 ± 5.9 | 7.7 ± 8.0 | 60.7 ± 18.0 | 53.0 ± 14.7 |
| len_both | 5 | 41.7 ± 5.2 | 5.1 ± 2.8 | 45.2 ± 16.4 | 40.1 ± 17.2 |
| len_embed | 5 | 49.1 ± 7.3 | 12.1 ± 0.7 | 59.3 ± 15.6 | 47.1 ± 14.9 |
| len_learned | 5 | 42.8 ± 3.5 | 6.5 ± 2.0 | 51.9 ± 17.2 | 45.3 ± 17.4 |
| len_learned_adv | 5 | 46.3 ± 6.5 | 5.0 ± 2.4 | 50.4 ± 16.5 | 45.4 ± 15.5 |
| len_neutral | 5 | 38.1 ± 10.0 | 9.4 ± 3.9 | 46.7 ± 7.7 | 37.3 ± 9.9 |
| len_neutral_adv | 5 | 40.2 ± 8.0 | 14.6 ± 6.3 | 51.1 ± 16.4 | 36.5 ± 11.4 |

## Per-class recall (mean ± 95% t-CI across seeds)

| condition | BENIGN | BRANCH_HISTORY_INJECTION | SPECTRE_RSB | SPECTRE_V1 | SPECTRE_V4 |
|---|---|---|---|---|---|
| canon_both_nohand_specfix | 44.0 ± 16.6 | 0.0 ± 0.0 | 0.0 ± 0.0 | 3.3 ± 9.3 | 0.0 ± 0.0 |
| canon_nohand_specfix | 55.4 ± 12.4 | 0.0 ± 0.0 | 6.7 ± 18.5 | 6.7 ± 13.5 | 0.0 ± 0.0 |
| drop_nohand_specfix | 64.7 ± 8.4 | 40.0 ± 35.4 | 20.0 ± 34.0 | 31.7 ± 18.5 | 16.0 ± 32.4 |
| embed_specfix | 67.7 ± 14.9 | 90.0 ± 27.8 | 13.3 ± 22.7 | 41.7 ± 40.7 | 44.0 ± 27.2 |
| len_both | 94.4 ± 2.8 | 75.0 ± 0.0 | 23.3 ± 11.3 | 8.3 ± 12.7 | 0.0 ± 0.0 |
| len_embed | 87.3 ± 1.8 | 85.0 ± 17.0 | 50.0 ± 14.6 | 46.7 ± 23.8 | 0.0 ± 0.0 |
| len_learned | 92.1 ± 2.2 | 75.0 ± 0.0 | 33.3 ± 14.6 | 8.3 ± 12.7 | 0.0 ± 0.0 |
| len_learned_adv | 93.4 ± 3.1 | 70.0 ± 13.9 | 23.3 ± 11.3 | 28.3 ± 23.8 | 0.0 ± 0.0 |
| len_neutral | 89.0 ± 4.4 | 75.0 ± 0.0 | 10.0 ± 18.5 | 15.0 ± 17.0 | 0.0 ± 0.0 |
| len_neutral_adv | 84.4 ± 7.8 | 75.0 ± 0.0 | 20.0 ± 17.3 | 20.0 ± 15.7 | 0.0 ± 0.0 |

Support: BENIGN=221, BRANCH_HISTORY_INJECTION=4 (LOW — not evidence), SPECTRE_RSB=6, SPECTRE_V1=12, SPECTRE_V4=5

## Most common false predictions on BENIGN (summed over seeds)

- **canon_both_nohand_specfix**: L1TF 134, MDS 104, SPECTRE_RSB 84, RETBLEED 80
- **canon_nohand_specfix**: L1TF 184, MDS 76, RETBLEED 74, SPECTRE_RSB 66
- **drop_nohand_specfix**: RETBLEED 253, SPECTRE_RSB 49, SPECTRE_V2 36, SPECTRE_V1 31
- **embed_specfix**: SPECTRE_V1 177, RETBLEED 111, INCEPTION 35, SPECTRE_RSB 28
- **len_both**: SPECTRE_RSB 36, INCEPTION 13, SPECTRE_V2 7, SPECTRE_V4 3
- **len_embed**: SPECTRE_RSB 56, INCEPTION 50, SPECTRE_V1 19, SPECTRE_V2 9
- **len_learned**: SPECTRE_RSB 38, INCEPTION 30, RETBLEED 8, SPECTRE_V2 7
- **len_learned_adv**: SPECTRE_RSB 42, INCEPTION 16, SPECTRE_V2 8, SPECTRE_V1 4
- **len_neutral**: INCEPTION 72, SPECTRE_RSB 17, SPECTRE_V2 11, RETBLEED 7
- **len_neutral_adv**: INCEPTION 120, SPECTRE_V1 18, SPECTRE_RSB 10, BRANCH_HISTORY_INJECTION 10
