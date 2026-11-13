# LLM baseline on the pair benchmark

Model asked: `claude-opus-5-5`, effort low, no training on our data, 3 repeat(s). Sample: 240 pairs, 30 per set (seeded). Every column below is computed on these same pairs, so the columns are comparable with each other but not with `PAIRS.md`.

Calls: 2841, cost $56.23. Served by: `claude-opus-5-5` 2546, `claude-opus-4-8` 295. A call served by another model is a server-side fallback after the first model declined; the row is therefore a mix of the two models.

Cell = share of pairs where the leaking side scores higher (tie = half). 0.5 = cannot tell. With 30 pairs, one pair is 0.033 and a 95% interval around 0.8 is roughly ±0.15. LLM cells: mean ± standard deviation over repeats [lowest–highest repeat]; the spread is run-to-run change on the same pairs, not sampling error.

| set | pairs | shorter | fewer barriers | graph model (10 seeds) | graph model, branch edges (10 seeds) | LLM single side | LLM forced choice |
|---|---|---|---|---|---|---|---|
| counterfactual | 30 | 0.167 | 0.167 | 0.220 (10) | 0.253 (10) | 0.667 ± 0.088 [0.60–0.77] | 0.528 ± 0.010 [0.52–0.53] |
| injected fence | 30 | 1.000 | 1.000 | 0.000 (10) | 0.000 (10) | 0.911 ± 0.025 [0.88–0.93] | 1.000 ± 0.000 [1.00–1.00] |
| injected inject | 30 | 0.000 | 0.500 | 0.645 (10) | 0.633 (10) | 0.733 ± 0.044 [0.70–0.78] | 1.000 ± 0.000 [1.00–1.00] |
| injected reorder | 30 | 0.500 | 0.500 | 0.528 (10) | 0.580 (10) | 0.789 ± 0.019 [0.77–0.80] | 0.867 ± 0.017 [0.85–0.88] |
| linux | 30 | 0.983 | 0.500 | 0.393 (10) | 0.407 (10) | 0.867 ± 0.050 [0.82–0.92] | 0.956 ± 0.010 [0.95–0.97] |
| linux_arm64 | 30 | 0.983 | 0.983 | 0.450 (1) | 0.750 (1) | 0.956 ± 0.010 [0.95–0.97] | 0.906 ± 0.025 [0.88–0.93] |
| nofence | 30 | 0.533 | 0.500 | 0.510 (10) | 0.500 (10) | 0.494 ± 0.042 [0.45–0.53] | 0.789 ± 0.019 [0.77–0.80] |
| variants | 30 | 0.667 | 0.667 | 0.840 (10) | 0.827 (10) | 0.950 ± 0.044 [0.92–1.00] | 1.000 ± 0.000 [1.00–1.00] |

The number in brackets is how many seeds have scores for that set (ARM pairs: fewer until the remaining cluster jobs are in).

## Single side at cutoff 0.5 (score = mean over repeats)

| set | leaking sides called leaking | safe sides called safe | both right |
|---|---|---|---|
| counterfactual | 14/30 | 23/30 | 8/30 |
| injected fence | 9/30 | 29/30 | 8/30 |
| injected inject | 14/30 | 24/30 | 8/30 |
| injected reorder | 19/30 | 25/30 | 14/30 |
| linux | 19/30 | 27/30 | 16/30 |
| linux_arm64 | 15/30 | 30/30 | 15/30 |
| nofence | 7/30 | 18/30 | 2/30 |
| variants | 8/30 | 29/30 | 8/30 |

## Reading it

- `linux` and `linux_arm64` are public kernel commits: the model may have seen them. The other sets are not public.
- Forced choice tells the model that exactly one side leaks; single side does not. Single side is the like-for-like comparison with the other detectors.
- Hardware labels (`variants`, `counterfactual`, `nofence`) are what one CPU (i5-8300H) did. The model answers from general knowledge of the patterns.
- Thinking is always on for this model and it accepts no temperature, so repeats are plain re-asks of the same prompt.
