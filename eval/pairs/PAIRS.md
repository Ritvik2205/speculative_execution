# Pair benchmark

Each pair: a leaking sequence and a non-leaking one that share everything except the property. Cell = `auc | wins / ties | auc averaged per program`; auc is the share of pairs where the leaking side scores higher, a tie counting half. 0.5 = cannot tell.
Trained scorers: v57 leak/safe training split, 1 seed(s) (deterministic at this size).

## Summary (auc)

| set | pairs | length | shorter | fewer fences | no interior fence | mechanism rule | opcode counts, boosted (v57) | opcode counts + bigrams, boosted (v57) |
|---|---|---|---|---|---|---|---|---|
| counterfactual all | 76 | 0.796 | 0.204 | 0.204 | 0.500 | 0.671 | 0.500 | 0.474 |
| injected all | 982 | 0.504 | 0.496 | 0.682 | 0.682 | 0.500 | 0.324 | 0.352 |
| injected fence | 357 | 0.000 | 1.000 | 1.000 | 1.000 | 0.500 | 0.000 | 0.000 |
| injected inject | 364 | 1.000 | 0.000 | 0.500 | 0.500 | 0.500 | 0.515 | 0.563 |
| injected reorder | 261 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.538 |
| linux all | 105 | 0.090 | 0.910 | 0.510 | 0.510 | 0.510 | 0.519 | 0.371 |
| linux_arm64 all | 85 | 0.047 | 0.953 | 0.965 | 0.500 | 0.500 | 0.500 | 0.512 |
| nofence all | 92 | 0.511 | 0.489 | 0.500 | 0.500 | 0.549 | 0.538 | 0.511 |
| variants all | 970 | 0.335 | 0.665 | 0.665 | 0.996 | 0.996 | 0.500 | 0.492 |

## counterfactual — L1TF (23 pairs, 23 programs)

| scorer | auc | wins / ties | auc per program |
|---|---|---|---|
| length | 0.848 | 0.83 / 0.04 | 0.848 |
| shorter | 0.152 | 0.13 / 0.04 | 0.152 |
| fewer fences | 0.152 | 0.13 / 0.04 | 0.152 |
| no interior fence | 0.500 | 0.00 / 1.00 | 0.500 |
| mechanism rule | 0.870 | 0.74 / 0.26 | 0.870 |
| opcode counts, boosted (v57) | 0.500 | 0.00 / 1.00 | 0.500 |
| opcode counts + bigrams, boosted (v57) | 0.500 | 0.00 / 1.00 | 0.500 |

| at cutoff 0.5 | leak recall | safe specificity | both sides right |
|---|---|---|---|
| opcode counts, boosted (v57) | 1.000 | 0.000 | 0.000 |
| opcode counts + bigrams, boosted (v57) | 1.000 | 0.000 | 0.000 |

## counterfactual — MDS (6 pairs, 6 programs)

| scorer | auc | wins / ties | auc per program |
|---|---|---|---|
| length | 0.750 | 0.67 / 0.17 | 0.750 |
| shorter | 0.250 | 0.17 / 0.17 | 0.250 |
| fewer fences | 0.250 | 0.17 / 0.17 | 0.250 |
| no interior fence | 0.500 | 0.00 / 1.00 | 0.500 |
| mechanism rule | 0.583 | 0.17 / 0.83 | 0.583 |
| opcode counts, boosted (v57) | 0.500 | 0.00 / 1.00 | 0.500 |
| opcode counts + bigrams, boosted (v57) | 0.500 | 0.00 / 1.00 | 0.500 |

| at cutoff 0.5 | leak recall | safe specificity | both sides right |
|---|---|---|---|
| opcode counts, boosted (v57) | 1.000 | 0.000 | 0.000 |
| opcode counts + bigrams, boosted (v57) | 1.000 | 0.000 | 0.000 |

## counterfactual — SPECTRE_V1 (19 pairs, 11 programs)

