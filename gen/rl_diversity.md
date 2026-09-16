# Oracle-RL diversity audit

- samples: `gen/rl_samples.jsonl`

## Verdict: discovery

- unique-leak count holds or grows across rounds and the leaking set is not dominated by a handful of duplicate sequences

## Overall

| metric | value |
|---|---|
| total samples | 199 |
| unique samples | 140 |
| unique-rate | 0.704 |
| leaking samples | 172 |
| yield (leak/total) | 0.864 |
| unique leaking samples (global, cross-round dedup) | 117 |
| unique-leak rate (unique leaks / total samples) | 0.588 |

## Per-round trend

| round | total | unique | leak | unique-leak | yield | unique-leak-rate |
|---|---|---|---|---|---|---|
| 0 | 39 | 30 | 17 | 12 | 0.436 | 0.308 |
| 1 | 40 | 31 | 39 | 30 | 0.975 | 0.750 |
| 2 | 40 | 19 | 40 | 19 | 1.000 | 0.475 |
| 3 | 40 | 25 | 37 | 22 | 0.925 | 0.550 |
| 4 | 40 | 40 | 39 | 39 | 0.975 | 0.975 |

## Top-5 most frequent sequences

| rank | multiplicity | sequence |
|---|---|---|
| 1 | 37 | `pushq <reg> movq <reg> <reg> pushq <reg> pushq <reg> movl <reg> <mem> callq <fn> movl <mem> <reg> cmpl <mem> <reg> ja...` |
| 2 | 5 | `pushq <reg> movq <reg> <reg> pushq <reg> pushq <reg> movl <reg> <mem> movl <reg> <mem> callq <fn> movl <mem> <reg> mo...` |
| 3 | 5 | `pushq <reg> movq <reg> <reg> pushq <reg> movl <reg> <mem> movl <reg> <mem> callq <fn> movl <mem> <reg> cmpl <mem> <re...` |
| 4 | 5 | `pushq <reg> movq <reg> <reg> pushq <reg> pushq <reg> movl <reg> <mem> callq <fn> movl <mem> <reg> cmpl <mem> <reg> ja...` |
| 5 | 4 | `pushq <reg> movq <reg> <reg> movq <reg> <mem> movq <mem> <reg> movl <mem> <reg> movl <reg> <reg> cmpq <reg> <reg> jae...` |

## Pairwise similarity over unique leaking sequences (Ruzicka / multiset Jaccard)

- compared 117 sequences (6786 pairs)
- mean similarity: 0.366
- median similarity: 0.320
- 1.0 = identical multiset of tokens (near-duplicate); 0.0 = disjoint opcode sets
