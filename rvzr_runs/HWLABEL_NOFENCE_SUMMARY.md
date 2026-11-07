# Hardware labels for fenced Revizor variants

`rvzr reproduce` x3 per variant on the i5-8300H, filters OFF. vulnerable = violation in 3/3, mitigated = 0/3. A dir whose unmodified original does not reproduce every time is unstable_original.

| class | variant | vulnerable | mitigated | flaky | error | unstable_original | incomplete |
|---|---|---|---|---|---|---|---|
| L1TF | cf_nofence_ess | 14 | 43 | 3 | 0 | 0 | 0 |
| L1TF | cf_nofence_non | 60 | 0 | 0 | 0 | 0 | 0 |
| L1TF | original | 60 | 0 | 0 | 0 | 4 | 0 |
| MDS | cf_nofence_ess | 3 | 23 | 0 | 0 | 0 | 0 |
| MDS | cf_nofence_non | 16 | 1 | 1 | 0 | 0 | 0 |
| MDS | original | 26 | 0 | 0 | 0 | 7 | 0 |
| SPECTRE_V1 | cf_nofence_ess | 17 | 21 | 3 | 0 | 3 | 0 |
| SPECTRE_V1 | cf_nofence_non | 35 | 0 | 6 | 0 | 2 | 0 |
| SPECTRE_V1 | original | 46 | 0 | 0 | 0 | 8 | 0 |
| SPECTRE_V4 | cf_nofence_ess | 2 | 18 | 1 | 0 | 0 | 0 |
| SPECTRE_V4 | cf_nofence_non | 20 | 1 | 0 | 0 | 0 | 0 |
| SPECTRE_V4 | original | 21 | 0 | 0 | 0 | 1 | 0 |

274 labelled variant records -> `eval/data/revizor_hwlabel_nofence_heldout.jsonl`
