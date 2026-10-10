# SPECTRE_V4 leak-vs-safe filter (retargeted ranker)

460 unique leak/safe sequences (LEAK 273 / SAFE 187; 76 unrunnable excluded, 0 conflicting dropped). RL round is the confounder, so AUCs are within-round and the learned head uses a prospective (train rounds $\le r$, test $r{+}1$) split.

| scorer | within-round AUC | prospective AUC | 95% CI (pooled) |
|---|---|---|---|
| sequence length (the bar) | 0.587 | --- | [0.708, 0.795] |
| opcode-bag LR (prospective) | 0.650 | 0.627 | [0.588, 0.688] |
| frozen-encoder head (prospective) | 0.656 | 0.772 | [0.667, 0.754] |

encoder built 360/460 PDGs.

## Leaks per oracle call (send the top-scored half to the oracle)

| ordering | leak rate in top 50% | vs random |
|---|---|---|
| length | 0.778 | 0.593 |
| opcode-bag LR | 0.748 | 0.593 |

A scorer only helps if its within-round AUC clears 0.5 and its top-half leak rate clears the base rate; length's 0.59 within-round is the bar to beat. The headline is which scorer, if any, does.

