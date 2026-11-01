# Minimality of real leaking gadgets (Revizor instruction-removal pass)

Source: `/home/ritvik/rvzr_hwlabel_cf` (173 violation dirs with a minimize status). `body` = non-instrumentation instructions in the measured region; `essential` = those the removal pass could not delete while the violation still reproduced on hardware. `reduction` = 1 - essential/body.

| class | dirs (min ran) | fence pass ran | median body | median essential | median reduction |
|---|---|---|---|---|---|
| L1TF | 1/64 | 1/64 | 16 | 4 | 75% |
| MDS | 0/33 | 0/33 | n/a | n/a | n/a |
| SPECTRE_V1 | 3/54 | 3/54 | 18 | 8 | 56% |
| SPECTRE_V4 | 0/22 | 0/22 | n/a | n/a | n/a |

Total: 4/173 violation dirs had the instruction pass complete. Dirs where it did not run are shown in the fraction, not averaged away.

## Smallest essential count per class

| class | min essential | at body | group |
|---|---|---|---|
| L1TF | 4 | 16 | revizor_l1tf_violation-260918-172853 |
| MDS | n/a | | |
| SPECTRE_V1 | 4 | 18 | revizor_spectre_v1_violation-260918-175049 |
| SPECTRE_V4 | n/a | | |
