# Hardware labels for fenced Revizor variants

`rvzr reproduce` x3 per variant on the i5-8300H, filters OFF. vulnerable = violation in 3/3, mitigated = 0/3. A dir whose unmodified original does not reproduce every time is unstable_original.

| class | variant | vulnerable | mitigated | flaky | error | unstable_original | incomplete |
|---|---|---|---|---|---|---|---|
| L1TF | after_load | 0 | 63 | 0 | 0 | 1 | 0 |
| L1TF | entry | 63 | 0 | 0 | 0 | 1 | 0 |
| L1TF | fence_all | 0 | 63 | 0 | 0 | 1 | 0 |
| L1TF | original | 63 | 0 | 0 | 0 | 1 | 0 |
| L1TF | tail | 62 | 0 | 1 | 0 | 1 | 0 |
| L1TF | twin | 0 | 63 | 0 | 0 | 1 | 0 |
| MDS | after_load | 0 | 33 | 0 | 0 | 0 | 0 |
| MDS | entry | 32 | 1 | 0 | 0 | 0 | 0 |
| MDS | fence_all | 0 | 33 | 0 | 0 | 0 | 0 |
| MDS | original | 33 | 0 | 0 | 0 | 0 | 0 |
| MDS | tail | 32 | 1 | 0 | 0 | 0 | 0 |
| MDS | twin | 0 | 33 | 0 | 0 | 0 | 0 |
| SPECTRE_V1 | entry | 31 | 3 | 7 | 0 | 9 | 0 |
| SPECTRE_V1 | fence_all | 0 | 45 | 0 | 0 | 9 | 0 |
| SPECTRE_V1 | original | 45 | 0 | 0 | 0 | 9 | 0 |
| SPECTRE_V1 | shifted | 0 | 41 | 0 | 0 | 9 | 0 |
| SPECTRE_V1 | tail | 31 | 0 | 10 | 0 | 9 | 0 |
| SPECTRE_V1 | twin | 0 | 41 | 0 | 0 | 9 | 0 |
| SPECTRE_V1 | v1_fallthrough | 32 | 0 | 9 | 0 | 9 | 0 |
| SPECTRE_V4 | entry | 17 | 2 | 2 | 0 | 1 | 0 |
| SPECTRE_V4 | fence_all | 0 | 21 | 0 | 0 | 1 | 0 |
| SPECTRE_V4 | original | 21 | 0 | 0 | 0 | 1 | 0 |
| SPECTRE_V4 | shifted | 0 | 21 | 0 | 0 | 1 | 0 |
| SPECTRE_V4 | tail | 21 | 0 | 0 | 0 | 1 | 0 |
| SPECTRE_V4 | twin | 0 | 21 | 0 | 0 | 1 | 0 |

806 labelled variant records -> `/home/ritvik/speculative_execution/eval/data/revizor_hwlabel_variants.jsonl`
