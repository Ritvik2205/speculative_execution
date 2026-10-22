# Hardware labels for fenced Revizor variants

`rvzr reproduce` x3 per variant on the i5-8300H, filters OFF. vulnerable = violation in 3/3, mitigated = 0/3. A dir whose unmodified original does not reproduce every time is unstable_original.

| class | variant | vulnerable | mitigated | flaky | error | unstable_original | incomplete |
|---|---|---|---|---|---|---|---|
| L1TF | after_load | 0 | 60 | 0 | 2 | 2 | 0 |
| L1TF | cf_fencepass | 1 | 0 | 0 | 0 | 0 | 0 |
| L1TF | cf_nonleak | 1 | 0 | 0 | 0 | 0 | 0 |
| L1TF | entry | 58 | 1 | 1 | 2 | 2 | 0 |
| L1TF | fence_all | 0 | 59 | 0 | 3 | 2 | 0 |
| L1TF | original | 62 | 0 | 0 | 0 | 2 | 0 |
| L1TF | tail | 59 | 1 | 0 | 2 | 2 | 0 |
| L1TF | twin | 0 | 59 | 0 | 3 | 2 | 0 |
| MDS | after_load | 0 | 33 | 0 | 0 | 0 | 0 |
| MDS | entry | 32 | 1 | 0 | 0 | 0 | 0 |
| MDS | fence_all | 0 | 33 | 0 | 0 | 0 | 0 |
| MDS | original | 33 | 0 | 0 | 0 | 0 | 0 |
| MDS | tail | 32 | 1 | 0 | 0 | 0 | 0 |
| MDS | twin | 0 | 33 | 0 | 0 | 0 | 0 |
| SPECTRE_V1 | cf_fencepass | 3 | 0 | 0 | 0 | 0 | 0 |
| SPECTRE_V1 | cf_nonleak | 3 | 0 | 0 | 0 | 0 | 0 |
| SPECTRE_V1 | cf_wrong_path | 34 | 0 | 4 | 0 | 12 | 0 |
| SPECTRE_V1 | entry | 34 | 3 | 1 | 0 | 12 | 0 |
| SPECTRE_V1 | fence_all | 0 | 42 | 0 | 0 | 12 | 0 |
| SPECTRE_V1 | original | 42 | 0 | 0 | 0 | 12 | 0 |
| SPECTRE_V1 | shifted | 0 | 38 | 0 | 0 | 12 | 0 |
| SPECTRE_V1 | tail | 36 | 0 | 2 | 0 | 12 | 0 |
| SPECTRE_V1 | twin | 0 | 38 | 0 | 0 | 12 | 0 |
| SPECTRE_V1 | v1_fallthrough | 32 | 0 | 6 | 0 | 12 | 0 |
| SPECTRE_V4 | entry | 16 | 2 | 1 | 0 | 3 | 0 |
| SPECTRE_V4 | fence_all | 0 | 19 | 0 | 0 | 3 | 0 |
| SPECTRE_V4 | original | 19 | 0 | 0 | 0 | 3 | 0 |
| SPECTRE_V4 | shifted | 0 | 19 | 0 | 0 | 3 | 0 |
| SPECTRE_V4 | tail | 19 | 0 | 0 | 0 | 3 | 0 |
| SPECTRE_V4 | twin | 0 | 19 | 0 | 0 | 3 | 0 |

821 labelled variant records -> `/home/ritvik/speculative_execution/eval/data/revizor_hwlabel_variants.jsonl`