| scorer | auc | wins / ties | auc per program |
|---|---|---|---|
| length | 0.447 | 0.37 / 0.16 | 0.432 |
| shorter | 0.553 | 0.47 / 0.16 | 0.568 |
| fewer fences | 0.553 | 0.47 / 0.16 | 0.568 |
| no interior fence | 0.500 | 0.00 / 1.00 | 0.500 |
| mechanism rule | 0.737 | 0.47 / 0.53 | 0.750 |
| opcode counts, boosted (v57) | 0.500 | 0.00 / 1.00 | 0.500 |
| opcode counts + bigrams, boosted (v57) | 0.500 | 0.00 / 1.00 | 0.500 |

| at cutoff 0.5 | leak recall | safe specificity | both sides right |
|---|---|---|---|
| opcode counts, boosted (v57) | 1.000 | 0.000 | 0.000 |
| opcode counts + bigrams, boosted (v57) | 1.000 | 0.000 | 0.000 |

## counterfactual — SPECTRE_V4 (28 pairs, 14 programs)

| scorer | auc | wins / ties | auc per program |
|---|---|---|---|
| length | 1.000 | 1.00 / 0.00 | 1.000 |
| shorter | 0.000 | 0.00 / 0.00 | 0.000 |
| fewer fences | 0.000 | 0.00 / 0.00 | 0.000 |
| no interior fence | 0.500 | 0.00 / 1.00 | 0.500 |
| mechanism rule | 0.482 | 0.00 / 0.96 | 0.482 |
| opcode counts, boosted (v57) | 0.500 | 0.00 / 1.00 | 0.500 |
| opcode counts + bigrams, boosted (v57) | 0.429 | 0.00 / 0.86 | 0.429 |

| at cutoff 0.5 | leak recall | safe specificity | both sides right |
|---|---|---|---|
| opcode counts, boosted (v57) | 1.000 | 0.000 | 0.000 |
| opcode counts + bigrams, boosted (v57) | 1.000 | 0.000 | 0.000 |

## counterfactual — all (76 pairs, 54 programs)

| scorer | auc | wins / ties | auc per program |
|---|---|---|---|
| length | 0.796 | 0.76 / 0.07 | 0.792 |
| shorter | 0.204 | 0.17 / 0.07 | 0.208 |
| fewer fences | 0.204 | 0.17 / 0.07 | 0.208 |
| no interior fence | 0.500 | 0.00 / 1.00 | 0.500 |
| mechanism rule | 0.671 | 0.36 / 0.63 | 0.713 |
| opcode counts, boosted (v57) | 0.500 | 0.00 / 1.00 | 0.500 |
| opcode counts + bigrams, boosted (v57) | 0.474 | 0.00 / 0.95 | 0.481 |

| at cutoff 0.5 | leak recall | safe specificity | both sides right |
|---|---|---|---|
| opcode counts, boosted (v57) | 1.000 | 0.000 | 0.000 |
| opcode counts + bigrams, boosted (v57) | 1.000 | 0.000 | 0.000 |

## injected — all (982 pairs, 282 programs)

| scorer | auc | wins / ties | auc per program |
|---|---|---|---|
| length | 0.504 | 0.37 / 0.27 | 0.506 |
| shorter | 0.496 | 0.36 / 0.27 | 0.494 |
| fewer fences | 0.682 | 0.36 / 0.64 | 0.685 |
| no interior fence | 0.682 | 0.36 / 0.64 | 0.685 |
| mechanism rule | 0.500 | 0.00 / 1.00 | 0.500 |
| opcode counts, boosted (v57) | 0.324 | 0.19 / 0.27 | 0.322 |
| opcode counts + bigrams, boosted (v57) | 0.352 | 0.27 / 0.16 | 0.343 |

