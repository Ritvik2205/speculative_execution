# Minimality of real leaking gadgets (Revizor instruction-removal pass)

Source: `/home/ritvik/rvzr_hwlabel_cf` (173 violation dirs with a minimize status). `body` = non-instrumentation instructions in the measured region; `essential` = those the removal pass could not delete while the violation still reproduced on hardware. `reduction` = 1 - essential/body.

| class | dirs (min ran) | fence pass ran | median body | median essential | median reduction |
|---|---|---|---|---|---|
| L1TF | 60/64 | 62/64 | 16.0 | 2.0 | 88% |
| MDS | 26/33 | 26/33 | 21.0 | 10.5 | 49% |
| SPECTRE_V1 | 44/54 | 44/54 | 18.0 | 5.5 | 69% |
| SPECTRE_V4 | 21/22 | 21/22 | 47 | 14 | 70% |

Total: 151/173 violation dirs had the instruction pass complete. Dirs where it did not run are shown in the fraction, not averaged away.

## Smallest essential count per class

| class | min essential | at body | group |
|---|---|---|---|
| L1TF | 2 | 16 | revizor_l1tf_violation-260811-080043 |
| MDS | 3 | 21 | revizor_mds_violation-260918-150902 |
| SPECTRE_V1 | 4 | 18 | revizor_spectre_v1_violation-260918-175049 |
| SPECTRE_V4 | 7 | 47 | revizor_spectre_v4_violation-260907-191158 |
