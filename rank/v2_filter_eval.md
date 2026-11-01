# SPECTRE_V2 leak-vs-safe filter (retargeted ranker)

1087 unique leak/safe sequences (LEAK 1 / SAFE 1086; 713 unrunnable excluded, 0 conflicting dropped). Source: Spectector-Combined `-v 2` oracle labels (gen/rl_v2_bootstrap). RL round is the confounder, so AUCs are within-round and the learned head uses a prospective (train rounds $\le r$, test $r{+}1$) split.

| scorer | within-round AUC | prospective AUC | 95% CI (pooled) |
|---|---|---|---|
| sequence length (the bar) | 0.602 | --- | [0.606, 0.660] |
| opcode-bag LR (prospective) | 0.500 | nan | [0.662, 0.690] |
| frozen-encoder head (prospective) | 0.500 | nan | [0.662, 0.690] |
| pairwise encoder head (prospective) | 0.500 | nan | [0.628, 0.661] |

encoder built 1087/1087 PDGs.

## Leaks per oracle call (send the top-scored half to the oracle)

| ordering | leak rate in top 50% | vs random |
|---|---|---|
| length | 0.002 | 0.001 |
| opcode-bag LR | 0.002 | 0.001 |

A scorer only helps if its within-round AUC clears 0.5 and its top-half leak rate clears the base rate. With V2's ~0.8% base rate (LEAK 1/1087) these are low-n estimates; re-run as the bootstrap (or the i5 hardware V2 campaign) adds leaks.

