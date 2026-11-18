# Second hardware pool

First pool: 1138 pairs from 158 programs. Second pool: 1668 pairs from 215 programs (labels of i5 step 4a, commit `1430d42b` on the `cluster` branch). Programs in both pools: 0.

166 of the 215 second-pool programs are named in the leak/safe training file (`v57_leak_train.jsonl`); for the first pool the count is 0 of 158. The graph model and the opcode models are therefore not scored on the second pool.

Cell: share of pairs where the leaking side scores higher, a tie counting half, with a 95% interval from resampling programs.

| set | pool | pairs | programs | fewer fences | no interior fence | mechanism rule |
|---|---|---|---|---|---|---|
| variants | first | 970 | 154 | 0.665 [0.664, 0.666] | 0.996 [0.993, 0.999] | 0.996 [0.993, 0.999] |
| variants | second | 1360 | 212 | 0.665 [0.664, 0.666] | 0.994 [0.991, 0.997] | 0.994 [0.991, 0.997] |
| counterfactual | first | 76 | 54 | 0.204 [0.108, 0.300] | 0.500 [0.500, 0.500] | 0.671 [0.608, 0.739] |
| counterfactual | second | 157 | 93 | 0.137 [0.088, 0.192] | 0.500 [0.500, 0.500] | 0.605 [0.569, 0.648] |
| nofence | first | 92 | 92 | 0.500 [0.500, 0.500] | 0.500 [0.500, 0.500] | 0.549 [0.522, 0.582] |
| nofence | second | 151 | 151 | 0.500 [0.500, 0.500] | 0.500 [0.500, 0.500] | 0.526 [0.510, 0.543] |
| counterfactual, L1TF | first | 23 | 23 | 0.152 [0.022, 0.304] | 0.500 [0.500, 0.500] | 0.870 [0.783, 0.957] |
| counterfactual, L1TF | second | 18 | 18 | 0.194 [0.028, 0.389] | 0.500 [0.500, 0.500] | 0.833 [0.722, 0.944] |
| counterfactual, MDS | first | 6 | 6 | 0.250 [0.000, 0.583] | 0.500 [0.500, 0.500] | 0.583 [0.500, 0.750] |
| counterfactual, MDS | second | 8 | 8 | 0.188 [0.000, 0.438] | 0.500 [0.500, 0.500] | 0.500 [0.500, 0.500] |
| counterfactual, SPECTRE_V1 | first | 19 | 11 | 0.553 [0.395, 0.719] | 0.500 [0.500, 0.500] | 0.737 [0.605, 0.882] |
| counterfactual, SPECTRE_V1 | second | 23 | 12 | 0.500 [0.405, 0.609] | 0.500 [0.500, 0.500] | 0.870 [0.750, 0.977] |
| counterfactual, SPECTRE_V4 | first | 28 | 14 | 0.000 [0.000, 0.000] | 0.500 [0.500, 0.500] | 0.482 [0.446, 0.500] |
| counterfactual, SPECTRE_V4 | second | 108 | 55 | 0.046 [0.014, 0.087] | 0.500 [0.500, 0.500] | 0.519 [0.500, 0.547] |

## Kinds of pair in the counterfactual sets

| kind (leaking side \| safe side) | first | second |
|---|---|---|
| L1TF: cf_fencepass \| cf_nonleak | 23 | 18 |
| MDS: cf_fencepass \| cf_nonleak | 6 | 8 |
| SPECTRE_V1: cf_fencepass \| cf_nonleak | 8 | 12 |
| SPECTRE_V1: cf_wrong_path \| cf_fencepass | 1 | 0 |
| SPECTRE_V1: cf_wrong_path \| cf_nonleak | 10 | 11 |
| SPECTRE_V4: cf_fencepass \| cf_after_bypass | 14 | 54 |
| SPECTRE_V4: cf_fencepass \| cf_nonleak | 14 | 43 |
| SPECTRE_V4: cf_nonleak \| cf_after_bypass | 0 | 11 |
