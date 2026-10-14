# Length / execution-graph-size diversity sweep

generator `generator_expanded.pt`, arch `x86_64`, temps [0.8, 1.0, 1.2], buckets by instruction count [8, 16]. Diversity notions match `gen/compare_generators.py` (unique-rate; mean pairwise Ruzicka similarity over the unique set -- lower = more diverse).

## SPECTRE_V1

| bucket | n | unique | unique-rate | mean sim (lower=diverse) | mean instr | mean PDG nodes |
|---|---:|---:|---:|---:|---:|---:|
| S (<=8) | 2 | 2 | 1.000 | 0.083 | 7.0 | 6.0 |
| M (9-16) | 185 | 155 | 0.838 | 0.137 | 13.6 | 12.8 |
| L (>16) | 113 | 65 | 0.575 | 0.215 | 17.0 | 16.0 |
| **all** | 300 | 220 | 0.733 | 0.128 | 14.8 | 14.0 |

Spanning all length buckets yields **220** distinct gadgets vs **155** from the single richest bucket (+65); the length axis adds structural coverage no single length reaches.

## SPECTRE_V4

| bucket | n | unique | unique-rate | mean sim (lower=diverse) | mean instr | mean PDG nodes |
|---|---:|---:|---:|---:|---:|---:|
| S (<=8)  (leak 0/6) | 9 | 5 | 0.556 | 0.519 | 7.3 | 7.3 |
| M (9-16) | 289 | 166 | 0.574 | 0.175 | 15.3 | 15.3 |
| L (>16) | 2 | 2 | 1.000 | 0.231 | 17.0 | 16.0 |
| **all** | 300 | 173 | 0.577 | 0.169 | 15.1 | 15.1 |

Spanning all length buckets yields **173** distinct gadgets vs **166** from the single richest bucket (+7); the length axis adds structural coverage no single length reaches.

