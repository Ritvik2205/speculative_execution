# Stages 4-5: inside the GINE (representations, fusion, head)

Scripts: `stage45_extract.py` (hooks every layer and dumps a cache), `stage45_analyze.py` (probes, geometry, branch ablation, margins -> `stage45_results.json`), `stage45_attrib.py` (integrated gradients and attention -> `stage45_attrib.json`).
Arms: shared_gine, B1 (`rv_embed_specfix`), allhw, allhw2, each with seeds {1,7,13,21,42}, 20 checkpoints in all. Loading, config and label vocab come from `eval/score_hwlabel_variants.py`. The manual forward is asserted equal to `model(...)` to within 1e-4.
**Reproduce gate:** 17/20 checkpoints reproduce exactly. Three B1 seeds (s1, s7, s13) drift by 1.2e-3 to 2.4e-3, which is 2 to 4 of 1670 test records. That is the same drift the existing `eval/shared_config_score/b1_*` runs carry, so those seeds were run with tolerance 3e-3. The cached shared_gine heldout predictions match `eval/shared_config_preds` 112/112 for every seed.
Which real gadgets each arm is scored on: shared_gine uses only the 112 shared-heldout gadgets, because it trained on the shared-train set. The other arms use all 224 shared gadgets, none of which they saw in training.

## 1. Linear probes per layer
Logistic regression, StratifiedGroupKFold by `seed_group`, balanced accuracy, mean over 5 model seeds. "Null" is a permutation of labels at the seed-group level (20 permutations).

| rep | real MDS/L1TF (shared_gine) | real MDS/L1TF (B1) | synthetic MDS/L1TF (shared_gine) | real MDS/L1TF/V4 (shared_gine) | synthetic MDS/L1TF/V4 |
|---|---|---|---|---|---|
| hc_raw (input) | 0.40 | 0.43 | 0.79 | 0.29 | 0.72 |
| in_mean (raw node feats) | 0.54 | 0.53 | 0.89 | 0.27 | 0.75 |
| L1 | 0.58 | 0.53 | 0.91 | 0.34 | 0.81 |
| L3 | 0.52 | 0.53 | 0.93 | 0.31 | 0.70 |
| attn_pool | 0.49 | 0.47 | 0.96 | 0.28 | 0.96 |
| graph / feat | 0.45 / 0.44 | 0.51 / 0.47 | 0.98 / 0.81 | 0.23 / 0.31 | 0.98 / 0.86 |
| combined | 0.41 | 0.46 | 0.98 | 0.24 | 0.99 |
| logits | 0.51 | 0.48 | 0.97 | 0.27 | 0.97 |

Null 95th percentile: about 0.56 to 0.61 for two classes and about 0.37 to 0.45 for three. Every real probe sits inside the null (p = 0.48 to 1.0). allhw and allhw2 look the same. The probe also stays at chance (0.47 to 0.52) on shared_gine's own 224 gadgets, including the ones it was trained on.
**The class information is never present.** It is missing at the raw inputs: both the 58 handcrafted features and the 41-dim node features. On synthetic data the same probes reach 0.79 to 0.89 at the input and 0.98 at `combined`. Nothing is lost inside the network; the class signal simply never enters it.

## 2. Geometry in `combined`
- **Separation.** Between-class centroid distance divided by within-class radius is 0.26 for real MDS vs L1TF (shared_gine) and 1.33 for synthetic. The real value is below its group-null 95th percentile of 0.52 (p = 0.57). B1: 0.15 real vs 1.23 synthetic. allhw: 0.18 vs 1.16. **Real MDS and L1TF overlap completely.**
- **Distance from synthetic.** Real gadgets sit 1.5 to 1.8 synthetic class radii away from their own class's synthetic centroid.
- **Nearest synthetic centroid.** Under shared_gine almost every real MDS, L1TF and V4 gadget lands on the L1TF centroid: MDS gets the right centroid 0.6% of the time. Under B1 they land mostly on BENIGN or V1. Under allhw and allhw2, 100% land on L1TF.
- **Nearest real neighbour.** It has the same class 44% of the time (chance level) and the same seed group 9% of the time.
- **Seeds share geometry.** The CKA between seeds on real `combined` is 0.95 for shared_gine, allhw and allhw2 (0.57 for B1), against about 0.91 on synthetic. All seeds lay the real gadgets out the same way.

## 3. What drives the predictions
- **Zeroing the graph branch** (or replacing it with the synthetic mean) moves 97-99% of real MDS/L1TF predictions to SPECTRE_V1 in shared_gine, allhw and allhw2. The graph branch is what says "not V1", most likely because these gadgets have no conditional branch. It carries nothing that separates MDS from L1TF: two-way balanced accuracy is 0.50 before and after ablation.
- **Ablating the handcrafted branch** flips only 2-17% of decisions (shared_gine, allhw, allhw2). B1 relies on it more (47-70% flip), mostly towards BENIGN.
- **Gradient x delta on `combined`** (shared_gine): mean absolute contribution to the MDS-L1TF margin is 0.35 from the graph slice, 0.20 from feat, 0.08 from glob and 0.06 from arch.
- **Learned edge-type scales** stay close to 1 (0.83 to 1.21) in every arm. CONTROL_FLOW is the lowest at about 0.84 and SPEC_CONDITIONAL the highest at about 1.1 to 1.2. No edge type has been specialised.
- **Readout attention.** In shared_gine, the unconditional `jmp <.bb_0.1>` makes up 1.3% of nodes but receives 12.9% of the attention (10x lift; it is the top-attended node in 4 of 6 example gadgets). Next come `cmp*` and `test*` at about 2x. Integrated-gradient attribution is spread out, with ALU ops on `(%r14,reg)` at 1.6-1.9x lift and `jmp` at 2.9x. The handcrafted features with the largest IG are `ret_call_ratio`, `has_indirect` and `frac_x86_only`, none of which carries any MDS/L1TF meaning. The model is looking at a block-boundary jump and at generic memory-ALU ops, not at anything specific to either class.

## 4. Why the seed decides the class
In shared_gine, the MDS-minus-L1TF logit margin is a constant offset per seed: +0.47 (s1), +0.57 (s7), -0.15 (s13), -0.55 (s21), -0.46 (s42). Its standard deviation across gadgets is only 0.16 to 0.31, and the class effect (MDS groups minus L1TF groups) is between -0.05 and +0.05. The share of gadgets with a positive margin is 98%, 100%, 27%, 5% and 8%.
The two-way balanced accuracy from the margin is 0.50 to 0.57. P(MDS)+P(L1TF) is 0.91 to 0.98 and the top-1 probability is about 0.6.
So this is a near-tie whose sign comes from the head's seed-specific bias, not from the input. The representation is consistent across seeds (CKA 0.95; margins correlate at 0.41 across seeds). allhw and allhw2 show the same thing with a large constant offset of about -5 to -7, so everything goes to L1TF.
shared_gine also **cannot fit its own shared-train MDS/L1TF gadgets**: seeds 1 and 7 call all 66 MDS, and seeds 21 and 42 call all 66 L1TF.

**Conclusion.** The MDS/L1TF/V4 distinction is not present at any stage, from the inputs to the logits. This is an input-representation and identifiability problem, not one of lost information, a broken layer or the head. The seed-to-class collapse is the head's bias breaking a tie between two classes that, in this representation, are the same thing.
