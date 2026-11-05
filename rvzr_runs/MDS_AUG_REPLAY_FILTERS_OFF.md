# Hardware labels for fenced Revizor variants

`rvzr reproduce` x3 per variant on the i5-8300H, filters OFF. vulnerable = violation in 3/3, mitigated = 0/3. A dir whose unmodified original does not reproduce every time is unstable_original.

| class | variant | vulnerable | mitigated | flaky | error | unstable_original | incomplete |
|---|---|---|---|---|---|---|---|
| MDS | fence_all | 0 | 5 | 0 | 0 | 1 | 0 |
| MDS | original | 5 | 0 | 0 | 0 | 1 | 0 |

5 labelled variant records -> `eval/data/revizor_hwlabel_mds_aug_replay.jsonl`
