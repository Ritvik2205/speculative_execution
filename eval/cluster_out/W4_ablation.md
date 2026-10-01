# W4 — edge ON vs OFF baseline (w3_embed_on), mean±95%CI

| edge | class | locked macroF1 ON | locked macroF1 OFF | target recall ON | target recall OFF |
|---|---|---|---|---|---|
| MEMORY_ORDER (V4) | SPECTRE_V4 | 0.646±0.054 | 0.619±0.047 | 0.984±0.000 | 0.984±0.000 |
| taint-slice (G2) | L1TF | 0.592±0.018 | 0.619±0.047 | 0.178±0.059 | 0.135±0.047 |
| taint-slice (G2) | MDS | 0.592±0.018 | 0.619±0.047 | 0.964±0.040 | 0.969±0.051 |
| cfg-spec (G4) | (macro) | 0.606±0.023 | 0.619±0.047 | n/a | n/a |
