# Indexed-victim leaks split by speculation source

attacker-indexed = leak on the indexed victim and safe on the control (register in bounds, no outer bounds check); self-gated = leaks on both.

| condition | n | leak | attacker-indexed | self-gated | undecided | indexed / n [95% CI] | self-gated / n | indexed share of leaks |
|---|---|---|---|---|---|---|---|---|
| t1:benign_raw | 100 | 22 | 21 | 1 | 0 | 0.21 [0.14, 0.30] | 0.01 | 0.95 |
| t1:benign_realized | 100 | 0 | 0 | 0 | 0 | 0.00 [0.00, 0.04] | 0.00 | — |
| t1:benign_slot | 100 | 25 | 24 | 0 | 1 | 0.24 [0.17, 0.33] | 0.00 | 0.96 |
| t1:benign_slot_jcc | 100 | 46 | 43 | 2 | 1 | 0.43 [0.34, 0.53] | 0.02 | 0.93 |
| t1:empty | 1 | 0 | 0 | 0 | 0 | 0.00 [0.00, 0.79] | 0.00 | — |
| t1:gen:generator_indexed | 100 | 28 | 15 | 13 | 0 | 0.15 [0.09, 0.23] | 0.13 | 0.54 |
| t1:gen:generator_indexed_v3 | 100 | 22 | 12 | 10 | 0 | 0.12 [0.07, 0.20] | 0.10 | 0.55 |
| t1:nop32 | 1 | 0 | 0 | 0 | 0 | 0.00 [0.00, 0.79] | 0.00 | — |
| t1:nop8 | 1 | 0 | 0 | 0 | 0 | 0.00 [0.00, 0.79] | 0.00 | — |
| t1:random_token | 100 | 0 | 0 | 0 | 0 | 0.00 [0.00, 0.04] | 0.00 | — |
| t1:reference | 1 | 1 | 1 | 0 | 0 | 1.00 [0.21, 1.00] | 0.00 | 1.00 |
