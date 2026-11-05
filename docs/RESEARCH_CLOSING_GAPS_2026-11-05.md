# Closing the Gaps: Primary-Source Research for the Spec-Exec Gadget Detector

**Date:** 2026-11-05
**Scope:** For each of the 6 root-cause gaps found by the 6-agent analysis of our GINE-GNN-over-PDG, 9-class speculative-execution-gadget detector, this note pulls the specific result/method from the *primary* literature (papers, tool source, first-party docs) that backs a concrete fix. Claims are tagged **[OURS]** (from our own measurements / repo memory) vs **[LIT]** (from the cited paper).

**How to read the evidence tags:** every **[LIT]** claim carries an author/year + URL. Where a cited paper measured an effect size, the number is quoted; "vibe" recommendations without a measured result are flagged as such and deprioritized.

---

## Gap 1 — Synthetic→real transfer fails (shortcut learning on trigger opcodes)

**(a) Mechanism.** Our synthetic training labels are gated on trigger opcodes (MDS⇐`verw`/`clflush`, L1TF⇐`clflush`/`rdtsc`, V4⇐`lfence`/`rdtsc`), so the GNN learns "class = trigger opcode." **[OURS]** Real Revizor hardware gadgets contain *zero* of those triggers — they are pure integer/GPR contract-fuzz programs — so the model collapses every real class onto SPECTRE_V1 (the `and`-richest synthetic class). Training on real data (allhw) recovers it to 97.8%. **[OURS]**

**Why Revizor gadgets look nothing like our synthetic ones (primary source).** Revizor's generator draws random instructions from a *small ISA subset menu* — "AR (in-register arithmetic), MEM (memory operands), VAR (variable-latency divisions), CB (conditional branches)" — over "a random Directed Acyclic Graph (DAG) of basic blocks," starting at "8 instructions, 2 memory accesses, and 2 basic blocks per test case." It is explicitly *not* exploit-shaped: "Fully random generation … might lead to … incorrect programs," so it is constrained-random, and the Spectre/MDS-*shaped* cases were hand-written only for one measurement table. **[LIT: Oleksenko et al., "Revizor," ASPLOS 2022, §5.1/§6.1, https://arxiv.org/html/2105.06872v3]** → confirms our observation that the real corpus contains none of the clflush/verw/rdtsc trigger opcodes our labels key on; the leak is defined by the hardware side-channel trace, not by any instruction.

**(b) Fixes.**

