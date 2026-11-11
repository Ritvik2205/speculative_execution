# v57 dataset build

seed 0, group cap 6, test share 0.2, near-duplicate threshold 0.8, ISAs ['x86_64'].

- attacks read: 3240; dropped for an ISA with no benign pool: {'arm64': 646, 'arm32': 17}
- group cap 6: 3240 -> 2564 attack records
- benign x86_64: 6911 -> 6354 after near-duplicate thinning
- benign x86_64: pool 6354, wanted 2564, got 2537 (25 windowed), unfilled 27
- held-out records checked against: 1727

- clusters: 1065 over 5101 records
- near-duplicate overlap train->test: 0.0000
- shortcut balanced accuracy on leak/safe: ISA alone 0.500, length alone 0.419
- best single-opcode rule per ISA: x86_64: `je` => SAFE 0.760

## Leak label by ISA

| | train | test |
|---|---|---|
| ('x86_64', 'LEAK') | 2039 | 525 |
| ('x86_64', 'SAFE') | 2029 | 508 |

## Mechanism by ISA

| | train | test |
|---|---|---|
| ('x86_64', 'COND_BRANCH', 'hw') | 133 | 33 |
| ('x86_64', 'COND_BRANCH', 'syn') | 416 | 113 |
| ('x86_64', 'FAULTING_LOAD', 'hw') | 234 | 58 |
| ('x86_64', 'FAULTING_LOAD', 'syn') | 317 | 80 |
| ('x86_64', 'INDIRECT_BRANCH', 'syn') | 253 | 63 |
| ('x86_64', 'RETURN', 'syn') | 552 | 138 |
| ('x86_64', 'SAFE', 'syn') | 2029 | 508 |
| ('x86_64', 'STORE_BYPASS', 'hw') | 75 | 19 |
| ('x86_64', 'STORE_BYPASS', 'syn') | 59 | 21 |

## Source

| | train | test |
|---|---|---|
| ('LEAK', 'revizor_l1tf_trainpool.jsonl') | 130 | 35 |
| ('LEAK', 'revizor_mds_trainpool.jsonl') | 104 | 23 |
| ('LEAK', 'revizor_spectre_v1_trainpool.jsonl') | 133 | 33 |
| ('LEAK', 'revizor_spectre_v4_trainpool.jsonl') | 75 | 19 |
| ('LEAK', 'v54_test.jsonl') | 286 | 82 |
| ('LEAK', 'v54_train.jsonl') | 1311 | 333 |
| ('SAFE', 'benign_filler_x86_64.jsonl') | 3 | 49 |
| ('SAFE', 'benign_x86_64_gcc.jsonl') | 1051 | 238 |
| ('SAFE', 'benign_x86_64_gcc_O0_hoff.jsonl') | 975 | 221 |

## Checks

- all passed