| at cutoff 0.5 | leak recall | safe specificity | both sides right |
|---|---|---|---|
| opcode counts, boosted (v57) | 0.000 | 0.763 | 0.000 |
| opcode counts + bigrams, boosted (v57) | 0.000 | 0.892 | 0.000 |

## injected — fence (357 pairs, 277 programs)

| scorer | auc | wins / ties | auc per program |
|---|---|---|---|
| length | 0.000 | 0.00 / 0.00 | 0.000 |
| shorter | 1.000 | 1.00 / 0.00 | 1.000 |
| fewer fences | 1.000 | 1.00 / 0.00 | 1.000 |
| no interior fence | 1.000 | 1.00 / 0.00 | 1.000 |
| mechanism rule | 0.500 | 0.00 / 1.00 | 0.500 |
| opcode counts, boosted (v57) | 0.000 | 0.00 / 0.00 | 0.000 |
| opcode counts + bigrams, boosted (v57) | 0.000 | 0.00 / 0.00 | 0.000 |

| at cutoff 0.5 | leak recall | safe specificity | both sides right |
|---|---|---|---|
| opcode counts, boosted (v57) | 0.000 | 0.347 | 0.000 |
| opcode counts + bigrams, boosted (v57) | 0.000 | 0.703 | 0.000 |

## injected — inject (364 pairs, 281 programs)

| scorer | auc | wins / ties | auc per program |
|---|---|---|---|
| length | 1.000 | 1.00 / 0.00 | 1.000 |
| shorter | 0.000 | 0.00 / 0.00 | 0.000 |
| fewer fences | 0.500 | 0.00 / 1.00 | 0.500 |
| no interior fence | 0.500 | 0.00 / 1.00 | 0.500 |
| mechanism rule | 0.500 | 0.00 / 1.00 | 0.500 |
| opcode counts, boosted (v57) | 0.515 | 0.51 / 0.02 | 0.519 |
| opcode counts + bigrams, boosted (v57) | 0.563 | 0.52 / 0.08 | 0.547 |

| at cutoff 0.5 | leak recall | safe specificity | both sides right |
|---|---|---|---|
| opcode counts, boosted (v57) | 0.000 | 1.000 | 0.000 |
| opcode counts + bigrams, boosted (v57) | 0.000 | 1.000 | 0.000 |

## injected — reorder (261 pairs, 220 programs)

| scorer | auc | wins / ties | auc per program |
|---|---|---|---|
| length | 0.500 | 0.00 / 1.00 | 0.500 |
| shorter | 0.500 | 0.00 / 1.00 | 0.500 |
| fewer fences | 0.500 | 0.00 / 1.00 | 0.500 |
| no interior fence | 0.500 | 0.00 / 1.00 | 0.500 |
| mechanism rule | 0.500 | 0.00 / 1.00 | 0.500 |
| opcode counts, boosted (v57) | 0.500 | 0.00 / 1.00 | 0.500 |
| opcode counts + bigrams, boosted (v57) | 0.538 | 0.29 / 0.50 | 0.532 |

| at cutoff 0.5 | leak recall | safe specificity | both sides right |
|---|---|---|---|
| opcode counts, boosted (v57) | 0.000 | 1.000 | 0.000 |
| opcode counts + bigrams, boosted (v57) | 0.000 | 1.000 | 0.000 |

## linux — all (105 pairs, 105 programs)

| scorer | auc | wins / ties | auc per program |
|---|---|---|---|
| length | 0.090 | 0.07 / 0.05 | 0.090 |
| shorter | 0.910 | 0.89 / 0.05 | 0.910 |
| fewer fences | 0.510 | 0.03 / 0.96 | 0.510 |
| no interior fence | 0.510 | 0.03 / 0.96 | 0.510 |
| mechanism rule | 0.510 | 0.02 / 0.98 | 0.510 |
| opcode counts, boosted (v57) | 0.519 | 0.39 / 0.26 | 0.519 |
| opcode counts + bigrams, boosted (v57) | 0.371 | 0.27 / 0.21 | 0.371 |