1. **Train on (or mix in) real microarchitectural-oracle-labelled data — this is the single highest-evidence fix.**
   - **[LIT]** Chakraborty et al. ("Deep Learning based Vulnerability Detection: Are We There Yet?", IEEE TSE 2021, https://arxiv.org/pdf/2009.07235) measured exactly this failure mode in the neighbouring domain (DL vuln-detection): moving SOTA detectors to a *realistic* data setting dropped performance "by more than 50%," and they traced it to "data duplication, unrealistic distribution of vulnerable classes … simple token-based models." Their fix — retrain on a realistic, de-duplicated distribution — gave "up to 33.57% … precision and 128.38% … recall" over the prior best. Direct analogue of our allhw 97.8% recovery. **[OURS=recovery number; LIT=the mechanism + that retrain-on-real is the documented remedy]**
   - **[LIT]** FastSpec (Tol et al., arXiv 2006.14147, https://ar5iv.labs.arxiv.org/html/2006.14147) is the closest ML-gadget analogue and shows the *same* shortcut: their verifier "only accepts gadgets with specific multipliers (512 or 4096)… this introduces a bias … the diversity of the gadgets is limited," and they warn the detector "might not be able to detect more complex gadgets" absent from training. In-distribution 80/20 gives F1 0.99, but on real Phoronix code precision/recall fall to 0.74/0.87 and as low as 0.23 precision (Crafty). Evidence that a trigger/structure-gated synthetic corpus inflates in-distribution scores and collapses on real code — exactly our picture.

2. **Domain-adversarial training to make the embedding synthetic-vs-real invariant (if we must keep synthetic data abundant and real data scarce).**
   - **[LIT]** Ganin et al. ("Domain-Adversarial Training of Neural Networks," JMLR 2016, https://www.jmlr.org/beta/papers/v17/15-239.html): add a gradient-reversal domain classifier so the feature extractor learns representations "indistinguishable across domains" using *labeled source + unlabeled target*. State-of-the-art adaptation on their benchmarks. For us: source = synthetic (labeled), target = real Revizor gadgets (even unlabeled). Attaches at the GINE `combined` fusion vector (`v54/gine_classifier_v38.py:313` per memory) with a reversal head — no new hardware. Caveat: DANN only removes the *domain* shortcut; if the real/synthetic split is also correlated with class (it is — see Gap 3), adversarial alignment can fight the label signal. Treat as secondary to (1).

3. **Diagnose/kill the shortcut directly (shortcut-learning playbook).**
   - **[LIT]** Geirhos et al. ("Shortcut Learning in Deep Neural Networks," Nature Machine Intelligence 2020, https://arxiv.org/abs/2004.07780): prescribes replacing i.i.d. test sets with explicit **out-of-distribution generalization tests** and applying model-interpretation to find the shortcut feature. Our real-vs-synthetic holdout *is* the o.o.d. test; the fix the paper endorses is making that the primary metric, not the in-distribution split.
   - **[LIT]** Arp et al. ("Dos and Don'ts of ML in Computer Security," USENIX Sec 2022, https://arxiv.org/html/2010.09470v2), **P4 Spurious Correlations**: "Artifacts unrelated to the security problem create shortcut patterns for separating classes." Their authorship-attribution case is the quantitative warning: removing an unrelated artifact (template code) from the test set dropped accuracy **48%**, and even after retraining on cleaned data accuracy still fell **6–7%** — i.e. the shortcut had been doing most of the work. This is the measured cost of our trigger-opcode shortcut.

**(c) Feasibility.** Fix 1 = **retrain** on already-collected real data (allhw + the 423 hardware-confirmed Revizor gadgets in `gen/build_hw_generator_pool.py` per memory) — no new hardware. Fix 2 = **retrain** with an added head, no new data. Fix 3 = evaluation/diagnosis discipline, free. **Highest payoff, lowest cost: fix 1.**

---

## Gap 2 — Benign-construction confound (benign = attack + inserted `lfence`)

**(a) Mechanism.** The BENIGN class is literally each attack gadget with an inserted `lfence` (a mitigated twin). A 1-line rule "`lfence` present ⇒ benign" scores F1 0.99 and beats every learned model; the negatives are trivially separable. **[OURS]**

**(b) Fixes.**

1. **This is the textbook "spurious cue in the negative class" and the textbook "the simple baseline wins" finding — treat the 1-line rule as the mandated baseline, not an embarrassment, and rebuild benign to defeat it.**
   - **[LIT]** Arp et al. (USENIX Sec 2022, https://arxiv.org/html/2010.09470v2) **P6 Inappropriate Baseline**: "simple models should also be considered." Their measured case: a "simple boxplot method outperforms the autoencoder ensemble at low false-positive rates" with near-identical AUC (0.968 vs 0.998). Our `lfence`-rule-beats-GNN result is the same phenomenon and, per P6, is *evidence the task is mis-specified*, not that the GNN is bad.

2. **Counterfactually-augmented benign: for each gadget emit minimal-edit twins on BOTH sides of the label and train on the union.**
   - **[LIT]** Kaushik et al. ("Learning the Difference that Makes a Difference with Counterfactually-Augmented Data," ICLR 2020, https://web3.arxiv.org/abs/1909.12434): models trained on one side "fail on their counterfactually-revised counterparts and vice versa," but "classifiers trained on combined datasets perform remarkably well … and are less sensitive" to the spurious cue. Direct prescription: our benign twins are *already* counterfactual edits (the `lfence` is the minimal difference) — the bug is that the edit is **always the same single token** and **always maps attack→benign**. Fix = diversify the counterfactual edit so `lfence`-presence stops being label-predictive: (i) benign twins that mitigate *without* `lfence` (e.g. index masking / `csdb`/data dependency, address clamping, bounds via `cmov`); (ii) *attack* gadgets that contain an `lfence` placed where it does **not** cover the leak (fence-present-but-still-vulnerable), so `P(benign | lfence) → 0.5`. This is the counterfactually-balanced construction Kaushik shows removes the cue.

3. **Oracle-define the benign label instead of construction-defining it.**
   - **[LIT]** Guarnieri et al. ("Spectector," IEEE S&P 2020, https://arxiv.org/pdf/1812.08639) proves/refutes **Speculative Non-Interference** by comparing a correct-prediction run against an all-mispredict run and checking whether speculative traces leak more than non-speculative ones. A program is BENIGN iff Spectector reports SNI — regardless of whether an `lfence` is textually present. Relabelling benign-by-oracle (we already emit `oracle/results/spectector_leak_labels.jsonl` per memory) breaks the `lfence`↔label coupling at the source. **[OURS=we have the oracle wired; LIT=SNI is the principled benign definition]**

**(c) Feasibility.** Fix 1 = reporting discipline (free, but reframes the paper). Fix 2 = **new data generation** (new benign/attack twins) + retrain; the twin generator already exists (`scripts/augment_asm_windows.py` barrier-counterfactual path per memory), so mostly a data-recipe change. Fix 3 = **relabel with the existing Spectector oracle** + retrain; no new hardware. Fixes 2+3 compose.

---

## Gap 3 — Class/config confound (class identity ≈ Revizor fuzzing config = opcode menu)

**(a) Mechanism.** Each class's real gadgets come from a distinct Revizor fuzzing config, so class identity ≈ which opcodes the config's instruction menu allowed; a bag-of-opcodes ties the graph model (0.97). A shared-config corpus drops the opcode bar to 0.41. **[OURS]**

**Primary-source confirmation that a Revizor "config" *is* an opcode menu.** The generator's behaviour is parameterised by the ISA subset it may draw from — AR / MEM / VAR / CB — and "We borrow the ISA description from nanoBench." **[LIT: Oleksenko et al., ASPLOS 2022, §5.1/§6.1, https://arxiv.org/html/2105.06872v3]** So "which config produced this gadget" is mechanically "which opcode menu was enabled," making class≈opcode-distribution an inevitable artifact unless the corpus is config-balanced. This validates our shared-config corpus as the right instrument.

**(b) Fixes.**

1. **Shared-config / config-balanced corpus is the correct fix, and the opcode-bar drop 0.97→0.41 is the measured proof it works — keep going.** **[OURS]** This is precisely Arp et al.'s **P1 Sampling Bias** remedy: "The collected data does not sufficiently represent the true data distribution"; their advice is to "construct several estimates of the distribution." Generating every class under the *same* instruction menu is constructing a distribution where opcode ⟂ class. **[LIT: Arp et al., USENIX Sec 2022, https://arxiv.org/html/2010.09470v2]**

2. **Always report the bag-of-opcodes baseline alongside the GNN on the shared-config corpus.** Per P6 (Gap 2), the shared-config opcode bar (0.41) is the honest floor; structure only earns credit above it. This is also what isolates the one place structure genuinely helps (Gap 4).

3. **Adversarially decorrelate config/opcode-histogram from the embedding** (DANN-style, config = the "domain"), so the GNN cannot route class through opcode frequency.
   - **[LIT]** Ganin et al. (JMLR 2016, https://www.jmlr.org/beta/papers/v17/15-239.html). Same tool as Gap 1 fix 2; here the nuisance variable is the config/opcode-menu rather than synthetic-vs-real. Secondary to fix 1 because a config-balanced corpus removes the confound at the source rather than regularising around it.

**(c) Feasibility.** Fix 1 = **new data** (shared-config Revizor runs — partially done, see `eval/data/revizor_*_shared.jsonl` in git status) + retrain. Fix 2 = free reporting. Fix 3 = retrain with a head. No new hardware for any.

---

## Gap 4 — Structure only matters for L1TF-vs-V4 (the one opcode-inseparable pair)

**(a) Mechanism.** On the shared-config corpus, bag-of-opcodes already ties the GNN everywhere *except* L1TF-vs-V4, which is the one class pair the opcode histogram cannot separate — so the PDG structure earns its keep only there. **[OURS]**

**(b) Fixes (reframe, not repair).**

1. **Make L1TF-vs-V4 the headline structure result, and make the feature a dataflow feature, not an opcode feature.** The literature says the discriminator for this pair is the *secret→transmit dataflow shape*, not any mnemonic:
   - **[LIT]** Kasper (Johannesmeyer et al., NDSS 2022, https://www.vusec.net/projects/kasper/) models a gadget as three dataflow building blocks — attacker-controlled data → **secret access** (OOB / UAF load) → **transmission** (cache/MDS/port-contention covert channel). L1TF and V4 differ in the *access* step (L1TF = faulting/page-probe load reading stale L1 data; V4 = store-to-load bypass feeding the secret), which is a def-use/dataflow distinction a PDG represents and an opcode bag does not. This tells us which structural features to surface: the load-provenance / store-bypass edges, not the shift/probe opcodes.
   - **[LIT]** Spectector's SNI (Guarnieri et al., S&P 2020, https://arxiv.org/pdf/1812.08639) formalises the same thing as a *flow* from secret to observable — the right supervisory signal for an L1TF/V4 head.

2. **Memory says this matches prior repo findings** (`shl $6` cache-line probe is shared by MDS and L1TF and "NOT discriminating"; the page-probe `shl $9-15` + indexed load is the L1TF-specific dataflow pattern). **[OURS]** Consistent with Kasper: the discriminating feature is the *indexed-load dataflow*, not the shift opcode.

**(c) Feasibility.** Pure **reframing + feature-attribution** on existing models/data. No new data or hardware. Low cost, high paper-narrative payoff (it is the one defensible "the graph matters" claim).

---

## Gap 5 — V2 recall regresses with learned features; the three indirect-branch classes blur

**(a) Mechanism.** V2 recall drops −12 to −17pp with learned features. **[OURS]** V2 is 100% indirect-branch, but so are BHI (100%) and INCEPTION (66%) — so "has an indirect branch" cannot separate them, and a learned feature that keys on it smears the three together. (Repo memory's v56 10-seed rerun: SPECTRE_V2 regression reproduces −9.55pp, p=0.029.) **[OURS]**

**(b) Fixes.**

1. **Separate the three indirect classes by the *target/injection* dataflow, not by branch presence — again a Kasper-style building-block distinction.**
   - **[LIT]** Kasper (NDSS 2022, https://www.vusec.net/projects/kasper/): the discriminating block for these is *where the mispredicted control comes from* — attacker-controlled branch **target** (V2: poisoned BTB indirect target), cross-privilege **branch-history** injection (BHI), vs return/`ret` prediction from the RSB/return-stack (INCEPTION/RETBLEED family). These are distinct provenance edges into the indirect-branch node, representable in the PDG; "is-indirect-branch" is not. Surface edge features for branch-target provenance (register-computed vs memory-loaded vs return-address) rather than a branch-type one-hot.

2. **Counterfactual within the indirect family** (Kaushik, ICLR 2020, https://web3.arxiv.org/abs/1909.12434): generate minimal-edit triples that hold the indirect branch fixed and vary only the injection source, so the model cannot collapse them. Same combined-training recipe that removed the cue in Gap 2.

3. **Don't trust the RF ablation sign here.** **[OURS]** Repo memory: "RF-ablation results have the OPPOSITE SIGN to GINE — never use RF as a proxy." Any feature decision for this gap must be validated on GINE with the multi-seed TOST harness (`eval/full_tost/`), because the regression is seed-sensitive (p=0.029).

**(c) Feasibility.** Fix 1 = **feature/edge-schema change + retrain** (`v54/pdg_builder.py` gated by `./scripts/run_feature_gate.sh`), no new data. Fix 2 = **new counterfactual data** + retrain. Both gated by the existing per-class lift gate. No new hardware.

---

## Gap 6 — Cross-ISA (RISC-V) transfer is weak; error correlates with sequence LENGTH (graph-size shift) and class-coverage gaps

**(a) Mechanism.** RISC-V error correlates strongly with sequence length (graph-size domain shift) and with class-coverage gaps (some classes have ~2 training examples). **[OURS]** Repo memory already localises this: "failure is graph-size shift (H3) not the ISA," and benign FP is "a LENGTH confound (≤60 instr 1–12%, >120 89%)."

**(b) Fixes.**

1. **Add a size-generalization regularizer — SizeShiftReg — the one fix the literature shows needs only training data (no new RISC-V data, no retrain-data collection).**
   - **[LIT]** Buffelli, Liò, Vandin ("SizeShiftReg," NeurIPS 2022, https://arxiv.org/abs/2207.07888): a plug-in regularizer that **coarsens training graphs to simulate a size shift** and enforces similar node-embedding distributions (Central Moment Discrepancy) between a graph and its coarsenings. Measured: training on the smallest 50% of graphs and testing on the largest 10% gained **up to 30%** improvement; regularized GCN/GIN/PNA match or beat heavier models. "needs only training data." This is the most directly actionable fix for the length confound and is architecture-agnostic to our GINE.

2. **Explicitly represent local structure to stop the model exploiting size-dependent local patterns.**
   - **[LIT]** Yehudai et al. ("From Local Structures to Size Generalization in GNNs," ICML 2021, https://proceedings.mlr.press/v139/yehudai21a.html): proves GNNs have "bad global minima that do well on small graphs but fail on large graphs" when local structure is size-dependent, and their self-supervised *local-structure* pretraining task "improves classification accuracy on several popular datasets." For us: windowing to the training size distribution (which repo memory already found turns 0%/36.7%FP into 27%/8.9% with no retrain — **[OURS]**) is the cheap version of this; the paper's self-supervised local-structure head is the principled version.

3. **Fix the class-coverage gap with real idiomatic RISC-V data (the length fix alone won't create classes with n≈2).**
   - **[OURS]** Repo memory confirms this is already partly done: real `riscv_corpus` mixed into training gave confirmed lift, non-overlapping CIs, no x86/ARM regression; and the ISA-independence bigram test proved the *old* RISC-V corpus was ARM-transliterated (6/6 classes, p=0.016), so synthetic transliteration is not a substitute for real compiled RISC-V. **[LIT]** Chakraborty TSE 2021 (https://arxiv.org/pdf/2009.07235) again: "unrealistic distribution of vulnerable classes" is a named cause of the >50% realistic-setting drop — classes with ~2 examples are exactly that.

**(c) Feasibility.** Fix 1 = **retrain with a regularizer term**, no new data, no hardware — do first. Fix 2 = windowing is free/no-retrain (already measured); the self-supervised head is a retrain. Fix 3 = **new real RISC-V data** (compile from `c_vulns` C, gate-passed) + retrain; heavier but memory shows it works.

---

## Prioritized shortlist (highest evidence-backed payoff first)

1. **Retrain with real oracle-labelled data as the primary corpus (Gap 1 fix 1).** Highest measured payoff: our own allhw→97.8% **[OURS]**, mirrored by Chakraborty's +128% recall from realistic-data retraining **[LIT]**. No new hardware; data exists. Do this first.
2. **Rebuild the BENIGN class as balanced counterfactuals + oracle labels (Gap 2 fixes 2+3).** Kaushik ICLR 2020 shows combined counterfactual training removes exactly this cue **[LIT]**; Spectector oracle already wired **[OURS]**. Kills the F1-0.99 `lfence` rule. Data-recipe + relabel; no hardware.
3. **Config-balanced (shared-config) corpus + always-report the opcode baseline (Gap 3 fixes 1+2).** Opcode bar already dropped 0.97→0.41 **[OURS]**; Arp P1/P6 back it **[LIT]**. Partially done — finish it.
4. **SizeShiftReg regularizer for RISC-V length shift (Gap 6 fix 1).** Up to +30% size-generalization, training-data-only **[LIT: Buffelli NeurIPS 2022]**. Cheapest cross-ISA win; retrain-only.
5. **Reframe L1TF-vs-V4 as THE structure result, keyed on load/store-bypass dataflow (Gap 4).** No new data; the one defensible "graph helps" claim, backed by Kasper's access/transmit decomposition **[LIT]**.
6. **Re-feature the three indirect classes by branch-target provenance, validated on GINE (not RF) with multi-seed TOST (Gap 5).** Feature change + gated retrain; highest risk of regression, so lowest priority and must use the existing seed harness.

Cross-cutting (free): adopt the Geirhos/Arp evaluation discipline — make the real-vs-synthetic o.o.d. split and the simple baselines the *headline* metrics, not the i.i.d. split. **[LIT: Geirhos 2020; Arp 2022]**

---

## What the literature says is a (likely) dead end for our setup

- **Chasing in-distribution F1 on synthetic/held-out splits.** FastSpec hit F1 0.99 on an in-distribution 80/20 split and still degraded sharply on real code (0.74/0.87, Crafty 0.23) because of an acknowledged generation bias (multipliers 512/4096) **[LIT: Tol et al. 2006.14147]**. Our in-distribution numbers are the same trap; improving them further is not progress.
- **Domain-adversarial alignment as a *first* resort when the nuisance variable is correlated with the label.** DANN assumes the domain is a nuisance to be made invariant **[LIT: Ganin 2016]**; but in our corpus synthetic-vs-real and config-vs-class are correlated *with* the class (Gaps 1,3), so adversarially erasing them can erase signal. The source-level fixes (real data, shared-config corpus) must come first; DANN is only a regulariser on top.
- **Keeping the construction-defined BENIGN class and trying to out-model the `lfence` rule.** Arp P6's boxplot-beats-autoencoder result **[LIT]** is the general warning: when a 1-line rule wins, the task is mis-specified; a bigger model will not fix a trivially-separable negative class. The fix is the data, not the architecture.
- **"Fixing" RISC-V via an architecture/ISA embedding or by transliterating ARM gadgets.** Repo memory already refuted both: the arch embedding is "a red herring," the bottleneck is graph-size shift (H3), and the ISA-independence bigram test proved transliterated RISC-V is ARM in disguise (p=0.016) **[OURS]**. Yehudai/Buffelli locate the real cause as size generalization, not ISA identity **[LIT]** — so spend effort on size regularization + real RISC-V data, not on ISA tokens.
- **Single-seed "parity"/"lift" claims.** Repo memory: v56 10-seed paired rerun shows SPECTRE_V2 regression reproduces (−9.55pp, p=0.029) and L1TF lift is exactly 0.00pp (p=1.000). **[OURS]** Any fix above must clear `./scripts/run_feature_gate.sh` / multi-seed TOST before it is believed.

---

## Source list (primary)

- Oleksenko, Fetzer, Köpf, Silberstein. "Revizor: Testing Black-box CPUs against Speculation Contracts." ASPLOS 2022. https://arxiv.org/html/2105.06872v3 (abstract https://arxiv.org/abs/2105.06872)
- Guarnieri, Köpf, Morales, Reineke, Sánchez. "Spectector: Principled Detection of Speculative Information Flows." IEEE S&P 2020. https://arxiv.org/pdf/1812.08639
- Johannesmeyer, Koschel, Razavi, Bos, Giuffrida. "Kasper: Scanning for Generalized Transient Execution Gadgets in the Linux Kernel." NDSS 2022. https://www.vusec.net/projects/kasper/ (PDF https://download.vusec.net/papers/kasper_ndss22.pdf)
- Geirhos et al. "Shortcut Learning in Deep Neural Networks." Nature Machine Intelligence 2020. https://arxiv.org/abs/2004.07780
- Ganin et al. "Domain-Adversarial Training of Neural Networks." JMLR 2016. https://www.jmlr.org/beta/papers/v17/15-239.html
- Chakraborty, Krishna, Ding, Ray. "Deep Learning based Vulnerability Detection: Are We There Yet?" IEEE TSE 2021. https://arxiv.org/pdf/2009.07235
- Arp et al. "Dos and Don'ts of Machine Learning in Computer Security." USENIX Security 2022. https://arxiv.org/html/2010.09470v2 (abstract https://arxiv.org/abs/2010.09470)
- Kaushik, Hovy, Lipton. "Learning the Difference that Makes a Difference with Counterfactually-Augmented Data." ICLR 2020. https://web3.arxiv.org/abs/1909.12434
- Yehudai, Fetaya, Meirom, Chechik, Maron. "From Local Structures to Size Generalization in Graph Neural Networks." ICML 2021. https://proceedings.mlr.press/v139/yehudai21a.html
- Buffelli, Liò, Vandin. "SizeShiftReg: A Regularization Method for Improving Size-Generalization in Graph Neural Networks." NeurIPS 2022. https://arxiv.org/abs/2207.07888
- Tol, Gulmezoglu, Yurtseven, Sunar. "FastSpec: Scalable Generation and Detection of Spectre Gadgets Using Neural Embeddings." (EuroS&P 2021) arXiv:2006.14147. https://ar5iv.labs.arxiv.org/html/2006.14147
