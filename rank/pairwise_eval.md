# Pairwise (order-aware) leak-vs-safe ranker — result

Date: 2026-11-01. Cluster run `filter_head` (job on hastings, device cpu,
samples `gen/rl_lencond_samples.jsonl`). Code: `rank/pairwise_head.py`,
`rank/filter_gate.py train-pairwise`; eval row in `rank/eval_v4_filter.py` /
`rank/eval_v2_filter.py`; spec `docs/SPEC_F_riscv_G_pairwise_2026-10-27.md`.

## Question
Does an order-aware **pairwise** head (RankNet-style loss over within-round
(leak, safe) pairs on the frozen GINE embedding) beat the existing **pointwise**
logistic head as a pre-oracle leak-vs-safe ranker? (Supervisor's explicit ask;
only a pointwise head existed.)

## Answer: no improvement — a negative result, limited by SAFE scarcity

### SPECTRE_V4 (the only class with both leak and safe)
460 unique leak/safe sequences (273 leak / 187 safe; 76 unrunnable excluded).
Training set after dedup/build: n=279, **262 leak : 17 safe**.

| scorer | within-round AUC | prospective AUC |
|---|---|---|
| sequence length (bar) | 0.587 | --- |
| opcode-bag LR | 0.650 | 0.627 |
| frozen-encoder head (pointwise) | **0.656** | **0.771** |
| pairwise encoder head | 0.628 | 0.764 |

The pairwise head is **below** the pointwise head within-round (0.628 vs 0.656,
and under the opcode-bag 0.650) and **tied** prospectively (0.764 vs 0.771). It
clears the length bar (0.587) and nothing more.

### SPECTRE_V2
1087 unique leak/safe (**1 leak : 1086 safe**; 713 unrunnable excluded). Every
learned scorer sits at AUC 0.500 — there is one positive, so nothing to rank;
the length bar's 0.602 is noise at n=1. Pairwise = 0.500, as expected. This is
the known dead-V2-yield situation, not a ranker property.

## Diagnosis
The binding constraint is **label imbalance / SAFE scarcity**, not the
pointwise-vs-pairwise choice:
- V4 has only 17 SAFE gadgets. Within-round pairs are leak×safe, so the pairwise
  objective is starved of negatives and most rounds contribute few pairs.
- The pairwise head is a 128-hidden nonlinear MLP; the pointwise head is a
  linear logistic regressor with C=0.5 regularization. On ~17 minority examples
  the regularized linear model is the more robust fit, so the extra capacity of
  the pairwise MLP does not pay off and slightly hurts within-round.
- The gain ceiling is low regardless: both learned heads reach ~0.77 prospective
  and the in-loop leaks-per-call value shrinks to ~1.5x by late rounds because
  the generator's own yield is already high (see `tab:gateloop`).

## Decision
- **Pointwise head stays the default.** Pairwise gives no lift on current data.
- **Pairwise head kept in-tree** (correct, drop-in behind `LeakGate`, 9 unit
  tests in `tests/rank/test_pairwise_head.py`) for a re-run once SAFE V4 data
  grows (more mitigated twins) or the i5 V2 campaign supplies V2 positives.
- Folded a one-line negative result into the paper (`sec:rank`, `tab:v4filter`
  pairwise row).

## Reproduce
```
sbatch --export=ALL,HEAD=both gen/train_filter_head.sbatch   # trains both heads
sbatch rank/eval_filters.sbatch                               # -> rank/v4_filter_eval.md, v2_filter_eval.md
```