| at cutoff 0.5 | leak recall | safe specificity | both sides right |
|---|---|---|---|
| opcode counts, boosted (v57) | 0.038 | 0.943 | 0.010 |
| opcode counts + bigrams, boosted (v57) | 0.029 | 0.962 | 0.000 |

## linux_arm64 — all (85 pairs, 85 programs)

| scorer | auc | wins / ties | auc per program |
|---|---|---|---|
| length | 0.047 | 0.04 / 0.02 | 0.047 |
| shorter | 0.953 | 0.94 / 0.02 | 0.953 |
| fewer fences | 0.965 | 0.94 / 0.05 | 0.965 |
| no interior fence | 0.500 | 0.00 / 1.00 | 0.500 |
| mechanism rule | 0.500 | 0.00 / 1.00 | 0.500 |
| opcode counts, boosted (v57) | 0.500 | 0.01 / 0.98 | 0.500 |
| opcode counts + bigrams, boosted (v57) | 0.512 | 0.02 / 0.98 | 0.512 |

| at cutoff 0.5 | leak recall | safe specificity | both sides right |
|---|---|---|---|
| opcode counts, boosted (v57) | 0.694 | 0.318 | 0.012 |
| opcode counts + bigrams, boosted (v57) | 0.071 | 0.929 | 0.000 |

## nofence — L1TF (43 pairs, 43 programs)

| scorer | auc | wins / ties | auc per program |
|---|---|---|---|
| length | 0.547 | 0.16 / 0.77 | 0.547 |
| shorter | 0.453 | 0.07 / 0.77 | 0.453 |
| fewer fences | 0.500 | 0.00 / 1.00 | 0.500 |
| no interior fence | 0.500 | 0.00 / 1.00 | 0.500 |
| mechanism rule | 0.605 | 0.21 / 0.79 | 0.605 |
| opcode counts, boosted (v57) | 0.570 | 0.33 / 0.49 | 0.570 |
| opcode counts + bigrams, boosted (v57) | 0.523 | 0.26 / 0.53 | 0.523 |

| at cutoff 0.5 | leak recall | safe specificity | both sides right |
|---|---|---|---|
| opcode counts, boosted (v57) | 1.000 | 0.000 | 0.000 |
| opcode counts + bigrams, boosted (v57) | 1.000 | 0.000 | 0.000 |

## nofence — MDS (14 pairs, 14 programs)

| scorer | auc | wins / ties | auc per program |
|---|---|---|---|
| length | 0.500 | 0.07 / 0.86 | 0.500 |
| shorter | 0.500 | 0.07 / 0.86 | 0.500 |
| fewer fences | 0.500 | 0.00 / 1.00 | 0.500 |
| no interior fence | 0.500 | 0.00 / 1.00 | 0.500 |
| mechanism rule | 0.500 | 0.00 / 1.00 | 0.500 |
| opcode counts, boosted (v57) | 0.536 | 0.21 / 0.64 | 0.536 |
| opcode counts + bigrams, boosted (v57) | 0.500 | 0.07 / 0.86 | 0.500 |

| at cutoff 0.5 | leak recall | safe specificity | both sides right |
|---|---|---|---|
| opcode counts, boosted (v57) | 1.000 | 0.000 | 0.000 |
| opcode counts + bigrams, boosted (v57) | 1.000 | 0.000 | 0.000 |

## nofence — SPECTRE_V1 (18 pairs, 18 programs)

| scorer | auc | wins / ties | auc per program |
|---|---|---|---|
| length | 0.472 | 0.06 / 0.83 | 0.472 |
| shorter | 0.528 | 0.11 / 0.83 | 0.528 |
| fewer fences | 0.500 | 0.00 / 1.00 | 0.500 |
| no interior fence | 0.500 | 0.00 / 1.00 | 0.500 |
| mechanism rule | 0.500 | 0.00 / 1.00 | 0.500 |
| opcode counts, boosted (v57) | 0.444 | 0.11 / 0.67 | 0.444 |
| opcode counts + bigrams, boosted (v57) | 0.500 | 0.11 / 0.78 | 0.500 |

