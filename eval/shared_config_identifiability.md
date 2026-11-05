# Shared-config class identifiability (non-learned bars)

Seed-grouped 5-fold CV, repeated; balanced accuracy, mean ± sd. Below-chance means no signal: held-out seed groups are single-class.

## MDS vs L1TF (chance 0.50; n = MDS 66, L1TF 64)

| features | LR | RF |
|---|---|---|
| bag | 0.421 ± 0.044 | 0.338 ± 0.091 |
| bigram | 0.315 ± 0.114 | 0.303 ± 0.108 |
| struct | 0.409 ± 0.042 | 0.329 ± 0.090 |
| all | 0.358 ± 0.100 | 0.335 ± 0.104 |

## MDS vs L1TF vs SPECTRE_V4 (chance 0.33; n = MDS 66, L1TF 64, SPECTRE_V4 7)

| features | LR | RF |
|---|---|---|
| bag | 0.275 ± 0.035 | 0.237 ± 0.065 |
| bigram | 0.239 ± 0.049 | 0.203 ± 0.055 |
| struct | 0.259 ± 0.033 | 0.239 ± 0.052 |
| all | 0.261 ± 0.040 | 0.216 ± 0.066 |
