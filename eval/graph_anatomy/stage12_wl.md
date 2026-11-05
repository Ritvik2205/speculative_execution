## WL / graph-structure probes


### shared: MDS vs L1TF  (n=130: {np.str_('MDS'): 66, np.str_('L1TF'): 64}; chance 0.50)

| features | grouping | clf | bal. acc (mean±sd, 5 reps) | null mean / 95th pct | p |
|---|---|---|---|---|---|
| WL cat | seed_group | lr | 0.421 ± 0.020 | 0.397 / 0.521 | 0.433 |
| WL cat | seed_group | svm | 0.430 ± 0.023 | 0.401 / 0.523 | 0.378 |
| WL cat | raw_seed | lr | 0.579 ± 0.036 | 0.394 / 0.516 | 0.015 |
| WL cat | raw_seed | svm | 0.576 ± 0.036 | 0.398 / 0.515 | 0.015 |
| WL cat+mem | seed_group | lr | 0.376 ± 0.036 | 0.408 / 0.537 | 0.662 |
| WL cat+mem | seed_group | svm | 0.379 ± 0.033 | 0.412 / 0.544 | 0.662 |
| WL cat+mem | raw_seed | lr | 0.522 ± 0.055 | 0.410 / 0.538 | 0.085 |
| WL cat+mem | raw_seed | svm | 0.519 ± 0.058 | 0.413 / 0.539 | 0.090 |
| WL full node feats | seed_group | lr | 0.376 ± 0.036 | 0.408 / 0.537 | 0.662 |
| WL full node feats | seed_group | svm | 0.379 ± 0.033 | 0.412 / 0.544 | 0.662 |
| WL full node feats | raw_seed | lr | 0.522 ± 0.055 | 0.410 / 0.538 | 0.085 |
| WL full node feats | raw_seed | svm | 0.519 ± 0.058 | 0.413 / 0.539 | 0.090 |
| WL cat+mem, no CONTROL_FLOW | seed_group | lr | 0.411 ± 0.048 | 0.441 / 0.554 | 0.667 |
| WL cat+mem, no CONTROL_FLOW | seed_group | svm | 0.419 ± 0.045 | 0.444 / 0.560 | 0.662 |
| WL cat+mem, no CONTROL_FLOW | raw_seed | lr | 0.537 ± 0.047 | 0.439 / 0.553 | 0.085 |
| WL cat+mem, no CONTROL_FLOW | raw_seed | svm | 0.537 ± 0.044 | 0.442 / 0.560 | 0.090 |
| graph stats vector | seed_group | lr | 0.463 ± 0.027 | 0.491 / 0.584 | 0.682 |
| graph stats vector | seed_group | svm | 0.472 ± 0.028 | 0.492 / 0.577 | 0.652 |
| graph stats vector | raw_seed | lr | 0.478 ± 0.033 | 0.496 / 0.601 | 0.567 |
| graph stats vector | raw_seed | svm | 0.476 ± 0.028 | 0.497 / 0.601 | 0.622 |

### shared: MDS / L1TF / V4  (n=137: {np.str_('MDS'): 66, np.str_('L1TF'): 64, np.str_('SPECTRE_V4'): 7}; chance 0.33)

| features | grouping | clf | bal. acc (mean±sd, 5 reps) | null mean / 95th pct | p |
|---|---|---|---|---|---|
| WL cat | seed_group | lr | 0.278 ± 0.051 | 0.245 / 0.335 | 0.299 |
| WL cat | seed_group | svm | 0.206 ± 0.050 | 0.226 / 0.328 | 0.637 |
| WL cat | raw_seed | lr | 0.397 ± 0.012 | 0.254 / 0.331 | 0.005 |
| WL cat | raw_seed | svm | 0.386 ± 0.019 | 0.232 / 0.328 | 0.005 |
| WL cat+mem | seed_group | lr | 0.261 ± 0.061 | 0.250 / 0.352 | 0.403 |
| WL cat+mem | seed_group | svm | 0.211 ± 0.046 | 0.226 / 0.324 | 0.602 |
| WL cat+mem | raw_seed | lr | 0.352 ± 0.017 | 0.253 / 0.342 | 0.045 |
| WL cat+mem | raw_seed | svm | 0.349 ± 0.024 | 0.233 / 0.323 | 0.015 |
| WL full node feats | seed_group | lr | 0.261 ± 0.061 | 0.250 / 0.352 | 0.403 |
| WL full node feats | seed_group | svm | 0.211 ± 0.046 | 0.226 / 0.324 | 0.602 |
| WL full node feats | raw_seed | lr | 0.352 ± 0.017 | 0.253 / 0.342 | 0.045 |
| WL full node feats | raw_seed | svm | 0.349 ± 0.024 | 0.233 / 0.323 | 0.015 |
| graph stats vector | seed_group | lr | 0.346 ± 0.024 | 0.319 / 0.402 | 0.284 |
| graph stats vector | seed_group | svm | 0.347 ± 0.036 | 0.303 / 0.397 | 0.209 |
| graph stats vector | raw_seed | lr | 0.357 ± 0.023 | 0.321 / 0.422 | 0.249 |
| graph stats vector | raw_seed | svm | 0.352 ± 0.049 | 0.306 / 0.400 | 0.184 |