| at cutoff 0.5 | leak recall | safe specificity | both sides right |
|---|---|---|---|
| opcode counts, boosted (v57) | 1.000 | 0.000 | 0.000 |
| opcode counts + bigrams, boosted (v57) | 1.000 | 0.000 | 0.000 |

## nofence — SPECTRE_V4 (17 pairs, 17 programs)

| scorer | auc | wins / ties | auc per program |
|---|---|---|---|
| length | 0.471 | 0.06 / 0.82 | 0.471 |
| shorter | 0.529 | 0.12 / 0.82 | 0.529 |
| fewer fences | 0.500 | 0.00 / 1.00 | 0.500 |
| no interior fence | 0.500 | 0.00 / 1.00 | 0.500 |
| mechanism rule | 0.500 | 0.00 / 1.00 | 0.500 |
| opcode counts, boosted (v57) | 0.559 | 0.18 / 0.76 | 0.559 |
| opcode counts + bigrams, boosted (v57) | 0.500 | 0.12 / 0.76 | 0.500 |

| at cutoff 0.5 | leak recall | safe specificity | both sides right |
|---|---|---|---|
| opcode counts, boosted (v57) | 1.000 | 0.000 | 0.000 |
| opcode counts + bigrams, boosted (v57) | 1.000 | 0.000 | 0.000 |

## nofence — all (92 pairs, 92 programs)

| scorer | auc | wins / ties | auc per program |
|---|---|---|---|
| length | 0.511 | 0.11 / 0.80 | 0.511 |
| shorter | 0.489 | 0.09 / 0.80 | 0.489 |
| fewer fences | 0.500 | 0.00 / 1.00 | 0.500 |
| no interior fence | 0.500 | 0.00 / 1.00 | 0.500 |
| mechanism rule | 0.549 | 0.10 / 0.90 | 0.549 |
| opcode counts, boosted (v57) | 0.538 | 0.24 / 0.60 | 0.538 |
| opcode counts + bigrams, boosted (v57) | 0.511 | 0.17 / 0.67 | 0.511 |

| at cutoff 0.5 | leak recall | safe specificity | both sides right |
|---|---|---|---|
| opcode counts, boosted (v57) | 1.000 | 0.000 | 0.000 |
| opcode counts + bigrams, boosted (v57) | 1.000 | 0.000 | 0.000 |

## variants — L1TF (375 pairs, 63 programs)

| scorer | auc | wins / ties | auc per program |
|---|---|---|---|
| length | 0.333 | 0.00 / 0.67 | 0.333 |
| shorter | 0.667 | 0.33 / 0.67 | 0.667 |
| fewer fences | 0.667 | 0.33 / 0.67 | 0.667 |
| no interior fence | 1.000 | 1.00 / 0.00 | 1.000 |
| mechanism rule | 1.000 | 1.00 / 0.00 | 1.000 |
| opcode counts, boosted (v57) | 0.500 | 0.00 / 1.00 | 0.500 |
| opcode counts + bigrams, boosted (v57) | 0.500 | 0.01 / 0.98 | 0.500 |

| at cutoff 0.5 | leak recall | safe specificity | both sides right |
|---|---|---|---|
| opcode counts, boosted (v57) | 1.000 | 0.000 | 0.000 |
| opcode counts + bigrams, boosted (v57) | 1.000 | 0.000 | 0.000 |

## variants — MDS (192 pairs, 32 programs)

