# Indexed-victim leaks split by speculation source

attacker-indexed = leak on the indexed victim and safe on the control (register in bounds, no outer bounds check); self-gated = leaks on both.

| condition | n | leak | attacker-indexed | self-gated | undecided | indexed / n [95% CI] | self-gated / n | indexed share of leaks |
|---|---|---|---|---|---|---|---|---|
| base_leak:benign_raw | 100 | 24 | 24 | 0 | 0 | 0.24 [0.17, 0.33] | 0.00 | 1.00 |
| base_leak:benign_realized | 100 | 0 | 0 | 0 | 0 | 0.00 [0.00, 0.04] | 0.00 | — |
| base_leak:benign_slot | 100 | 32 | 32 | 0 | 0 | 0.32 [0.24, 0.42] | 0.00 | 1.00 |
| base_leak:benign_slot_jcc | 100 | 62 | 3 | 59 | 0 | 0.03 [0.01, 0.08] | 0.59 | 0.05 |
| base_leak:empty | 1 | 0 | 0 | 0 | 0 | 0.00 [0.00, 0.79] | 0.00 | — |
| base_leak:gen:generator_indexed | 100 | 63 | 5 | 58 | 0 | 0.05 [0.02, 0.11] | 0.58 | 0.08 |
| base_leak:nop32 | 1 | 0 | 0 | 0 | 0 | 0.00 [0.00, 0.79] | 0.00 | — |
| base_leak:nop8 | 1 | 0 | 0 | 0 | 0 | 0.00 [0.00, 0.79] | 0.00 | — |
| base_leak:random_token | 100 | 6 | 0 | 6 | 0 | 0.00 [0.00, 0.04] | 0.06 | 0.00 |
| base_leak:reference | 1 | 1 | 1 | 0 | 0 | 1.00 [0.21, 1.00] | 0.00 | 1.00 |
| v3_leak:benign_raw | 100 | 19 | 19 | 0 | 0 | 0.19 [0.13, 0.28] | 0.00 | 1.00 |
| v3_leak:benign_realized | 100 | 0 | 0 | 0 | 0 | 0.00 [0.00, 0.04] | 0.00 | — |
| v3_leak:benign_slot | 100 | 21 | 21 | 0 | 0 | 0.21 [0.14, 0.30] | 0.00 | 1.00 |
| v3_leak:benign_slot_jcc | 100 | 60 | 4 | 56 | 0 | 0.04 [0.02, 0.10] | 0.56 | 0.07 |
| v3_leak:empty | 1 | 0 | 0 | 0 | 0 | 0.00 [0.00, 0.79] | 0.00 | — |
| v3_leak:gen:generator_indexed_v3 | 100 | 58 | 1 | 57 | 0 | 0.01 [0.00, 0.05] | 0.57 | 0.02 |
| v3_leak:nop32 | 1 | 0 | 0 | 0 | 0 | 0.00 [0.00, 0.79] | 0.00 | — |
| v3_leak:nop8 | 1 | 0 | 0 | 0 | 0 | 0.00 [0.00, 0.79] | 0.00 | — |
| v3_leak:random_token | 100 | 4 | 0 | 4 | 0 | 0.00 [0.00, 0.04] | 0.04 | 0.00 |
| v3_leak:reference | 1 | 1 | 1 | 0 | 0 | 1.00 [0.21, 1.00] | 0.00 | 1.00 |
| v3_selfgated:benign_raw | 100 | 19 | 19 | 0 | 0 | 0.19 [0.13, 0.28] | 0.00 | 1.00 |
| v3_selfgated:benign_realized | 100 | 0 | 0 | 0 | 0 | 0.00 [0.00, 0.04] | 0.00 | — |
| v3_selfgated:benign_slot | 100 | 29 | 29 | 0 | 0 | 0.29 [0.21, 0.39] | 0.00 | 1.00 |
| v3_selfgated:benign_slot_jcc | 100 | 62 | 5 | 57 | 0 | 0.05 [0.02, 0.11] | 0.57 | 0.08 |
| v3_selfgated:empty | 1 | 0 | 0 | 0 | 0 | 0.00 [0.00, 0.79] | 0.00 | — |
| v3_selfgated:gen:generator_indexed_v3 | 100 | 67 | 4 | 63 | 0 | 0.04 [0.02, 0.10] | 0.63 | 0.06 |
| v3_selfgated:nop32 | 1 | 0 | 0 | 0 | 0 | 0.00 [0.00, 0.79] | 0.00 | — |
| v3_selfgated:nop8 | 1 | 0 | 0 | 0 | 0 | 0.00 [0.00, 0.79] | 0.00 | — |
| v3_selfgated:random_token | 100 | 5 | 0 | 5 | 0 | 0.00 [0.00, 0.04] | 0.05 | 0.00 |
| v3_selfgated:reference | 1 | 1 | 1 | 0 | 0 | 1.00 [0.21, 1.00] | 0.00 | 1.00 |
