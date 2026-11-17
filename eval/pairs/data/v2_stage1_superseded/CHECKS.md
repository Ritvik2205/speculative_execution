# Version-2 injected pairs: shortcut checks

Every bar is fitted on the train part only. Cell = share of pairs where the leaking side scores higher (tie = half); 0.5 = cannot tell. A bar well above 0.5 on val or test is a shortcut a trained model could use in place of the property.

## Sizes

| part | kind | pairs | hosts | host clusters | core templates | distinct cores |
|---|---|---|---|---|---|---|
| train | barrier | 249 | 187 | 77 | 48 | 70 |
| train | decoy | 193 | 154 | 71 | 37 | 55 |
| val | barrier | 63 | 51 | 22 | 13 | 21 |
| val | decoy | 53 | 46 | 23 | 10 | 18 |
| test | barrier | 130 | 79 | 33 | 11 | 17 |
| test | decoy | 60 | 48 | 30 | 4 | 7 |
| test | reorder | 74 | 58 | 32 | 8 | 13 |

Pairs in val whose host cluster or core template occurs in train: 0.000; in test: 0.000 (must be 0).
Sequences that are a leaking side in one pair and a safe side in another: 0.

## Bars

| bar | test barrier (130) | test decoy (60) | test reorder (74) | val barrier (63) | val decoy (53) | train barrier (249) | train decoy (193) |
|---|---|---|---|---|---|---|---|
| length | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 |
| barriers | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 |
| interior fence rule | 0.504 | 0.500 | 0.500 | 0.484 | 0.500 | 0.506 | 0.500 |
| memory operands | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 |
| index of first fence | 0.462 | 0.500 | 0.500 | 0.508 | 0.500 | 0.566 | 0.500 |
| index of first use of %r15 | 0.588 | 0.500 | 0.649 | 0.476 | 0.500 | 0.548 | 0.500 |
| distinct registers | 0.500 | 0.608 | 0.500 | 0.500 | 0.481 | 0.500 | 0.526 |
| best single token on train (`%r12` => leak, train 0.506) | 0.500 | 0.500 | 0.500 | 0.500 | 0.528 | 0.500 | 0.513 |
| opcode counts, boosted | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 |
| opcode counts + adjacent pairs, boosted | 0.469 | 0.500 | 0.527 | 0.500 | 0.500 | 0.998 | 0.500 |
| all tokens, boosted | 0.500 | 0.658 | 0.500 | 0.500 | 0.604 | 0.500 | 1.000 |
| all tokens + adjacent pairs, boosted | 0.496 | 0.400 | 0.574 | 0.587 | 0.491 | 0.994 | 1.000 |

The train columns show what each bar fits; the boosted bars memorise train, so only val and test columns count.

Largest distance from 0.5 on val or test, either direction: 0.158 (sampling alone moves a cell by about ±0.05 at 400 pairs and ±0.10 at 100).
