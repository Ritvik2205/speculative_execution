# Mechanism-vs-shape results

Plan: `docs/superpowers/plans/2026-11-02-mechanism-vs-shape.md`.
Status: Task 7 step 1 (in-distribution regression) done; H0/H1/H2 pending the
i5 hardware labels (Task 4) and the allhw3 cluster run (Task 6).

## 1. In-distribution regression: B1 + `--mech-features` (Task 7 step 1)

Same split, recipe and seeds as B1; the only config difference is
`--mech-features` (6 extra label-free window features, 58 → 64 dims).
Control = the on-disk B1 checkpoints `eval/cluster_out/rv_embed_specfix_s*`,
paired by seed. Test set = locked v54 test, n = 1670.

| arm | s1 | s7 | s13 | s21 | s42 | mean ± sd |
|---|---|---|---|---|---|---|
| B1 (`rv_embed_specfix`) | 95.09 | 96.17 | 96.11 | 95.75 | 97.19 | 96.06 ± 0.76 |
| B1 + mech (`b1_mech`) | 94.91 | 94.67 | 95.15 | 95.93 | 94.85 | 95.10 ± 0.49 |
| paired diff | −0.18 | −1.50 | −0.96 | +0.18 | −2.34 | −0.96 ± 1.01 |

- TOST (`eval/equivalence_tost.tost`, Welch, margin 0.5pp): diff −0.96,
  90% CI [−1.73, −0.19]. **Not equivalent, not non-inferior.** Also fails at
  a 1.0pp margin.
- Paired tests: t p = 0.101, Wilcoxon p = 0.188. The drop is consistent in
  direction (4/5 seeds) but not significant at n = 5.
- The control mean (96.06) is above the paper's cached B1 (95.62 ± 0.67).
  Against the cached figure the drop is −0.52pp. The paired same-config
  control is the one to quote.

Per-class recall (mean over seeds, paired t):

| class | n | B1 | +mech | diff | p |
|---|---|---|---|---|---|
| SPECTRE_V2 | 154 | 84.68 | 76.36 | −8.31 | 0.115 |
| BHI | 67 | 92.24 | 88.06 | −4.18 | 0.052 |
| MDS | 45 | 94.67 | 90.67 | −4.00 | 0.322 |
| INCEPTION | 94 | 88.09 | 87.02 | −1.06 | 0.694 |
| L1TF | 37 | 63.24 | 67.57 | +4.32 | 0.461 |
| RETBLEED | 75 | 98.40 | 99.20 | +0.80 | 0.553 |
| SPECTRE_V4 | 124 | 99.03 | 99.52 | +0.48 | 0.208 |
| SPECTRE_V1 | 42 | 100.00 | 99.52 | −0.48 | 0.374 |
| BENIGN | 1031 | 99.34 | 99.36 | +0.02 | 0.621 |

(SPECTRE_RSB n = 1, omitted.)

**Reading.** The window features cost about 1pp in-distribution, and none
of the per-class changes is significant. The loss is mostly on SPECTRE_V2
and BHI, the indirect-branch classes. The features do not model either
class: they cover only V1/V4/load windows. This matches the known
SPECTRE_V2 fragility under feature fusion (v56 rerun: −9.55pp). The
mechanism features are therefore not free. If allhw3_mech wins on hardware
(H2), that win must be weighed against this in-distribution cost. A
variant that adds the features only to the leak/safe decision, not the
class head, would avoid it, but that is out of scope for this plan.

## 2. Class transfer (Task 7 step 2) — pending allhw3

## 3. H1 on the held-out counterfactuals (Task 4 labels, i5 run 2026-11-02..04)

`eval/data/revizor_hwlabel_cf_heldout.jsonl`: the 301 `cf_*` rows of the i5
emit (n = 270 / 116 bases without MDS). `check_hw_labels`: clean,
vulnerable share 0.73. Freeze held: `spec_window.py` sha256 = tag
`mech-rule-frozen` (c4bbe28f…), and no `cf_*` row existed when it was frozen.
Full tables: `eval/mechanism/scoreboard_cf.md`.

| scorer | acc | vs interior [95% CI] | vs always-attack [95% CI] |
|---|---|---|---|
| interior (shape bar) | 0.274 | — | −0.452 [−0.570, −0.333] |
| always-attack | 0.726 | +0.452 [0.333, 0.570] | — |
| mechanism ("all", primary) | 0.863 | +0.589 [0.494, 0.685] | **+0.137 [0.095, 0.184]** |
| mechanism-any (secondary) | 0.719 | +0.444 [0.360, 0.529] | −0.007 [−0.092, 0.076] |

**Pre-registered verdict: H1 NOT ESTABLISHED.** The primary mode beats both
bars, but the secondary mode does not beat always-attack, and the rule says
that disagreement means not established.

Per counterfactual type (MDS excluded):
- `cf_nonleak` (n = 109, 56 vulnerable): the only type with mixed hardware
  labels, so the only discriminating test. Both modes beat both bars:
  "all" 0.81, +0.29 [0.21, 0.38] vs always-attack. By class, V1 0.86
  (+0.17 vs AA, both modes), L1TF 0.89 (all), V4 0.47 (all) vs 1.00 (any).
