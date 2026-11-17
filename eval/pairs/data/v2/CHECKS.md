# Version-2 injected pairs: shortcut checks

Every bar is fitted on the train part only. Cell = share of pairs where the leaking side scores higher (tie = half); 0.5 = cannot tell. A bar well above 0.5 on val or test is a shortcut a trained model could use in place of the property.

## Sizes

| part | kind | pairs | hosts | host clusters | core templates | distinct cores |
|---|---|---|---|---|---|---|
| train | barrier | 1064 | 359 | 100 | 48 | 71 |
| train | decoy | 728 | 321 | 98 | 37 | 55 |
| val | barrier | 183 | 94 | 27 | 13 | 23 |
| val | decoy | 128 | 85 | 27 | 10 | 18 |
| test | barrier | 219 | 101 | 37 | 11 | 17 |
| test | decoy | 105 | 71 | 35 | 4 | 7 |
| test | reorder | 129 | 83 | 36 | 10 | 16 |

Pairs in val whose host cluster or core template occurs in train: 0.000; in test: 0.000 (must be 0).
Sequences that are a leaking side in one pair and a safe side in another: 0.

## Bars

| bar | test barrier (219) | test decoy (105) | test reorder (129) | val barrier (183) | val decoy (128) | train barrier (1064) | train decoy (728) |
|---|---|---|---|---|---|---|---|
| length | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 |
| barriers | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 |
| interior fence rule | 0.495 | 0.500 | 0.500 | 0.495 | 0.500 | 0.509 | 0.500 |
| memory operands | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 |
| index of first fence | 0.534 | 0.500 | 0.500 | 0.525 | 0.500 | 0.513 | 0.500 |
| index of first use of %r15 | 0.589 | 0.500 | 0.651 | 0.557 | 0.500 | 0.562 | 0.500 |
| distinct registers | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 |
| best single token on train (`-` => leak, train 0.500) | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 |
| opcode counts, boosted | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 |
| opcode counts + adjacent pairs, boosted | 0.525 | 0.500 | 0.523 | 0.650 | 0.500 | 0.971 | 0.500 |
| all tokens, boosted | 0.500 | 0.514 | 0.500 | 0.500 | 0.398 | 0.500 | 0.992 |
| all tokens + adjacent pairs, boosted | 0.589 | 0.595 | 0.461 | 0.596 | 0.453 | 0.986 | 0.996 |

The train columns show what each bar fits; the boosted bars memorise train, so only val and test columns count.

Largest distance from 0.5 on val or test, either direction: 0.151 (sampling alone moves a cell by about ±0.05 at 400 pairs and ±0.10 at 100).

Reading the `%r15` row: `%r15` is the victim's tainted pointer and every core uses it. In this victim any fence before the core protects it, so "a fence precedes every use of `%r15`" is the leak condition itself, not a construction artefact; a leaking side with such a fence cannot exist. The risk is the fixed name: rename the pointer consistently on both sides at training time so a model cannot learn `%r15` itself. On `reorder` (test only) the first `%r15` use moves later on the safe side when it moves at all; that is the reordering.