| scorer | auc | wins / ties | auc per program |
|---|---|---|---|
| length | 0.333 | 0.00 / 0.67 | 0.333 |
| shorter | 0.667 | 0.33 / 0.67 | 0.667 |
| fewer fences | 0.667 | 0.33 / 0.67 | 0.667 |
| no interior fence | 1.000 | 1.00 / 0.00 | 1.000 |
| mechanism rule | 1.000 | 1.00 / 0.00 | 1.000 |
| opcode counts, boosted (v57) | 0.500 | 0.00 / 1.00 | 0.500 |
| opcode counts + bigrams, boosted (v57) | 0.500 | 0.00 / 1.00 | 0.500 |

| at cutoff 0.5 | leak recall | safe specificity | both sides right |
|---|---|---|---|
| opcode counts, boosted (v57) | 1.000 | 0.000 | 0.000 |
| opcode counts + bigrams, boosted (v57) | 1.000 | 0.000 | 0.000 |

## variants — SPECTRE_V1 (287 pairs, 38 programs)

| scorer | auc | wins / ties | auc per program |
|---|---|---|---|
| length | 0.336 | 0.00 / 0.67 | 0.337 |
| shorter | 0.664 | 0.33 / 0.67 | 0.663 |
| fewer fences | 0.664 | 0.33 / 0.67 | 0.663 |
| no interior fence | 0.991 | 0.98 / 0.02 | 0.990 |
| mechanism rule | 0.991 | 0.98 / 0.02 | 0.990 |
| opcode counts, boosted (v57) | 0.500 | 0.00 / 1.00 | 0.500 |
| opcode counts + bigrams, boosted (v57) | 0.491 | 0.01 / 0.96 | 0.492 |

| at cutoff 0.5 | leak recall | safe specificity | both sides right |
|---|---|---|---|
| opcode counts, boosted (v57) | 1.000 | 0.000 | 0.000 |
| opcode counts + bigrams, boosted (v57) | 1.000 | 0.000 | 0.000 |

## variants — SPECTRE_V4 (116 pairs, 21 programs)

| scorer | auc | wins / ties | auc per program |
|---|---|---|---|
| length | 0.336 | 0.00 / 0.67 | 0.337 |
| shorter | 0.664 | 0.33 / 0.67 | 0.663 |
| fewer fences | 0.664 | 0.33 / 0.67 | 0.663 |
| no interior fence | 0.991 | 0.98 / 0.02 | 0.988 |
| mechanism rule | 0.991 | 0.98 / 0.02 | 0.988 |
| opcode counts, boosted (v57) | 0.500 | 0.00 / 1.00 | 0.500 |
| opcode counts + bigrams, boosted (v57) | 0.457 | 0.05 / 0.81 | 0.468 |

| at cutoff 0.5 | leak recall | safe specificity | both sides right |
|---|---|---|---|
| opcode counts, boosted (v57) | 1.000 | 0.000 | 0.000 |
| opcode counts + bigrams, boosted (v57) | 1.000 | 0.000 | 0.000 |

## variants — all (970 pairs, 154 programs)

| scorer | auc | wins / ties | auc per program |
|---|---|---|---|
| length | 0.335 | 0.00 / 0.67 | 0.335 |
| shorter | 0.665 | 0.33 / 0.67 | 0.665 |
| fewer fences | 0.665 | 0.33 / 0.67 | 0.665 |
| no interior fence | 0.996 | 0.99 / 0.01 | 0.996 |
| mechanism rule | 0.996 | 0.99 / 0.01 | 0.996 |
| opcode counts, boosted (v57) | 0.500 | 0.00 / 1.00 | 0.500 |
| opcode counts + bigrams, boosted (v57) | 0.492 | 0.01 / 0.96 | 0.494 |

| at cutoff 0.5 | leak recall | safe specificity | both sides right |
|---|---|---|---|
| opcode counts, boosted (v57) | 1.000 | 0.000 | 0.000 |
| opcode counts + bigrams, boosted (v57) | 1.000 | 0.000 | 0.000 |
