# SPECTRE_V4 generated gadgets: what separates oracle LEAK from SAFE?

Samples: 3 RL runs. Verdicts leak/safe only (76 unrunnable excluded). 524 rows -> 460 unique sequences after dedupe (0 dropped for conflicting verdicts). LEAK 273 / SAFE 187.

ROC-AUC: 0.5 = no signal, >0.5 = higher score => more likely LEAK. Bootstrap 95% CI over unique sequences.

RL round is a confounder (leak rate rises with round, and gadgets change with round), so each scorer also gets a WITHIN-ROUND AUC: computed per round and averaged over rounds that contain both outcomes.

| scorer | ROC-AUC | 95% CI | within-round AUC |
|---|---|---|---|
| trivial: sequence length | 0.751 | [0.708, 0.795] | 0.587 |
| trivial: lfence count (higher => leak?) | 0.368 | [0.325, 0.413] | 0.518 |
| trivial: -lfence count (fewer fences => leak?) | 0.632 | [0.587, 0.675] | 0.482 |
| learned bar: opcode-bag LR (leave-one-RL-run-out) | 0.443 | [0.389, 0.499] | 0.449 |
| locked classifier: attack_prob (1-P(BENIGN)) [n=360 buildable] | 0.141 | [0.102, 0.186] | 0.272 |
| locked classifier: P(SPECTRE_V4) [n=360 buildable] | 0.207 | [0.157, 0.262] | 0.325 |
| (check) length, restricted to the same 360 buildable | 0.780 | | 0.579 |

Correlation of classifier attack_prob with sequence length (buildable): -0.655. If the classifier tracks length (negatively) and length tracks LEAK, its inversion is a length effect.

## Headroom: oracle leak rate by RL round (leak/(leak+safe), unique sequences)

| round | n | leak rate |
|---|---|---|
| 0 | 100 | 0.18 |
| 1 | 107 | 0.51 |
| 2 | 94 | 0.85 |
| 3 | 79 | 0.71 |
| 4 | 80 | 0.80 |

A ranker's best-case gain over random ordering is about 1 / (leak rate). Rounds where the rate is near 1 leave no room to filter.
