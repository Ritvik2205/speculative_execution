# Length / execution-graph-size diversity sweep

generator `generator_expanded.pt`, arch `x86_64`, temps [0.8, 1.0, 1.2], buckets by instruction count [8, 16]. Diversity notions match `gen/compare_generators.py` (unique-rate; mean pairwise Ruzicka similarity over the unique set -- lower = more diverse).

## SPECTRE_V1

| bucket | n | unique | unique-rate | mean sim (lower=diverse) | mean instr | mean PDG nodes |
|---|---:|---:|---:|---:|---:|---:|
| S (<=8) | 11 | 9 | 0.818 | 0.235 | 6.5 | 6.5 |
| M (9-16) | 75 | 60 | 0.800 | 0.240 | 11.8 | 11.8 |
| L (>16) | 112 | 94 | 0.839 | 0.167 | 26.8 | 26.8 |
| **all** | 198 | 163 | 0.823 | 0.136 | 20.0 | 20.0 |

Spanning all length buckets yields **163** distinct gadgets vs **94** from the single richest bucket (+69); the length axis adds structural coverage no single length reaches.

## SPECTRE_V4

| bucket | n | unique | unique-rate | mean sim (lower=diverse) | mean instr | mean PDG nodes |
|---|---:|---:|---:|---:|---:|---:|
| S (<=8) | 10 | 6 | 0.600 | 0.536 | 7.8 | 7.8 |
| M (9-16) | 35 | 25 | 0.714 | 0.278 | 11.0 | 11.0 |
| L (>16) | 153 | 98 | 0.641 | 0.243 | 34.7 | 34.7 |
| **all** | 198 | 129 | 0.652 | 0.193 | 29.1 | 29.1 |

Spanning all length buckets yields **129** distinct gadgets vs **98** from the single richest bucket (+31); the length axis adds structural coverage no single length reaches.

