# Training on pairs: held-out pairs by arm

Cell = share of pairs with the leaking side scored higher (tie = half), mean over seeds ± sd over seeds, [95% interval over programs], then / share of pairs with both sides on the right side of 0.5. Training pairs are version-2 injected pairs (Spectre V1 only); no hardware pair is used for training or selection.

## graph model

Seeds: plain 10, labels 10, pairwise 10.

| row | pairs | programs | mechanism rule | plain | labels | pairwise | bar |
|---|---|---|---|---|---|---|---|
| counterfactual, all | 76 | 54 | 0.671 | 0.247 ± 0.200 [0.21–0.29] / 0.00 | 0.308 ± 0.138 [0.23–0.39] / 0.04 | 0.703 ± 0.208 [0.63–0.78] / 0.02 | labels: fail, pairwise: pass |
| counterfactual, Spectre V1 | 19 | 11 | 0.737 | 0.258 ± 0.171 [0.19–0.33] / 0.00 | 0.516 ± 0.085 [0.35–0.70] / 0.14 | 0.416 ± 0.094 [0.30–0.53] / 0.04 | labels: fail, pairwise: fail |
| nofence, all | 92 | 92 | 0.549 | 0.484 ± 0.050 [0.42–0.55] / 0.00 | 0.546 ± 0.027 [0.48–0.62] / 0.00 | 0.580 ± 0.055 [0.51–0.66] / 0.00 | – |
| nofence, Spectre V1 | 18 | 18 | 0.500 | 0.478 ± 0.070 [0.31–0.65] / 0.01 | 0.572 ± 0.111 [0.43–0.72] / 0.01 | 0.544 ± 0.141 [0.38–0.71] / 0.02 | – |
| variants, all | 970 | 154 | 0.996 | 0.763 ± 0.151 [0.75–0.78] / 0.00 | 0.566 ± 0.020 [0.55–0.59] / 0.13 | 0.509 ± 0.059 [0.50–0.52] / 0.04 | – |
| variants, Spectre V1 | 287 | 38 | 0.991 | 0.728 ± 0.134 [0.69–0.77] / 0.00 | 0.707 ± 0.043 [0.67–0.74] / 0.14 | 0.494 ± 0.102 [0.46–0.52] / 0.03 | – |
| injected v2 val, decoy | 128 | 85 | – | 0.652 ± 0.065 [0.61–0.70] / 0.00 | 0.875 ± 0.026 [0.83–0.92] / 0.61 | 0.869 ± 0.046 [0.82–0.91] / 0.08 | – |
| injected v2 val, barrier | 183 | 94 | – | 0.496 ± 0.062 [0.46–0.54] / 0.06 | 0.975 ± 0.009 [0.96–0.99] / 0.89 | 0.938 ± 0.023 [0.91–0.96] / 0.42 | – |
| injected v2 test, decoy | 105 | 71 | – | 0.688 ± 0.095 [0.64–0.74] / 0.00 | 0.910 ± 0.031 [0.86–0.96] / 0.55 | 0.968 ± 0.021 [0.94–0.99] / 0.03 | – |
| injected v2 test, reorder | 129 | 83 | – | 0.629 ± 0.114 [0.58–0.68] / 0.00 | 0.798 ± 0.037 [0.72–0.87] / 0.49 | 0.917 ± 0.031 [0.88–0.95] / 0.03 | – |
| injected v2 test, barrier | 219 | 101 | – | 0.498 ± 0.029 [0.46–0.54] / 0.06 | 0.933 ± 0.015 [0.91–0.96] / 0.74 | 0.915 ± 0.034 [0.88–0.94] / 0.40 | – |

Bar (fixed before running, spec section 4): on `counterfactual`, ranking above the mechanism rule and both-sides-right above the arm with no training on pairs. `nofence` is reported whatever it is. A failure on non-V1 rows cannot separate "training on pairs does not help" from "wrong mechanism in training".
