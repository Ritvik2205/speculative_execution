# Gate-only harness control table

class SPECTRE_V1, x86_64, seed 0, n=100/condition, gens=['generator_indexed_v3.pt'], target_len=long, T=1.0. Source rows: `c3_v3_selfgated.jsonl`.

| condition | n | adjudicable | leak | leak/n [95% CI] | leak/adj [95% CI] | distinct leaks | unrunnable | dropped |
|---|---|---|---|---|---|---|---|---|
| empty | 1 | 1 | 0 | 0.00 [0.00, 0.79] | 0.00 [0.00, 0.79] | 0 | 0 | 0 |
| nop32 | 1 | 1 | 0 | 0.00 [0.00, 0.79] | 0.00 [0.00, 0.79] | 0 | 0 | 0 |
| nop8 | 1 | 1 | 0 | 0.00 [0.00, 0.79] | 0.00 [0.00, 0.79] | 0 | 0 | 0 |
| reference | 1 | 1 | 1 | 1.00 [0.21, 1.00] | 1.00 [0.21, 1.00] | 1 | 0 | 0 |
| benign_raw | 100 | 73 | 19 | 0.19 [0.13, 0.28] | 0.26 [0.17, 0.37] | 19 | 27 | 0 |
| benign_realized | 100 | 98 | 0 | 0.00 [0.00, 0.04] | 0.00 [0.00, 0.04] | 0 | 2 | 0 |
| benign_slot | 100 | 91 | 29 | 0.29 [0.21, 0.39] | 0.32 [0.23, 0.42] | 29 | 9 | 0 |
| benign_slot_jcc | 100 | 91 | 62 | 0.62 [0.52, 0.71] | 0.68 [0.58, 0.77] | 62 | 9 | 0 |
| gen:generator_indexed_v3 | 100 | 95 | 67 | 0.67 [0.57, 0.75] | 0.71 [0.61, 0.79] | 67 | 5 | 0 |
| random_token | 100 | 17 | 5 | 0.05 [0.02, 0.11] | 0.29 [0.13, 0.53] | 5 | 83 | 0 |
