# Oracle-RL diversity audit

- samples: `gen/rl_samples_benign.jsonl`

## Verdict: discovery

- unique-leak count holds or grows across rounds and the leaking set is not dominated by a handful of duplicate sequences

## Overall

| metric | value |
|---|---|
| total samples | 200 |
| unique samples | 191 |
| unique-rate | 0.955 |
| leaking samples | 163 |
| yield (leak/total) | 0.815 |
| unique leaking samples (global, cross-round dedup) | 154 |
| unique-leak rate (unique leaks / total samples) | 0.770 |

## Per-round trend

| round | total | unique | leak | unique-leak | yield | unique-leak-rate |
|---|---|---|---|---|---|---|
| 0 | 40 | 40 | 22 | 22 | 0.550 | 0.550 |
| 1 | 40 | 40 | 27 | 27 | 0.675 | 0.675 |
| 2 | 40 | 40 | 35 | 35 | 0.875 | 0.875 |
| 3 | 40 | 40 | 39 | 39 | 0.975 | 0.975 |
| 4 | 40 | 31 | 40 | 31 | 1.000 | 0.775 |

## Top-5 most frequent sequences

| rank | multiplicity | sequence |
|---|---|---|
| 1 | 10 | `movq <reg> <reg> movq <reg> <reg> movq <reg> <reg> movq <reg> <reg> movq <reg> <reg> movq <reg> <reg> movq <reg> <reg...` |
| 2 | 1 | `pushq <reg> movq <reg> <reg> pushq <reg> pushq <reg> subq <imm> <reg> movq <reg> <mem> movq <reg> <mem> movl <mem> <r...` |
| 3 | 1 | `pushq <reg> pushq <reg> subq <imm> <reg> movq <reg> <reg> movq <reg> <reg> callq <fn> movl <mem> <reg> movl <mem> <re...` |
| 4 | 1 | `testl <reg> <reg> jle <sym> movl <mem> <reg> movl <mem> <reg> cmpq <reg> <reg> jg <sym> movzbl <mem> <reg> movzbl <me...` |
| 5 | 1 | `pushq <reg> subq <imm> <reg> movl <reg> <reg> movq <mem> <reg> movq <mem> <reg> movq <mem> <reg> movq <mem> <reg> xor...` |

## Pairwise similarity over unique leaking sequences (Ruzicka / multiset Jaccard)

- compared 154 sequences (11781 pairs)
- mean similarity: 0.233
- median similarity: 0.167
- 1.0 = identical multiset of tokens (near-duplicate); 0.0 = disjoint opcode sets
