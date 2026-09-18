# Oracle-RL diversity audit

- samples: `gen/rl_samples_pretrained.jsonl`

## Verdict: discovery

- unique-leak count holds or grows across rounds and the leaking set is not dominated by a handful of duplicate sequences

## Overall

| metric | value |
|---|---|
| total samples | 197 |
| unique samples | 162 |
| unique-rate | 0.822 |
| leaking samples | 171 |
| yield (leak/total) | 0.868 |
| unique leaking samples (global, cross-round dedup) | 137 |
| unique-leak rate (unique leaks / total samples) | 0.695 |

## Per-round trend

| round | total | unique | leak | unique-leak | yield | unique-leak-rate |
|---|---|---|---|---|---|---|
| 0 | 37 | 32 | 19 | 15 | 0.514 | 0.405 |
| 1 | 40 | 32 | 38 | 30 | 0.950 | 0.750 |
| 2 | 40 | 26 | 39 | 25 | 0.975 | 0.625 |
| 3 | 40 | 36 | 36 | 32 | 0.900 | 0.800 |
| 4 | 40 | 38 | 39 | 37 | 0.975 | 0.925 |

## Top-5 most frequent sequences

| rank | multiplicity | sequence |
|---|---|---|
| 1 | 8 | `pushq <reg> movq <reg> <reg> pushq <reg> pushq <reg> movl <reg> <mem> callq <fn> movl <mem> <reg> cmpl <mem> <reg> ja...` |
| 2 | 7 | `pushq <reg> movq <reg> <reg> pushq <reg> pushq <reg> movl <reg> <mem> callq <fn> movl <mem> <reg> cmpl <mem> <reg> ja...` |
| 3 | 5 | `pushq <reg> movq <reg> <reg> pushq <reg> pushq <reg> movl <reg> <mem> callq <fn> movl <mem> <reg> cmpl <mem> <reg> ja...` |
| 4 | 4 | `pushq <reg> movq <reg> <reg> pushq <reg> pushq <reg> movl <reg> <mem> callq <fn> movl <mem> <reg> cmpl <mem> <reg> ja...` |
| 5 | 3 | `pushq <reg> movq <reg> <reg> pushq <reg> pushq <reg> movl <reg> <mem> callq <fn> movl <mem> <reg> cmpl <mem> <reg> ja...` |

## Pairwise similarity over unique leaking sequences (Ruzicka / multiset Jaccard)

- compared 137 sequences (9316 pairs)
- mean similarity: 0.509
- median similarity: 0.500
- 1.0 = identical multiset of tokens (near-duplicate); 0.0 = disjoint opcode sets
