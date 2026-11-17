# Open-weight model without training, on the non-public pairs

Model: `zai-org/GLM-Z1-9B-0414@b221b06fefb2` (9.4 B parameters, weights checked against the publisher's sha256), vLLM, the model card's sampling settings, answer cap 30,000 tokens. Same system text, prompts and parser as the closed-model pilot (`LLM.md`). No training on our data.

Pairs: 2120 (all sets except the two Linux sets, which are public). Single side: 7101 answers (3 repeats, score = mean over repeats), 6 cut off at the cap, 245 with no readable probability. Forced choice: 4240 answers (1 repeat, both orders), 37 cut off, 58 with no readable answer; picked A 2077, B 2105.

Cell = share of pairs where the leaking side scores higher (tie = half); 0.5 = cannot tell. Square brackets: 95% interval from resampling programs (hosts for the injected sets), not pairs. Round brackets: pairs scored, when fewer than all.

| set | pairs | programs | single side | single side, each repeat | forced choice |
|---|---|---|---|---|---|
| counterfactual | 76 | 54 | 0.566 [0.45–0.68] | 0.514, 0.576, 0.549 | 0.263 [0.19–0.34] |
| injected fence | 357 | 277 | 0.471 [0.42–0.52] (356) | 0.542, 0.489, 0.486 | 0.780 [0.75–0.81] |
| injected inject | 364 | 281 | 0.613 [0.56–0.66] | 0.569, 0.514, 0.587 | 0.902 [0.88–0.92] |
| injected reorder | 261 | 220 | 0.513 [0.45–0.58] | 0.529, 0.508, 0.519 | 0.485 [0.44–0.53] |
| nofence | 92 | 92 | 0.538 [0.44–0.64] | 0.590, 0.450, 0.483 | 0.543 [0.47–0.61] |
| variants | 970 | 154 | 0.473 [0.43–0.52] | 0.454, 0.475, 0.499 | 0.657 [0.64–0.68] |

## Single side at cutoff 0.5

| set | leaking sides called leaking | safe sides called safe | both right | mean score, leaking / safe | equal scores |
|---|---|---|---|---|---|
| counterfactual | 76/76 | 1/76 | 1/76 | 0.83 / 0.80 | 2 |
| injected fence | 305/356 | 46/356 | 30/356 | 0.70 / 0.71 | 27 |
| injected inject | 311/364 | 75/364 | 59/364 | 0.70 / 0.65 | 22 |
| injected reorder | 220/261 | 40/261 | 27/261 | 0.69 / 0.70 | 14 |
| nofence | 89/92 | 1/92 | 1/92 | 0.80 / 0.79 | 5 |
| variants | 964/970 | 2/970 | 2/970 | 0.82 / 0.82 | 92 |

## Beside the closed model, on the closed model's own pairs

The closed-model pilot scored 30 pairs per set. Both columns of a row use those same pairs. With 30 pairs a 95% interval is roughly ±0.15.

| set | pairs | open, single side | closed, single side | open, forced choice | closed, forced choice |
|---|---|---|---|---|---|
| counterfactual | 30 | 0.450 | 0.733 | 0.267 | 0.483 |
| injected fence | 30 | 0.567 | 0.967 | 0.783 | 1.000 |
| injected inject | 30 | 0.517 | 0.717 | 0.917 | 1.000 |
| injected reorder | 30 | 0.533 | 0.817 | 0.583 | 0.900 |
| nofence | 30 | 0.550 | 0.417 | 0.633 | 0.800 |
| variants | 30 | 0.600 | 0.967 | 0.667 | 1.000 |

## Reading it

- Single side: no hardware set is ranked. Every interval on `counterfactual`, `nofence` and `variants` contains 0.5, and the model calls nearly every sequence leaking (mean score about 0.8 on both sides).
- Forced choice tells the model that exactly one side leaks. It then ranks `injected inject` and `injected fence` (the leaking side is longer, or lacks the fence) and `variants`, and is below 0.5 on `counterfactual`: it picks the mitigated side more often than the leaking one.
- `nofence` and `injected reorder` are at 0.5 under both protocols.
- The answer cap changed forced choice, not single side: at the first cap of 4,096 tokens 1,946 of 4,240 forced-choice answers were cut off (ticket 02, 2026-11-14).
- The closed model's row is a 30-pair pilot and partly a mix of two models (`LLM.md`); the comparison above is indicative only.
