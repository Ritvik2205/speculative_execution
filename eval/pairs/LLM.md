# LLM baseline on the pair benchmark

Model asked: `claude-opus-5-5`, effort low, no training on our data, 1 repeat. Sample: 240 pairs, 30 per set (seeded). Every column below is computed on these same pairs, so the columns are comparable with each other but not with `PAIRS.md`.

Calls: 948, cost $18.68. Served by: `claude-opus-5-5` 857, `claude-opus-4-8` 91. A call served by another model is a server-side fallback after the first model declined; the row is therefore a mix of the two models.

Cell = share of pairs where the leaking side scores higher (tie = half). 0.5 = cannot tell. With 30 pairs, one pair is 0.033 and a 95% interval around 0.8 is roughly ±0.15.

| set | pairs | shorter | fewer barriers | graph model (10 seeds) | graph model, branch edges (10 seeds) | LLM single side | LLM forced choice |
|---|---|---|---|---|---|---|---|
| counterfactual | 30 | 0.167 | 0.167 | 0.220 (10) | 0.253 (10) | 0.767 | 0.533 |
| injected fence | 30 | 1.000 | 1.000 | 0.000 (10) | 0.000 (10) | 0.933 | 1.000 |
| injected inject | 30 | 0.000 | 0.500 | 0.645 (10) | 0.633 (10) | 0.783 | 1.000 |
| injected reorder | 30 | 0.500 | 0.500 | 0.528 (10) | 0.580 (10) | 0.800 | 0.883 |
| linux | 30 | 0.983 | 0.500 | 0.393 (10) | 0.407 (10) | 0.917 | 0.950 |
| linux_arm64 | 30 | 0.983 | 0.983 | 0.450 (1) | 0.750 (1) | 0.967 | 0.883 |
| nofence | 30 | 0.533 | 0.500 | 0.510 (10) | 0.500 (10) | 0.533 | 0.767 |
| variants | 30 | 0.667 | 0.667 | 0.840 (10) | 0.827 (10) | 0.917 | 1.000 |

The number in brackets is how many seeds have scores for that set (ARM pairs: fewer until the remaining cluster jobs are in).

## Single side at cutoff 0.5

| set | leaking sides called leaking | safe sides called safe | both right |
|---|---|---|---|
| counterfactual | 19/30 | 18/30 | 8/30 |
| injected fence | 8/30 | 29/30 | 8/30 |
| injected inject | 16/30 | 24/30 | 10/30 |
| injected reorder | 18/30 | 25/30 | 13/30 |
| linux | 20/30 | 29/30 | 19/30 |
| linux_arm64 | 16/30 | 30/30 | 16/30 |
| nofence | 9/30 | 19/30 | 3/30 |
| variants | 9/30 | 29/30 | 9/30 |

## Reading it

- `linux` and `linux_arm64` are public kernel commits: the model may have seen them. The other sets are not public.
- Forced choice tells the model that exactly one side leaks; single side does not. Single side is the like-for-like comparison with the other detectors.
- Hardware labels (`variants`, `counterfactual`, `nofence`) are what one CPU (i5-8300H) did. The model answers from general knowledge of the patterns.
- One repeat: no run-to-run spread is reported.