- `cf_wrong_path` (34/34 vulnerable) and `cf_fencepass` (106/108 vulnerable):
  one-sided labels. They refute the shape bar (interior gets 0.00 / 0.02),
  but cannot separate the mechanism from always-attack.
- `cf_after_bypass` (V4, 19/19 mitigated): "all" gets 0.42, "any" 0.95.

**Why the modes split: the V4 window.** On hardware, any fence between the
store and the bypassing load stops SSB (all 19 V4 cf_nonleak and 19
cf_after_bypass mitigate). "All" demands that every V4 window is cut, and
V4 programs open many store windows. "Any" fits V4 and fails on L1TF and
fencepass.

Exploratory only (post hoc, not a test): "any" for V4 and "all" elsewhere
gives cf 0.889, +0.163 [0.118, 0.215] vs always-attack, with dev unchanged
at 0.992. Testing it needs re-registration as a new frozen rule and a label
set it has not seen, e.g. the training-pool counterfactuals.

Dev-806 (pinned): mechanism 0.992 = interior 0.992. The i5 emit had
rewritten the dev file to 1080 rows, dropping 60 dev rows. It was restored
from 515e8755; the 1080-row version remains in 8fe55718.

## 4. Re-registration (2026-11-04, before any allhw3 result)

Plan § "Re-registration 2026-11-04". H2/H2b now need to beat **always-attack**
on `cf_heldout` and on `cf_nonleak` (interior is no bar on cf). H2-strong also
needs ≥ `mechanism-v2` on `cf_nonleak`. H1b tests the v2 rule
(`eval/mechanism/hybrid.py`, tag `mech-rule-frozen-v2`) on the training-pool
counterfactuals. Its `cf_heldout` numbers (0.889 overall; `cf_nonleak` 0.899,
+0.385 [0.294, 0.477] vs always-attack) are post hoc.

## 5. H0: existing learned models on the held-out counterfactuals

Cluster job `score_allhw3` (e606a5ca): all 20 checkpoints passed their
reproduce gate. MDS is excluded. Each entry is the 5-seed mean; brackets are
the base-clustered 95% CI of the seed-mean paired difference. Full tables:
`eval/mechanism/scoreboard_allhw3.md`.

| arm | dev-806 acc | cf acc | cf vs always-attack | cf_nonleak acc | cf_nonleak vs AA | cf leak-call rate |
|---|---|---|---|---|---|---|
| always-attack | 0.401 | 0.726 | — | 0.514 | — | 1.00 |
| interior | 0.992 | 0.274 | −0.452 | 0.486 | −0.028 | 0.00 |
| mechanism-v2 (post hoc) | 0.992 | 0.889 | +0.163 | 0.899 | +0.385 | — |
| b1 | 0.198 ± 0.051 | 0.332 ± 0.021 | −0.394 [−0.463, −0.330] | 0.218 | −0.295 [−0.385, −0.215] | 0.99 |
| b1_mech | 0.178 ± 0.071 | 0.324 ± 0.043 | −0.402 [−0.470, −0.338] | 0.198 | −0.316 [−0.404, −0.235] | 1.00 |
| allhw | 0.621 ± 0.024 | 0.270 ± 0.015 | −0.456 [−0.568, −0.340] | 0.497 | −0.017 [−0.209, +0.169] | 0.02 |
| allhw2 | 0.817 ± 0.024 | 0.266 ± 0.053 | −0.460 [−0.530, −0.391] | 0.426 | −0.088 [−0.206, +0.022] | 0.33 |

Binary leak/safe accuracy (the class is ignored; B1 calls most real gadgets
SPECTRE_V1, so exact-label accuracy also charges it for class errors):

| arm | cf binary | vs AA | cf_nonleak binary | vs AA |
|---|---|---|---|---|
| b1 | 0.716 | −0.010 [−0.016, −0.004] | 0.512 | −0.002 |
| b1_mech | 0.721 | −0.004 [−0.009, −0.001] | 0.514 | +0.000 |
| allhw | 0.270 | −0.456 | 0.497 | −0.017 |
| allhw2 | 0.269 | −0.457 | 0.433 | −0.081 |

**H0 holds for every existing model.** None beats always-attack on cf or on
`cf_nonleak`, on either metric. Two failure modes, both shape:
- **B1 / b1_mech = always-attack.** They flag 99–100% of counterfactuals as
  leaking, whatever the fence. Adding the mechanism features as inputs does
  not change this, because B1's training data has no fence labels to learn
  from.
- **allhw / allhw2 = "has a fence ⇒ safe".** Every counterfactual contains a
  fence, so they call 67–98% of them BENIGN. They score 0.00 on
  `cf_wrong_path` (34/34 leak) and 0.02–0.17 on `cf_fencepass` (106/108
  leak). allhw2's 0.817 on dev came from fence presence lining up with
  labels in the old variant set; on cf it is 0.27.

The non-learned v2 rule leads every learned model by ≥ 0.56 on cf. allhw3
has to close this gap with hardware labels alone.

## 6. H2 / H2b / H1b — pending (training-pool labels; allhw3)
