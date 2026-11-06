# Real-world scorer report

- data: /Users/ritvikgupta/SpecExec/eval/data/realworld_*.jsonl
- opcode-LR train pool: /Users/ritvikgupta/SpecExec/v54/data/v54_train.jsonl
- model column: none (--bars-only)

Rows loaded 2312; dropped for having no instruction line **0** (of which harness-flagged 0); dropped as dup_of (R17/R25) **285**; headline **1265**; harness (R18, separate) 104; train_overlap (separate) 658. Unscorable by model: 0. Rows on which the mechanism rule abstained in every window/class (whole-function, counted safe): 1434.

Unit (R30): every method, model and bars, predicts per 25-45 window; a function is a leak iff ANY window predicts leak. `*_wholefn` rows are the old whole-function calls (secondary). Remaining asymmetry: benign holdout rows are single windows while attacks span many windows, so any-window rules have more chances to fire on attacks than on benign rows; `wrate` columns give the per-window leak rate (mean over a function's windows, averaged over leak-truth / safe-truth functions) as a length-insensitive view.

Balanced accuracy = mean of leak recall and safe recall over the classes present in the cell; a one-class cell reports that class's recall only (see n_leak/n_safe). CI = 95% cluster bootstrap by family/group; n/a when only one cluster. Bootstrap replicates with no leak or no safe cluster are dropped (the `dropped` column counts them out of the resamples; `dropped` = max over all methods but mechanism_v2_excl, whose own count is `dropped (excl)` -- it has fewer valid rows so it drops more). **Limitation of the per-window rule bar:** `mechanism_v2` runs on each 25-45 window in isolation; a window that cuts the trigger-to-transmitter chain (e.g. MDS/L1TF load at one end, dependent read beyond the window) makes the rule abstain (counted safe, or excluded in `_excl`), so it can miss a leak the whole-function rule (`mechanism_v2_wholefn`) sees. On the current headline the two agree because benign rows are single windows and nearly all multi-window attacks abstain either way. `mitigation_detected` is never used (R12).

## Headline (clean: not harness, not train_overlap, not dup)

| slice | n | leak | safe | groups | dropped | dropped (excl) | always_attack | fence_count | opcode_lr | mechanism_v2 (abstain=safe; NOT comparable to hwlabel) | mechanism_v2_excl (abstain excluded) | fence_count_wholefn | mechanism_v2_wholefn |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| all | 1265 | 43 | 1222 | 22 | 0 | 28 | 0.500 [0.500, 0.500] | 0.482 [0.439, 0.513] | 0.500 [0.500, 0.500] | 0.385 [0.283, 0.490] | 0.502 [0.500, 0.510] (n=489) | 0.483 [0.439, 0.515] | 0.385 [0.283, 0.490] |
| subset=benign | 1200 | 0 | 1200 | 5 | 0 | 0 | 0.000 [0.000, 0.000] | 0.000 [0.000, 0.000] | 0.000 [0.000, 0.000] | 0.603 [0.483, 0.722] | 0.000 [0.000, 0.000] (n=476) | 0.000 [0.000, 0.000] | 0.603 [0.483, 0.722] |
| subset=patch_only | 10 | 5 | 5 | 5 | 0 | 680 | 0.500 [0.500, 0.500] | 0.600 [0.500, 0.800] | 0.500 [0.500, 0.500] | 0.200 [0.000, 0.400] | 0.500 [0.500, 0.500] (n=5) | 0.800 [0.600, 1.000] | 0.200 [0.000, 0.400] |
| subset=poc | 6 | 6 | 0 | 3 | 0 | 0 | 1.000 [1.000, 1.000] | 0.667 [0.500, 1.000] | 1.000 [1.000, 1.000] | 0.667 [0.000, 1.000] | 1.000 [1.000, 1.000] (n=4) | 0.667 [0.500, 1.000] | 0.667 [0.000, 1.000] |
| subset=riscv_artifact | 19 | 19 | 0 | 5 | 0 | 0 | 1.000 [1.000, 1.000] | 1.000 [1.000, 1.000] | 1.000 [1.000, 1.000] | 0.000 [0.000, 0.000] | n/a n/a (n=0) | 1.000 [1.000, 1.000] | 0.000 [0.000, 0.000] |
| subset=vendor | 30 | 13 | 17 | 4 | 0 | 623 | 0.500 [0.500, 0.500] | 0.853 [0.722, 1.000] | 0.500 [0.500, 0.500] | 0.577 [0.500, 0.700] | 1.000 [1.000, 1.000] (n=4) | 0.853 [0.722, 1.000] | 0.577 [0.500, 0.700] |
| family=V1 branch | 42 | 25 | 17 | 10 | 0 | 718 | 0.500 [0.500, 0.500] | 0.765 [0.500, 0.905] | 0.500 [0.500, 0.500] | 0.402 [0.068, 0.487] | 0.500 [0.500, 0.500] (n=5) | 0.824 [0.700, 1.000] | 0.402 [0.068, 0.487] |
| family=V4 store-bypass | 8 | 4 | 4 | 1 | 0 | 0 | 0.500 n/a | 1.000 n/a | 0.500 n/a | 0.750 n/a | 1.000 n/a (n=4) | 1.000 n/a | 0.750 n/a |
| family=fault/assist | 4 | 4 | 0 | 2 | 0 | 0 | 1.000 [1.000, 1.000] | 0.500 [0.500, 0.500] | 1.000 [1.000, 1.000] | 1.000 [1.000, 1.000] | 1.000 [1.000, 1.000] | 0.500 [0.500, 0.500] | 1.000 [1.000, 1.000] |
| family=other | 11 | 10 | 1 | 4 | 623 | 0 | 0.500 [0.500, 0.500] | 0.500 [0.500, 0.500] | 0.500 [0.500, 0.500] | 0.500 [0.500, 0.500] | n/a n/a (n=0) | 0.500 [0.500, 0.500] | 0.500 [0.500, 0.500] |
| family=safe-unpaired | 1200 | 0 | 1200 | 5 | 0 | 0 | 0.000 [0.000, 0.000] | 0.000 [0.000, 0.000] | 0.000 [0.000, 0.000] | 0.603 [0.483, 0.722] | 0.000 [0.000, 0.000] (n=476) | 0.000 [0.000, 0.000] | 0.603 [0.483, 0.722] |
| arch=riscv64 | 219 | 19 | 200 | 6 | 656 | 0 | 0.500 [0.500, 0.500] | 0.500 [0.500, 0.500] | 0.500 [0.500, 0.500] | 0.500 [0.500, 0.500] | n/a n/a (n=0) | 0.500 [0.500, 0.500] | 0.500 [0.500, 0.500] |
| arch=x86_64 | 1046 | 24 | 1022 | 17 | 0 | 25 | 0.500 [0.500, 0.500] | 0.465 [0.395, 0.512] | 0.500 [0.500, 0.500] | 0.411 [0.300, 0.551] | 0.502 [0.500, 0.511] (n=489) | 0.466 [0.397, 0.514] | 0.411 [0.300, 0.551] |

Per-window leak rate (headline): mean over functions of the fraction of windows predicted leak; first value over leak-truth functions, second over safe-truth.

| slice | always_attack | fence_count | opcode_lr | mechanism_v2 | mechanism_v2_excl |
|---|---|---|---|---|---|
| all | 1.000 / 1.000 | 0.953 / 0.989 | 0.999 / 1.000 | 0.141 / 0.391 | 1.000 / 0.996 |
| subset=benign | n/a / 1.000 | n/a / 1.000 | n/a / 1.000 | n/a / 0.397 | n/a / 1.000 |
| subset=patch_only | 1.000 / 1.000 | 1.000 / 0.713 | 1.000 / 1.000 | 0.015 / 0.444 | 1.000 / 1.000 |
| subset=poc | 1.000 / n/a | 0.667 / n/a | 1.000 / n/a | 0.667 / n/a | 1.000 / n/a |
| subset=riscv_artifact | 1.000 / n/a | 1.000 / n/a | 0.998 / n/a | 0.000 / n/a | n/a / n/a |
| subset=vendor | 1.000 / 1.000 | 1.000 / 0.294 | 1.000 / 1.000 | 0.154 / 0.000 | 1.000 / 0.000 |
| family=V1 branch | 1.000 / 1.000 | 1.000 / 0.445 | 0.998 / 1.000 | 0.003 / 0.131 | 1.000 / 1.000 |
| family=V4 store-bypass | 1.000 / 1.000 | 1.000 / 0.000 | 1.000 / 1.000 | 0.500 / 0.000 | 1.000 / 0.000 |
| family=fault/assist | 1.000 / n/a | 0.500 / n/a | 1.000 / n/a | 1.000 / n/a | 1.000 / n/a |
| family=other | 1.000 / 1.000 | 1.000 / 1.000 | 1.000 / 1.000 | 0.000 / 0.000 | n/a / n/a |
| family=safe-unpaired | n/a / 1.000 | n/a / 1.000 | n/a / 1.000 | n/a / 0.397 | n/a / 1.000 |
| arch=riscv64 | 1.000 / 1.000 | 1.000 / 1.000 | 0.998 / 1.000 | 0.000 / 0.000 | n/a / n/a |
| arch=x86_64 | 1.000 / 1.000 | 0.917 / 0.987 | 1.000 / 1.000 | 0.253 / 0.468 | 1.000 / 0.996 |

## Harness rows (R18) -- NOT headline

| slice | n | leak | safe | groups | dropped | dropped (excl) | always_attack | fence_count | opcode_lr | mechanism_v2 (abstain=safe; NOT comparable to hwlabel) | mechanism_v2_excl (abstain excluded) | fence_count_wholefn | mechanism_v2_wholefn |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| all | 104 | 86 | 18 | 34 | 9 | 0 | 0.500 [0.500, 0.500] | 0.488 [0.471, 0.500] | 0.663 [0.617, 0.706] | 0.721 [0.626, 0.822] | 0.974 [0.914, 1.000] (n=39) | 0.320 [0.223, 0.408] | 0.721 [0.626, 0.822] |
| subset=poc | 95 | 77 | 18 | 25 | 8 | 0 | 0.500 [0.500, 0.500] | 0.487 [0.469, 0.500] | 0.666 [0.614, 0.711] | 0.747 [0.632, 0.852] | 0.974 [0.917, 1.000] (n=39) | 0.299 [0.191, 0.400] | 0.747 [0.632, 0.852] |
| subset=riscv_artifact | 9 | 9 | 0 | 9 | 0 | 0 | 1.000 [1.000, 1.000] | 1.000 [1.000, 1.000] | 0.778 [0.444, 1.000] | 0.000 [0.000, 0.000] | n/a n/a (n=0) | 1.000 [1.000, 1.000] | 0.000 [0.000, 0.000] |
| family=V1 branch | 2 | 2 | 0 | 2 | 0 | 0 | 1.000 [1.000, 1.000] | 1.000 [1.000, 1.000] | 0.500 [0.000, 1.000] | 0.000 [0.000, 0.000] | n/a n/a (n=0) | 1.000 [1.000, 1.000] | 0.000 [0.000, 0.000] |
| family=V4 store-bypass | 2 | 2 | 0 | 2 | 0 | 0 | 1.000 [1.000, 1.000] | 1.000 [1.000, 1.000] | 0.500 [0.000, 1.000] | 0.000 [0.000, 0.000] | n/a n/a (n=0) | 1.000 [1.000, 1.000] | 0.000 [0.000, 0.000] |
| family=fault/assist | 43 | 43 | 0 | 13 | 0 | 0 | 1.000 [1.000, 1.000] | 0.953 [0.891, 1.000] | 1.000 [1.000, 1.000] | 0.884 [0.757, 0.962] | 0.974 [0.917, 1.000] (n=39) | 0.279 [0.100, 0.500] | 0.884 [0.757, 0.962] |
| family=other | 57 | 39 | 18 | 17 | 4 | 0 | 0.500 [0.500, 0.500] | 0.500 [0.500, 0.500] | 0.583 [0.534, 0.641] | 0.500 [0.500, 0.500] | n/a n/a (n=0) | 0.500 [0.500, 0.500] | 0.500 [0.500, 0.500] |
| arch=arm64 | 1 | 1 | 0 | 1 | 0 | 0 | 1.000 n/a | 1.000 n/a | 1.000 n/a | 0.000 n/a | n/a n/a (n=0) | 1.000 n/a | 0.000 n/a |
| arch=riscv64 | 9 | 9 | 0 | 9 | 0 | 0 | 1.000 [1.000, 1.000] | 1.000 [1.000, 1.000] | 0.778 [0.444, 1.000] | 0.000 [0.000, 0.000] | n/a n/a (n=0) | 1.000 [1.000, 1.000] | 0.000 [0.000, 0.000] |
| arch=x86_64 | 94 | 76 | 18 | 24 | 5 | 0 | 0.500 [0.500, 0.500] | 0.487 [0.467, 0.500] | 0.664 [0.612, 0.713] | 0.750 [0.639, 0.863] | 0.974 [0.917, 1.000] (n=39) | 0.296 [0.184, 0.402] | 0.750 [0.639, 0.863] |

Per-window leak rate (harness): mean over functions of the fraction of windows predicted leak; first value over leak-truth functions, second over safe-truth.

| slice | always_attack | fence_count | opcode_lr | mechanism_v2 | mechanism_v2_excl |
|---|---|---|---|---|---|
| all | 1.000 / 1.000 | 0.792 / 1.000 | 0.826 / 0.500 | 0.277 / 0.000 | 0.973 / n/a |
| subset=poc | 1.000 / 1.000 | 0.768 / 1.000 | 0.831 / 0.500 | 0.310 / 0.000 | 0.973 / n/a |
| subset=riscv_artifact | 1.000 / n/a | 1.000 / n/a | 0.778 / n/a | 0.000 / n/a | n/a / n/a |
| family=V1 branch | 1.000 / n/a | 1.000 / n/a | 0.500 / n/a | 0.000 / n/a | n/a / n/a |
| family=V4 store-bypass | 1.000 / n/a | 1.000 / n/a | 0.500 / n/a | 0.000 / n/a | n/a / n/a |
| family=fault/assist | 1.000 / n/a | 0.585 / n/a | 1.000 / n/a | 0.555 / n/a | 0.973 / n/a |
| family=other | 1.000 / 1.000 | 1.000 / 1.000 | 0.667 / 0.500 | 0.000 / 0.000 | n/a / n/a |
| arch=arm64 | 1.000 / n/a | 1.000 / n/a | 1.000 / n/a | 0.000 / n/a | n/a / n/a |
| arch=riscv64 | 1.000 / n/a | 1.000 / n/a | 0.778 / n/a | 0.000 / n/a | n/a / n/a |
| arch=x86_64 | 1.000 / 1.000 | 0.765 / 1.000 | 0.829 / 0.500 | 0.314 / 0.000 | 0.973 / n/a |

## train_overlap rows -- NOT headline

| slice | n | leak | safe | groups | dropped | dropped (excl) | always_attack | fence_count | opcode_lr | mechanism_v2 (abstain=safe; NOT comparable to hwlabel) | mechanism_v2_excl (abstain excluded) | fence_count_wholefn | mechanism_v2_wholefn |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| all | 658 | 411 | 247 | 39 | 0 | 0 | 0.500 [0.500, 0.500] | 0.611 [0.595, 0.628] | 0.501 [0.463, 0.543] | 0.517 [0.490, 0.556] | 0.500 [0.500, 0.500] (n=65) | 0.609 [0.591, 0.626] | 0.517 [0.490, 0.556] |
| subset=benchmark | 648 | 401 | 247 | 34 | 0 | 0 | 0.500 [0.500, 0.500] | 0.611 [0.594, 0.628] | 0.499 [0.460, 0.541] | 0.514 [0.486, 0.555] | 0.500 [0.500, 0.500] (n=61) | 0.611 [0.594, 0.628] | 0.514 [0.486, 0.555] |
| subset=poc | 10 | 10 | 0 | 5 | 0 | 0 | 1.000 [1.000, 1.000] | 1.000 [1.000, 1.000] | 1.000 [1.000, 1.000] | 0.400 [0.000, 0.800] | 1.000 [1.000, 1.000] (n=4) | 0.800 [0.400, 1.000] | 0.400 [0.000, 0.800] |
| family=V1 branch | 568 | 329 | 239 | 16 | 0 | 0 | 0.500 [0.500, 0.500] | 0.615 [0.599, 0.632] | 0.502 [0.460, 0.548] | 0.473 [0.467, 0.479] | 0.000 [0.000, 0.000] (n=13) | 0.615 [0.599, 0.632] | 0.473 [0.467, 0.479] |
| family=V4 store-bypass | 84 | 76 | 8 | 20 | 17 | 17 | 0.500 [0.500, 0.500] | 0.500 [0.500, 0.500] | 0.408 [0.352, 0.469] | 0.414 [0.238, 0.556] | 0.500 [0.500, 0.500] (n=50) | 0.500 [0.500, 0.500] | 0.414 [0.238, 0.556] |
| family=fault/assist | 2 | 2 | 0 | 1 | 0 | 0 | 1.000 n/a | 1.000 n/a | 1.000 n/a | 1.000 n/a | 1.000 n/a | 0.000 n/a | 1.000 n/a |
| family=other | 4 | 4 | 0 | 2 | 0 | 0 | 1.000 [1.000, 1.000] | 1.000 [1.000, 1.000] | 1.000 [1.000, 1.000] | 0.000 [0.000, 0.000] | n/a n/a (n=0) | 1.000 [1.000, 1.000] | 0.000 [0.000, 0.000] |
| arch=riscv64 | 206 | 142 | 64 | 20 | 0 | 0 | 0.500 [0.500, 0.500] | 0.500 [0.500, 0.500] | 0.597 [0.498, 0.688] | 0.500 [0.500, 0.500] | n/a n/a (n=0) | 0.500 [0.500, 0.500] | 0.500 [0.500, 0.500] |
| arch=x86_64 | 452 | 269 | 183 | 39 | 0 | 0 | 0.500 [0.500, 0.500] | 0.650 [0.632, 0.667] | 0.500 [0.500, 0.500] | 0.534 [0.494, 0.589] | 0.500 [0.500, 0.500] (n=65) | 0.647 [0.625, 0.664] | 0.534 [0.494, 0.589] |

Per-window leak rate (train_overlap): mean over functions of the fraction of windows predicted leak; first value over leak-truth functions, second over safe-truth.

| slice | always_attack | fence_count | opcode_lr | mechanism_v2 | mechanism_v2_excl |
|---|---|---|---|---|---|
| all | 1.000 / 1.000 | 0.998 / 0.777 | 0.805 / 0.806 | 0.106 / 0.075 | 1.000 / 1.000 |
| subset=benchmark | 1.000 / 1.000 | 1.000 / 0.777 | 0.800 / 0.806 | 0.103 / 0.075 | 1.000 / 1.000 |
| subset=poc | 1.000 / n/a | 0.912 / n/a | 1.000 / n/a | 0.198 / n/a | 1.000 / n/a |
| family=V1 branch | 1.000 / 1.000 | 1.000 / 0.770 | 0.802 / 0.799 | 0.000 / 0.052 | n/a / 1.000 |
| family=V4 store-bypass | 1.000 / 1.000 | 1.000 / 1.000 | 0.803 / 1.000 | 0.556 / 0.750 | 1.000 / 1.000 |
| family=fault/assist | 1.000 / n/a | 0.562 / n/a | 1.000 / n/a | 0.625 / n/a | 1.000 / n/a |
| family=other | 1.000 / n/a | 1.000 / n/a | 1.000 / n/a | 0.000 / n/a | n/a / n/a |
| arch=riscv64 | 1.000 / 1.000 | 1.000 / 1.000 | 0.437 / 0.250 | 0.000 / 0.000 | n/a / n/a |
| arch=x86_64 | 1.000 / 1.000 | 0.997 / 0.699 | 1.000 / 1.000 | 0.162 / 0.101 | 1.000 / 1.000 |

## patched_window (Linux fix-commit pairs, R29)

Each side scored by max over its 25-45 windows overlapping a difflib-differing instruction (5 pairs, 10 sides, 144 patched windows). pre = leak, post = safe. Cluster = pair.

| method | bal acc | 95% CI | dropped |
|---|---|---|---|
| always_attack | 0.500 | [0.500, 0.500] | 0 |
| fence_count | 0.700 | [0.500, 0.900] | 0 |
| mechanism_v2 (abstain=safe; NOT comparable to hwlabel) | 0.500 | [0.500, 0.500] | 0 |
| mechanism_v2_excl (abstain excluded) | 0.500 | [0.500, 0.500] | 680 |
| opcode_lr | 0.500 | [0.500, 0.500] | 0 |
