# Gate-only harness control table

class SPECTRE_V1, x86_64, seed 0, n=100/condition, gens=['generator_indexed_v3.pt'], target_len=long, T=1.0. Source rows: `c3_v3_leak.jsonl`.

| condition | n | adjudicable | leak | leak/n [95% CI] | leak/adj [95% CI] | distinct leaks | unrunnable | dropped |
|---|---|---|---|---|---|---|---|---|
| empty | 1 | 1 | 0 | 0.00 [0.00, 0.79] | 0.00 [0.00, 0.79] | 0 | 0 | 0 |
| nop32 | 1 | 1 | 0 | 0.00 [0.00, 0.79] | 0.00 [0.00, 0.79] | 0 | 0 | 0 |
| nop8 | 1 | 1 | 0 | 0.00 [0.00, 0.79] | 0.00 [0.00, 0.79] | 0 | 0 | 0 |
| reference | 1 | 1 | 1 | 1.00 [0.21, 1.00] | 1.00 [0.21, 1.00] | 1 | 0 | 0 |
| benign_raw | 100 | 78 | 19 | 0.19 [0.13, 0.28] | 0.24 [0.16, 0.35] | 19 | 22 | 0 |
| benign_realized | 100 | 99 | 0 | 0.00 [0.00, 0.04] | 0.00 [0.00, 0.04] | 0 | 1 | 0 |
| benign_slot | 100 | 92 | 21 | 0.21 [0.14, 0.30] | 0.23 [0.15, 0.32] | 21 | 8 | 0 |
| benign_slot_jcc | 100 | 93 | 60 | 0.60 [0.50, 0.69] | 0.65 [0.54, 0.73] | 60 | 7 | 0 |
| gen:generator_indexed_v3 | 100 | 96 | 58 | 0.58 [0.48, 0.67] | 0.60 [0.50, 0.70] | 58 | 4 | 0 |
| random_token | 100 | 19 | 4 | 0.04 [0.02, 0.10] | 0.21 [0.09, 0.43] | 4 | 81 | 0 |
