This changes everything. Let me re-read the problem statement carefully and reconsider.

  The classifier is not the end product — it's a filter in a generative pipeline

  Your research goal is to generate minimal instruction sequences that trigger speculative timing leaks,
  using a loop of generation → filtering → simulation → retraining. The classifier's role is to rank and
  filter candidates before expensive simulation, not to provide a final diagnosis.

  This fundamentally changes what matters:
  ┌────────────────────────────────────┬─────────────────────────────────────────────────────────────┐
  │ What a standalone classifier needs │               What your pipeline filter needs               │
  ├────────────────────────────────────┼─────────────────────────────────────────────────────────────┤
  │ High per-class accuracy            │ High recall for any exploitable sequence                    │
  ├────────────────────────────────────┼─────────────────────────────────────────────────────────────┤
  │ Precise 9-class labels             │ Confidence scores that correlate with actual exploitability │
  ├────────────────────────────────────┼─────────────────────────────────────────────────────────────┤
  │ Equal performance across classes   │ Ability to reject benign sequences with high precision      │
  ├────────────────────────────────────┼─────────────────────────────────────────────────────────────┤
  │ Clean decision boundaries          │ Calibrated probabilities for ranking                        │
  └────────────────────────────────────┴─────────────────────────────────────────────────────────────┘

  With this reframing, here's what the diagnosis actually tells us and what the literature recommends:

  ---
  Reinterpretation of findings under the generative pipeline framing

  The 2,605 cross-class duplicates are not a bug — they're a feature

  The fact that identical instruction sequences can manifest multiple vulnerability types is ground truth
  about speculative execution. The same ldr → str → ldr pattern genuinely triggers both store-buffer bypass
   (V4) and MDS depending on microarchitectural state. Deduplicating or removing these samples would delete
   real signal about the multi-vulnerability nature of instruction sequences.

  What the literature says: Traditionally, multi-label ambiguity has been handled as noise (Northcutt et
  al., 2021). But in your domain, this is aleatoric uncertainty — irreducible uncertainty inherent to the
  problem — not epistemic uncertainty from bad labeling. Kendall & Gal (NeurIPS 2017, "What Uncertainties
  Do We Need in Bayesian Deep Learning?") showed that modeling aleatoric uncertainty explicitly (via
  learned variance) outperforms treating it as noise to clean.

  Recommendation: Don't deduplicate. Instead, move to multi-label classification or soft label training. A
  sequence that appears as both RETBLEED and INCEPTION should be labeled as [RETBLEED=0.5, INCEPTION=0.5] —
   or better, as [RETURN_BASED=1.0] at the mechanism level. For your generative pipeline, knowing "this
  sequence triggers return-based speculation" is exactly what you need to guide generation.

  The boilerplate tail is measurement infrastructure — strip it, but for a different reason

  You're right that _barrier:, _rd:, __mm_mfence etc. are measurement code. But the reason to strip it
  isn't just "it confuses the classifier" — it's that your generative model should not be generating
  measurement infrastructure. The pipeline goal is to generate the minimal attack sequence, and the
  measurement harness is fixed infrastructure that wraps around it.

  This connects to the concept of disentangled representations (Bengio et al., 2013; Higgins et al., ICLR
  2017 β-VAE). The generator should learn the attack subspace independently from the measurement subspace.
  If the classifier is trained on sequences that include measurement code, it learns features of the
  harness, not the attack — and when used to filter generated candidates (which won't have the harness), it
   will fail.

  Recommendation: Strip boilerplate before training. This is not a dataset cleaning step — it's an
  alignment step ensuring the classifier operates on the same representation space as the generator's
  output.

  RETBLEED vs INCEPTION: merge for the pipeline, keep metadata for analysis

  The diagnosis showed these are indistinguishable at instruction level (Jaccard=1.0, 0 features with
  d>1.2). But the problem statement asks for sequences that "trigger speculative timing divergences" — not
  sequences that trigger specific named CVEs. For the generative pipeline, what matters is:

  1. Does this sequence create a speculative window? (binary)
  2. What mechanism opens the window? (coarse: branch prediction, return stack, store forwarding, cache
  timing)
  3. How likely is it to produce a measurable timing divergence? (regression score)

  This maps to the hierarchical label taxonomy approach, but motivated differently than v37. In v37, we
  added hierarchy as a regularizer. Here, it's the natural abstraction level for the task.

  Literature: Silla & Freitas (2011, "A survey of hierarchical classification across different application
  domains") showed that hierarchical classification outperforms flat classification specifically when leaf
  classes share high structural similarity — exactly our situation. But the key insight from Deng et al.
  (CVPR 2014, "Large-scale object classification using label relation graphs") is that the hierarchy should
   be derived from data confusion patterns, not imposed a priori.

  Recommendation: Use a 5-class mechanism taxonomy as the primary classifier for the pipeline:
  - BENIGN
  - CACHE_SPECULATION (L1TF + V1 — both exploit cache timing after speculative access)
  - INDIRECT_BRANCH (BHI + V2 — both poison branch target prediction)
  - RETURN_BASED (RETBLEED + INCEPTION — both exploit return stack)
  - MEMORY_ORDER (MDS + V4 — both exploit store/load reordering)

  Keep the 9-class labels as metadata for post-simulation analysis, but don't use them as the training
  objective for the filter.

  The real missing piece: calibrated confidence for ranking

  Your pipeline needs to rank candidates so "only the top selections are evaluated for precise
  measurement." This is a learning-to-rank problem, not a classification problem.

  The diagnosis showed that the model achieves ~95% coarse accuracy — that's good enough for filtering. But
   what matters for ranking is whether the model's confidence scores are calibrated: does P(exploit)=0.8
  mean 80% of such sequences actually trigger leaks?

  Literature: Guo et al. (ICML 2017, "On Calibration of Modern Neural Networks") showed that modern deep
  networks are poorly calibrated — high softmax scores don't correspond to true probabilities. Temperature
  scaling (a single learned parameter) fixes this with almost no computational cost.

  For GNNs specifically, Hsu et al. (2022, "What Makes Graph Neural Networks Miscalibrated?") showed that
  GNNs are systematically overconfident on structurally similar but semantically different graphs — exactly
   our confused pairs. They recommend graph-aware calibration that accounts for topological similarity.

  Recommendation: After training the 5-class model, add post-hoc temperature scaling calibration on a
  held-out set. Then use the calibrated probabilities as ranking scores for the simulation step.

  ---
  Revised pipeline architecture

  Given all of the above, here's what I'd recommend for the next iteration:

  ┌─────────────────────────────────────────────────────────────┐
  │                    DATA PREPARATION                         │
  │  1. Strip measurement boilerplate (_barrier, _rd, etc.)     │
  │  2. Keep all samples (no dedup) — use soft/multi-labels     │
  │  3. Collapse to 5 mechanism classes                         │
  │  4. Add architecture tag as input feature (x86/ARM/RISCV)   │
  └────────────────────────┬────────────────────────────────────┘
                           │
  ┌────────────────────────▼────────────────────────────────────┐
  │                    CLASSIFIER (FILTER)                       │
  │  GINE v35 architecture (proven best)                        │
  │  5-class output + calibrated confidence                     │
  │  Binary auxiliary head (attack/benign) for hard filtering   │
  │  Temperature-scaled softmax for ranking                     │
  └────────────────────────┬────────────────────────────────────┘
                           │
  ┌────────────────────────▼────────────────────────────────────┐
  │                    GENERATIVE LOOP                           │
  │  Generate candidates (conditioned on mechanism class)       │
  │  Filter: reject if P(benign) > 0.5                         │
  │  Rank: sort by max(P(attack_class)) after calibration       │
  │  Simulate top-K → measure timing divergence                 │
  │  Retrain on simulation results                              │
  └─────────────────────────────────────────────────────────────┘

  What to build next

  Step 1: Boilerplate stripping — Modify the windowing pipeline to detect and remove the measurement tail
  (_barrier: through end, _rd: through end, __mm_* functions). This reduces average sequence length from
  ~22 to ~12-15 instructions (the actual attack core).

  Step 2: 5-class relabeling — Collapse the 9 classes into 5 mechanism groups. Retrain v35 (the proven best
   architecture) on the stripped, 5-class data. Expected accuracy: >97% (since the coarse accuracy is
  already 95% on noisy 9-class data with boilerplate).

  Step 3: Calibration — Add temperature scaling to convert softmax outputs into calibrated probabilities
  suitable for ranking.

  This is a fundamentally different approach than iterating on GNN architecture. The diagnosis showed the
  architecture is already near-optimal — the improvements come from aligning the data and objective with
  the actual pipeline task.

  Want me to start with the boilerplate stripping script?