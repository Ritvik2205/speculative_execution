# Gate-only harness control table

class SPECTRE_V1, x86_64, seed 0, n=100/condition, gens=['generator_indexed.pt'], target_len=long, T=1.0. Source rows: `controls_indexed_safe.jsonl`.

| condition | n | adjudicable | leak | leak/n [95% CI] | leak/adj [95% CI] | distinct leaks | unrunnable | dropped |
|---|---|---|---|---|---|---|---|---|
| empty | 1 | 1 | 0 | 0.00 [0.00, 0.79] | 0.00 [0.00, 0.79] | 0 | 0 | 0 |
| nop32 | 1 | 1 | 0 | 0.00 [0.00, 0.79] | 0.00 [0.00, 0.79] | 0 | 0 | 0 |
| nop8 | 1 | 1 | 0 | 0.00 [0.00, 0.79] | 0.00 [0.00, 0.79] | 0 | 0 | 0 |
| reference | 1 | 1 | 1 | 1.00 [0.21, 1.00] | 1.00 [0.21, 1.00] | 1 | 0 | 0 |
| benign_raw | 100 | 76 | 31 | 0.31 [0.23, 0.41] | 0.41 [0.30, 0.52] | 31 | 24 | 0 |
| benign_realized | 100 | 99 | 0 | 0.00 [0.00, 0.04] | 0.00 [0.00, 0.04] | 0 | 1 | 0 |
| benign_slot | 100 | 90 | 36 | 0.36 [0.27, 0.46] | 0.40 [0.30, 0.50] | 36 | 10 | 0 |
| gen:generator_indexed | 100 | 94 | 44 | 0.44 [0.35, 0.54] | 0.47 [0.37, 0.57] | 44 | 6 | 0 |
| random_token | 100 | 19 | 2 | 0.02 [0.01, 0.07] | 0.11 [0.03, 0.31] | 2 | 81 | 0 |
