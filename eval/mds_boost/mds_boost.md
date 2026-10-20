# MDS class-boost sweep (multi-seed)

- boost levels: ['1.0', '2.0', '3.0']  (1.0 = baseline, no extra MDS weight)
- seeds per level: 3

| metric | x1.0 | x2.0 | x3.0 |
|---|---|---|---|
| test accuracy | 0.947±0.001 | 0.938±0.006 | 0.940±0.010 |
| macro F1 | 0.804±0.016 | 0.781±0.008 | 0.783±0.010 |
| MDS recall | 0.919±0.055 | 0.941±0.021 | 0.926±0.038 |
| MDS precision | 0.875±0.024 | 0.852±0.062 | 0.837±0.076 |
| SPECTRE_V1 recall | 0.960±0.011 | 0.952±0.000 | 0.960±0.011 |
| SPECTRE_V1 precision | 0.824±0.020 | 0.785±0.025 | 0.795±0.081 |
| L1TF recall | 0.676±0.022 | 0.667±0.013 | 0.649±0.038 |

## Verdict vs baseline
- x2.0: MDS recall +0.022, V1 precision -0.039, V1 recall -0.008  -> no clean win
- x3.0: MDS recall +0.007, V1 precision -0.028, V1 recall +0.000  -> no clean win

A boost is worth adopting only if MDS recall rises while V1 precision and recall hold (within noise). Confirm any candidate with more seeds before claiming it.
