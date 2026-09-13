# W4 edge-ablation — each edge ON vs OFF baseline (eval/w2, same seeds)

Trained on v55h_train, tested on locked v54_test. Mean±95%CI over seeds 42/1/7.

| edge | target class | locked macroF1 ON | locked macroF1 OFF | target recall ON | target recall OFF |
|---|---|---|---|---|---|
| MEMORY_ORDER (V4) | SPECTRE_V4 | 0.834±0.011 | 0.818±0.017 | 0.995±0.011 | 0.995±0.011 |
| taint-slice (G2) | L1TF | 0.824±0.011 | 0.818±0.017 | 0.667±0.047 | 0.712±0.047 |
| taint-slice (G2) | MDS | 0.824±0.011 | 0.818±0.017 | 0.970±0.015 | 0.970±0.029 |
| cfg-spec edges (G4) | (macro) | 0.826±0.008 | 0.818±0.017 | n/a | n/a |