### real per-class cfg: MDS vs L1TF  (n=389: {np.str_('MDS'): 160, np.str_('L1TF'): 229}; chance 0.50)

| features | grouping | clf | bal. acc (mean±sd, 5 reps) | null mean / 95th pct | p |
|---|---|---|---|---|---|
| WL cat+mem | seed_group | lr | 0.994 ± 0.001 | 0.492 / 0.594 | 0.020 |
| WL cat+mem, no CONTROL_FLOW | seed_group | lr | 0.995 ± 0.001 | 0.496 / 0.591 | 0.020 |
| graph stats vector | seed_group | lr | 0.996 ± 0.002 | 0.492 / 0.558 | 0.020 |

### synth x86: MDS vs L1TF  (n=403: {np.str_('L1TF'): 197, np.str_('MDS'): 206}; chance 0.50)

| features | grouping | clf | bal. acc (mean±sd, 5 reps) | null mean / 95th pct | p |
|---|---|---|---|---|---|
| WL full node feats | seed_group | lr | 0.886 ± 0.009 | 0.500 / 0.572 | 0.020 |
| WL cat+mem | seed_group | lr | 0.863 ± 0.010 | 0.501 / 0.571 | 0.020 |
| WL full, triggers stripped | seed_group | lr | 0.867 ± 0.006 | 0.503 / 0.574 | 0.020 |
| WL cat+mem, triggers stripped, no CONTROL_FLOW | seed_group | lr | 0.868 ± 0.006 | 0.501 / 0.584 | 0.020 |
| trigger counts only | seed_group | lr | 0.700 ± 0.003 | 0.504 / 0.596 | 0.020 |
| graph stats vector | seed_group | lr | 0.910 ± 0.008 | 0.501 / 0.564 | 0.020 |

### synth x86: MDS / L1TF / V4  (n=667: {np.str_('SPECTRE_V4'): 264, np.str_('L1TF'): 197, np.str_('MDS'): 206}; chance 0.33)

| features | grouping | clf | bal. acc (mean±sd, 5 reps) | null mean / 95th pct | p |
|---|---|---|---|---|---|
| WL full node feats | seed_group | lr | 0.921 ± 0.012 | 0.322 / 0.478 | 0.020 |
| WL cat+mem | seed_group | lr | 0.897 ± 0.012 | 0.323 / 0.468 | 0.020 |
| WL full, triggers stripped | seed_group | lr | 0.907 ± 0.007 | 0.320 / 0.461 | 0.020 |
| WL cat+mem, triggers stripped, no CONTROL_FLOW | seed_group | lr | 0.900 ± 0.004 | 0.325 / 0.478 | 0.020 |
| trigger counts only | seed_group | lr | 0.777 ± 0.003 | 0.339 / 0.490 | 0.020 |
| graph stats vector | seed_group | lr | 0.937 ± 0.005 | 0.327 / 0.472 | 0.020 |

### synth x86 MDS vs L1TF — top node labels (WL iteration 0, std. LR weights)

- **L1TF**: `0:COMPARE|NONE|` +2.52; `0:BRANCH_COND|NONE|is_branch` +1.74; `0:SHIFT|NONE|` +1.25; `0:LOAD|STACK|is_memory_access` +1.06; `0:STORE|HEAP|is_memory_access` +1.01; `0:FENCE|NONE|is_serializing,is_lfence` +0.92; `0:STORE|NONE|is_memory_access` +0.84; `0:ARITHMETIC|INDEXED|` +0.53
- **MDS**: `0:OTHER|HEAP|is_verw` +2.81; `0:LOAD|HEAP|is_memory_access` +2.23; `0:LOGIC|NONE|` +1.94; `0:FENCE|NONE|is_serializing` +1.90; `0:ARITHMETIC|HEAP|` +1.46; `0:RET|NONE|is_branch` +1.16; `0:LOGIC|STACK|` +0.97; `0:FENCE|NONE|is_serializing,is_mfence_or_sfence` +0.95
