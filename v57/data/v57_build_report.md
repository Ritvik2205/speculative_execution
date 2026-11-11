# v57 dataset build

seed 0, group cap 6, test share 0.2, near-duplicate threshold 0.8.

- attacks read: 3886; dropped for an ISA with no benign pool: {'arm32': 17}
- group cap 6: 3886 -> 2969 attack records
- benign x86_64: 6911 -> 6360 after near-duplicate thinning
- benign x86_64: pool 6360, wanted 2564, got 2537 (25 windowed), unfilled 27
- benign arm64: 3958 -> 691 after near-duplicate thinning
- benign arm64: pool 691, wanted 405, got 383 (239 windowed), unfilled 22
- held-out records checked against: 1727

- clusters: 1171 over 5889 records
- near-duplicate overlap train->test: 0.0000
- shortcut balanced accuracy on leak/safe: ISA alone 0.500, length alone 0.425

## Leak label by ISA

| | train | test |
|---|---|---|
| ('arm64', 'LEAK') | 312 | 93 |
| ('arm64', 'SAFE') | 295 | 88 |
| ('x86_64', 'LEAK') | 2042 | 522 |
| ('x86_64', 'SAFE') | 2044 | 493 |

## Mechanism by ISA

| | train | test |
|---|---|---|
| ('arm64', 'COND_BRANCH', 'syn') | 3 | 1 |
| ('arm64', 'INDIRECT_BRANCH', 'syn') | 111 | 30 |
| ('arm64', 'RETURN', 'syn') | 188 | 56 |
| ('arm64', 'SAFE', 'syn') | 295 | 88 |
| ('arm64', 'STORE_BYPASS', 'syn') | 10 | 6 |
| ('x86_64', 'COND_BRANCH', 'hw') | 133 | 33 |
| ('x86_64', 'COND_BRANCH', 'syn') | 423 | 106 |
| ('x86_64', 'FAULTING_LOAD', 'hw') | 234 | 58 |
| ('x86_64', 'FAULTING_LOAD', 'syn') | 311 | 86 |
| ('x86_64', 'INDIRECT_BRANCH', 'syn') | 253 | 63 |
| ('x86_64', 'RETURN', 'syn') | 551 | 139 |
| ('x86_64', 'SAFE', 'syn') | 2044 | 493 |
| ('x86_64', 'STORE_BYPASS', 'hw') | 75 | 19 |
| ('x86_64', 'STORE_BYPASS', 'syn') | 62 | 18 |

## Source

| | train | test |
|---|---|---|
| ('LEAK', 'revizor_l1tf_trainpool.jsonl') | 132 | 33 |
| ('LEAK', 'revizor_mds_trainpool.jsonl') | 102 | 25 |
| ('LEAK', 'revizor_spectre_v1_trainpool.jsonl') | 133 | 33 |
| ('LEAK', 'revizor_spectre_v4_trainpool.jsonl') | 75 | 19 |
| ('LEAK', 'v54_test.jsonl') | 297 | 95 |
| ('LEAK', 'v54_train.jsonl') | 1615 | 410 |
| ('SAFE', 'benign_filler_arm64.jsonl') | 65 | 27 |
| ('SAFE', 'benign_filler_x86_64.jsonl') | 0 | 45 |
| ('SAFE', 'benign_x86_64_gcc.jsonl') | 1063 | 244 |
| ('SAFE', 'benign_x86_64_gcc_O0_hoff.jsonl') | 981 | 204 |
| ('SAFE', 'v54_test.jsonl') | 82 | 0 |
| ('SAFE', 'v54_train.jsonl') | 148 | 61 |

## Checks

- all passed
