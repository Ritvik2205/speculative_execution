# Gate-only harness control table

class SPECTRE_V1, x86_64, seed 0, n=100/condition, gens=['generator_indexed.pt'], target_len=long, T=1.0. Source rows: `c3_base_leak.jsonl`.

| condition | n | adjudicable | leak | leak/n [95% CI] | leak/adj [95% CI] | distinct leaks | unrunnable | dropped |
|---|---|---|---|---|---|---|---|---|
| empty | 1 | 1 | 0 | 0.00 [0.00, 0.79] | 0.00 [0.00, 0.79] | 0 | 0 | 0 |
| nop32 | 1 | 1 | 0 | 0.00 [0.00, 0.79] | 0.00 [0.00, 0.79] | 0 | 0 | 0 |
| nop8 | 1 | 1 | 0 | 0.00 [0.00, 0.79] | 0.00 [0.00, 0.79] | 0 | 0 | 0 |
| reference | 1 | 1 | 1 | 1.00 [0.21, 1.00] | 1.00 [0.21, 1.00] | 1 | 0 | 0 |
| benign_raw | 100 | 75 | 24 | 0.24 [0.17, 0.33] | 0.32 [0.23, 0.43] | 24 | 25 | 0 |
| benign_realized | 100 | 99 | 0 | 0.00 [0.00, 0.04] | 0.00 [0.00, 0.04] | 0 | 1 | 0 |
| benign_slot | 100 | 92 | 32 | 0.32 [0.24, 0.42] | 0.35 [0.26, 0.45] | 32 | 8 | 0 |
| benign_slot_jcc | 100 | 94 | 62 | 0.62 [0.52, 0.71] | 0.66 [0.56, 0.75] | 62 | 6 | 0 |
| gen:generator_indexed | 100 | 95 | 63 | 0.63 [0.53, 0.72] | 0.66 [0.56, 0.75] | 63 | 5 | 0 |
| random_token | 100 | 21 | 6 | 0.06 [0.03, 0.12] | 0.29 [0.14, 0.50] | 6 | 79 | 0 |
