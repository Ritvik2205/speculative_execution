# Gate-only harness control table

class SPECTRE_V1, x86_64, seed 0, n=100/condition, gens=['generator_indexed.pt', 'generator_indexed_v3.pt'], target_len=long, T=1.0. Source rows: `t1_controls.jsonl`.

| condition | n | adjudicable | leak | leak/n [95% CI] | leak/adj [95% CI] | distinct leaks | unrunnable | dropped |
|---|---|---|---|---|---|---|---|---|
| empty | 1 | 1 | 0 | 0.00 [0.00, 0.79] | 0.00 [0.00, 0.79] | 0 | 0 | 0 |
| nop32 | 1 | 1 | 0 | 0.00 [0.00, 0.79] | 0.00 [0.00, 0.79] | 0 | 0 | 0 |
| nop8 | 1 | 1 | 0 | 0.00 [0.00, 0.79] | 0.00 [0.00, 0.79] | 0 | 0 | 0 |
| reference | 1 | 1 | 1 | 1.00 [0.21, 1.00] | 1.00 [0.21, 1.00] | 1 | 0 | 0 |
| benign_raw | 100 | 74 | 22 | 0.22 [0.15, 0.31] | 0.30 [0.21, 0.41] | 22 | 26 | 0 |
| benign_realized | 100 | 99 | 0 | 0.00 [0.00, 0.04] | 0.00 [0.00, 0.04] | 0 | 1 | 0 |
| benign_slot | 100 | 93 | 25 | 0.25 [0.18, 0.34] | 0.27 [0.19, 0.37] | 25 | 7 | 0 |
| benign_slot_jcc | 100 | 92 | 46 | 0.46 [0.37, 0.56] | 0.50 [0.40, 0.60] | 46 | 8 | 0 |
| gen:generator_indexed | 100 | 95 | 28 | 0.28 [0.20, 0.37] | 0.29 [0.21, 0.39] | 28 | 5 | 0 |
| gen:generator_indexed_v3 | 100 | 92 | 22 | 0.22 [0.15, 0.31] | 0.24 [0.16, 0.34] | 22 | 8 | 0 |
| random_token | 100 | 24 | 0 | 0.00 [0.00, 0.04] | 0.00 [0.00, 0.14] | 0 | 76 | 0 |
