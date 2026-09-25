# Locked classifier vs oracle on generated gadgets

Samples: 1987 realized gadgets from 10 run(s); arch forced to x86_64. Classifier: models/locked_classifier.json (ensemble). Oracle verdict is the one logged at generation time.

- built into a graph: 1977/1987 (10 too short / unbuildable)
- oracle verdicts: {'unrunnable': 456, 'leak': 1531}

## attack_prob (1 − P(BENIGN)) by oracle verdict

| group | n | mean attack_prob | median |
|---|---|---|---|
| oracle LEAK | 1531 | 0.700 | 0.823 |
| oracle non-LEAK | 446 | 0.782 | 0.917 |

**ROC-AUC (attack_prob separates LEAK from non-LEAK): 0.441** (0.5 = no signal)

## As a pre-filter: keep gadgets with attack_prob >= t

| t | LEAKs kept (recall) | non-LEAKs kept (waste) |
|---|---|---|
| 0.3 | 83% | 91% |
| 0.5 | 77% | 84% |
| 0.7 | 66% | 72% |
| 0.9 | 39% | 52% |

## What class does the classifier assign LEAK gadgets?

The RL target here is SPECTRE_V1; a class-aware reward needs the classifier to say SPECTRE_V1, not merely 'some attack'.

| predicted label | count (of oracle-LEAK) |
|---|---|
| BENIGN | 439 |
| SPECTRE_V4 | 315 |
| SPECTRE_V1 | 252 |
| SPECTRE_RSB | 238 |
| SPECTRE_V2 | 138 |
| BRANCH_HISTORY_INJECTION | 100 |
| RETBLEED | 24 |
| L1TF | 16 |
| MDS | 6 |
| INCEPTION | 3 |
