# Version-2 injected pairs: shortcut checks

Every bar is fitted on the train part only. Cell = share of pairs where the leaking side scores higher (tie = half); 0.5 = cannot tell. A bar well above 0.5 on val or test is a shortcut a trained model could use in place of the property.

## Sizes

| part | kind | pairs | hosts | host clusters | core templates | distinct cores |
|---|---|---|---|---|---|---|
| train | barrier | 249 | 187 | 77 | 48 | 70 |
| train | decoy | 172 | 140 | 71 | 34 | 51 |
| val | barrier | 63 | 51 | 22 | 13 | 21 |
| val | decoy | 46 | 40 | 21 | 9 | 16 |
| test | barrier | 130 | 79 | 33 | 11 | 17 |
| test | decoy | 61 | 48 | 30 | 4 | 7 |
| test | reorder | 75 | 57 | 32 | 9 | 14 |

Pairs in val whose host cluster or core template occurs in train: 0.000; in test: 0.000 (must be 0).
Sequences that are a leaking side in one pair and a safe side in another: 0.

## Bars

| bar | test barrier (130) | test decoy (61) | test reorder (75) | val barrier (63) | val decoy (46) | train barrier (249) | train decoy (172) |
|---|---|---|---|---|---|---|---|
| length | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 |
| barriers | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 |
| interior fence rule | 0.504 | 0.500 | 0.500 | 0.484 | 0.500 | 0.506 | 0.500 |
| memory operands | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 |
| index of first fence | 0.462 | 0.500 | 0.500 | 0.508 | 0.500 | 0.566 | 0.500 |
| index of first use of %r15 | 0.588 | 0.500 | 0.647 | 0.476 | 0.500 | 0.548 | 0.500 |
| distinct registers | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 |
| best single token on train (`-` => leak, train 0.500) | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 |
| opcode counts, boosted | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 | 0.500 |
| opcode counts + adjacent pairs, boosted | 0.496 | 0.500 | 0.420 | 0.452 | 0.500 | 0.994 | 0.500 |
| all tokens, boosted | 0.500 | 0.607 | 0.500 | 0.500 | 0.435 | 0.500 | 1.000 |
| all tokens + adjacent pairs, boosted | 0.454 | 0.557 | 0.600 | 0.556 | 0.522 | 0.994 | 1.000 |

The train columns show what each bar fits; the boosted bars memorise train, so only val and test columns count.

Largest distance from 0.5 on val or test, either direction: 0.147 (sampling alone moves a cell by about ±0.05 at 400 pairs and ±0.10 at 100).

Reading the `%r15` row: `%r15` is the victim's tainted pointer and every core uses it. In this victim any fence before the core protects it, so "a fence precedes every use of `%r15`" is the leak condition itself, not a construction artefact; a leaking side with such a fence cannot exist. The risk is the fixed name: rename the pointer consistently on both sides at training time so a model cannot learn `%r15` itself. On `reorder` (test only) the first `%r15` use moves later on the safe side when it moves at all; that is the reordering.
