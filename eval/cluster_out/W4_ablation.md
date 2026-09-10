# W4 — edge ON vs OFF baseline (w3_embed_on), mean±95%CI

| edge | class | locked macroF1 ON | locked macroF1 OFF | target recall ON | target recall OFF |
|---|---|---|---|---|---|
| MEMORY_ORDER (V4) | SPECTRE_V4 | 0.831±0.037 | 0.813±0.004 | 0.989±0.006 | 0.994±0.003 |
| taint-slice (G2) | L1TF | 0.805±0.012 | 0.813±0.004 | 0.692±0.052 | 0.692±0.036 |
| taint-slice (G2) | MDS | 0.805±0.012 | 0.813±0.004 | 0.978±0.014 | 0.969±0.017 |
| cfg-spec (G4) | (macro) | 0.832±0.039 | 0.813±0.004 | n/a | n/a |
