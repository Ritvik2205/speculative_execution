# Gate-only harness control table

class SPECTRE_V1, x86_64, seed 0, n=100/condition, gens=['generator_indexed.pt'], target_len=long, T=1.0. Source rows: `controls_indexed_leak.jsonl`.

| condition | n | adjudicable | leak | leak/n [95% CI] | leak/adj [95% CI] | distinct leaks | unrunnable | dropped |
|---|---|---|---|---|---|---|---|---|
| empty | 1 | 1 | 0 | 0.00 [0.00, 0.79] | 0.00 [0.00, 0.79] | 0 | 0 | 0 |
| nop32 | 1 | 1 | 0 | 0.00 [0.00, 0.79] | 0.00 [0.00, 0.79] | 0 | 0 | 0 |
| nop8 | 1 | 1 | 0 | 0.00 [0.00, 0.79] | 0.00 [0.00, 0.79] | 0 | 0 | 0 |
| reference | 1 | 1 | 1 | 1.00 [0.21, 1.00] | 1.00 [0.21, 1.00] | 1 | 0 | 0 |
| benign_raw | 100 | 81 | 26 | 0.26 [0.18, 0.35] | 0.32 [0.23, 0.43] | 26 | 19 | 0 |
| benign_realized | 100 | 99 | 0 | 0.00 [0.00, 0.04] | 0.00 [0.00, 0.04] | 0 | 1 | 0 |
| benign_slot | 100 | 96 | 26 | 0.26 [0.18, 0.35] | 0.27 [0.19, 0.37] | 26 | 4 | 0 |
| gen:generator_indexed | 100 | 97 | 60 | 0.60 [0.50, 0.69] | 0.62 [0.52, 0.71] | 60 | 3 | 0 |
| random_token | 100 | 23 | 7 | 0.07 [0.03, 0.14] | 0.30 [0.16, 0.51] | 7 | 77 | 0 |
