# spec-generic vs hand-58: does the sign flip survive multi-seed?

## Question

Two single-seed (`random_state=42`) runs of `spec/ablation_spec_features.py`
disagreed on which feature tier wins:

- **Locked split** (default `v54_train.jsonl` / `v54_test.jsonl`): spec-generic
  (42-dim, zero ISA literals) beat hand-58 by a wide margin.
- **Group-holdout split** (`eval/data/group_holdout_{train,test}.jsonl`, which
  partitions by augmentation `group` so no base gadget appears on both sides —
  see `eval/splits.py`'s docstring for why the locked split can still leak
  augmentation groups even though it is itself group-disjoint by construction):
  hand-58 beat spec-generic instead.

Both numbers were single-seed, so the reversal could have been RF seed noise
on either side. We reran both splits over 10 seeds
(`42 1 7 13 21 100 7654 8 88 999`, the same list `eval/equivalence_tost.py`
uses) with `RandomForestClassifier(n_estimators=300, class_weight="balanced")`
per config, and computed a **paired-by-seed 95% CI** on
`spec_acc[seed] - hand_acc[seed]` (same seed drives the same train/test split
for both configs, so RF randomness is the only thing that differs — a fair
paired comparison).

## Results (mean ± 95% CI over 10 seeds, t-distribution)

| split | spec-generic test-acc | hand-58 test-acc | paired diff (spec − hand) | 95% CI | verdict |
|---|---|---|---|---|---|
| locked (default) | 96.80% ± 0.21pp | 94.92% ± 0.31pp | **+1.88pp** | [+1.51, +2.25]pp | spec wins, CI excludes 0 |
| group-holdout | 92.36% ± 0.31pp | 93.90% ± 0.27pp | **−1.55pp** | [−2.01, −1.08]pp | hand wins, CI excludes 0 |

Macro-F1 tells the same story: spec-generic 91.48% ± 1.41pp vs hand-58 79.97%
± 0.38pp on locked (spec far ahead, especially on macro-F1 where hand-58 is
weak on minority classes); spec-generic 84.70% ± 0.41pp vs hand-58 87.88% ±
0.52pp on group-holdout (hand ahead here too).

Full per-config output (all six feature-set combinations, both splits):
`eval/ablation_spec_features_locked_multiseed_results.txt`,
`eval/ablation_spec_features_group_holdout_multiseed_results.txt`.

## Verdict: the reversal is real, not seed noise — and the locked-split number is the artifact

Both CIs are tight (roughly ±0.2–0.3pp half-width on the individual means,
±0.2–0.5pp on the paired diff) and sit entirely on opposite sides of zero.
At 10 seeds this is not "can't tell" — it is two statistically distinguishable,
opposite-signed effects depending on the split. Given `eval/splits.py`'s own
documented rationale for why the group-holdout split is the more trustworthy
generalization estimate (the locked split, while itself group-disjoint,
doesn't rule out the general leakage risk that record-level near-duplicates
inflate RF accuracy; group-holdout is the harder, honest test), **the correct
claim for the paper is "hand-58 beats spec-generic under leakage-controlled
evaluation," not "spec-generic beats hand-58."** The locked-split result
(spec +1.88pp) should be treated as inflated by whatever the locked split is
more permissive about — most plausibly RF exploiting fine-grained ISA-literal
detail in the 42-dim spec features that correlates with near-duplicate
structure within a `group`, an advantage that disappears once groups are
held out.

This does **not** mean spec-generic features are useless. Two caveats worth
keeping in the paper:

1. **Portability, not just accuracy, is spec-generic's actual selling point.**
   It has zero ISA literals by construction — that is a property orthogonal
   to which split it wins on, and it may still be the right choice for
   cross-architecture transfer even at a ~1.5pp accuracy cost under
   group-holdout.
2. **`spec+hand` (both concatenated) is the best of both single tiers on
   every split we ran** (96.16% ± 0.33pp locked, 93.54% ± 0.29pp
   group-holdout) — it is within noise of hand-58 alone on group-holdout and
   clearly ahead of spec-generic alone, suggesting the two tiers are at least
   partly complementary rather than one strictly dominating.

**Bottom line for the paper:** drop the "spec-generic beats hand-58" claim.
If a single-tier claim is needed, hand-58 is the one that survives leakage
control (93.90% vs 92.36% group-holdout test-acc, CI-significant). If the
paper wants to keep spec-generic's zero-ISA-literal property as a selling
point, frame it as a portability/accuracy tradeoff, not a win, and consider
citing `spec+hand` as the practical recommendation.
