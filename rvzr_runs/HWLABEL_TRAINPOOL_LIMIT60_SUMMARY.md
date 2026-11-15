# Hardware labels for fenced Revizor variants

`rvzr reproduce` x3 per variant on the i5-8300H, filters OFF. vulnerable = violation in 3/3, mitigated = 0/3. A dir whose unmodified original does not reproduce every time is unstable_original.

| class | variant | vulnerable | mitigated | flaky | error | unstable_original | incomplete |
|---|---|---|---|---|---|---|---|
| L1TF | after_load | 0 | 57 | 0 | 0 | 3 | 0 |
| L1TF | cf_fencepass | 56 | 0 | 1 | 0 | 0 | 0 |
| L1TF | cf_nofence_ess | 17 | 39 | 1 | 0 | 1 | 0 |
| L1TF | cf_nofence_non | 55 | 1 | 0 | 0 | 1 | 0 |
| L1TF | cf_nonleak | 36 | 19 | 0 | 0 | 1 | 0 |
| L1TF | entry | 57 | 0 | 0 | 0 | 3 | 0 |
| L1TF | fence_all | 0 | 57 | 0 | 0 | 3 | 0 |
| L1TF | original | 57 | 0 | 0 | 0 | 3 | 0 |
| L1TF | tail | 57 | 0 | 0 | 0 | 3 | 0 |
| L1TF | twin | 0 | 57 | 0 | 0 | 3 | 0 |
| MDS | after_load | 0 | 48 | 0 | 0 | 12 | 0 |
| MDS | cf_fencepass | 41 | 0 | 4 | 0 | 3 | 0 |
| MDS | cf_nofence_ess | 10 | 37 | 0 | 0 | 4 | 0 |
| MDS | cf_nofence_non | 40 | 1 | 0 | 0 | 1 | 0 |
| MDS | cf_nonleak | 11 | 10 | 1 | 0 | 0 | 0 |
| MDS | entry | 43 | 5 | 0 | 0 | 12 | 0 |
| MDS | fence_all | 0 | 48 | 0 | 0 | 12 | 0 |
| MDS | original | 48 | 0 | 0 | 0 | 12 | 0 |
| MDS | tail | 44 | 1 | 3 | 0 | 12 | 0 |
| MDS | twin | 0 | 48 | 0 | 0 | 12 | 0 |
| SPECTRE_V1 | cf_fencepass | 50 | 0 | 2 | 0 | 6 | 0 |
| SPECTRE_V1 | cf_nofence_ess | 15 | 35 | 2 | 0 | 8 | 0 |
| SPECTRE_V1 | cf_nofence_non | 49 | 0 | 2 | 0 | 8 | 0 |
| SPECTRE_V1 | cf_nonleak | 36 | 12 | 2 | 0 | 8 | 0 |
| SPECTRE_V1 | cf_wrong_path | 48 | 0 | 0 | 0 | 8 | 0 |
| SPECTRE_V1 | entry | 40 | 5 | 3 | 0 | 8 | 0 |
| SPECTRE_V1 | fence_all | 0 | 52 | 0 | 0 | 8 | 0 |
| SPECTRE_V1 | original | 52 | 0 | 0 | 0 | 8 | 0 |
| SPECTRE_V1 | shifted | 0 | 48 | 0 | 0 | 8 | 0 |
| SPECTRE_V1 | tail | 47 | 0 | 1 | 0 | 8 | 0 |
| SPECTRE_V1 | twin | 0 | 48 | 0 | 0 | 8 | 0 |
| SPECTRE_V1 | v1_fallthrough | 47 | 0 | 1 | 0 | 8 | 0 |
| SPECTRE_V4 | cf_after_bypass | 0 | 60 | 0 | 0 | 0 | 0 |
| SPECTRE_V4 | cf_fencepass | 54 | 1 | 3 | 0 | 0 | 0 |
| SPECTRE_V4 | cf_nofence_ess | 4 | 55 | 1 | 0 | 0 | 0 |
| SPECTRE_V4 | cf_nofence_non | 53 | 7 | 0 | 0 | 0 | 0 |
| SPECTRE_V4 | cf_nonleak | 11 | 48 | 1 | 0 | 0 | 0 |
| SPECTRE_V4 | entry | 54 | 3 | 3 | 0 | 0 | 0 |
| SPECTRE_V4 | fence_all | 0 | 60 | 0 | 0 | 0 | 0 |
| SPECTRE_V4 | original | 60 | 0 | 0 | 0 | 0 | 0 |
| SPECTRE_V4 | shifted | 0 | 60 | 0 | 0 | 0 | 0 |
| SPECTRE_V4 | tail | 59 | 0 | 1 | 0 | 0 | 0 |
| SPECTRE_V4 | twin | 0 | 60 | 0 | 0 | 0 | 0 |

2016 labelled variant records -> `eval/data/revizor_hwlabel_trainpool.jsonl`
