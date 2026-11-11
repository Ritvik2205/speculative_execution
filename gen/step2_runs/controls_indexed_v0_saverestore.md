# Gate-only harness control table

class SPECTRE_V1, x86_64, seed 0, n=100/condition, gens=['generator_indexed.pt'], target_len=long, T=1.0. Source rows: `controls_indexed_leak.jsonl`.

| condition | n | adjudicable | leak | leak/n [95% CI] | leak/adj [95% CI] | distinct leaks | unrunnable | dropped |
|---|---|---|---|---|---|---|---|---|
| empty | 1 | 1 | 0 | 0.00 [0.00, 0.79] | 0.00 [0.00, 0.79] | 0 | 0 | 0 |
| nop32 | 1 | 1 | 0 | 0.00 [0.00, 0.79] | 0.00 [0.00, 0.79] | 0 | 0 | 0 |
| nop8 | 1 | 1 | 0 | 0.00 [0.00, 0.79] | 0.00 [0.00, 0.79] | 0 | 0 | 0 |
| reference | 1 | 1 | 1 | 1.00 [0.21, 1.00] | 1.00 [0.21, 1.00] | 1 | 0 | 0 |
| benign_raw | 100 | 78 | 32 | 0.32 [0.24, 0.42] | 0.41 [0.31, 0.52] | 32 | 22 | 0 |
| benign_realized | 100 | 99 | 46 | 0.46 [0.37, 0.56] | 0.46 [0.37, 0.56] | 46 | 1 | 0 |
| benign_slot | 100 | 93 | 41 | 0.41 [0.32, 0.51] | 0.44 [0.34, 0.54] | 41 | 7 | 0 |
| gen:generator_indexed | 100 | 99 | 86 | 0.86 [0.78, 0.91] | 0.87 [0.79, 0.92] | 86 | 1 | 0 |
| random_token | 100 | 17 | 13 | 0.13 [0.08, 0.21] | 0.76 [0.53, 0.90] | 13 | 83 | 0 |
