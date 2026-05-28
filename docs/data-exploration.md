Diagnosis Interpretation

  This is the most informative result we've gotten across all experiments. It explains why v35c, v35d, and
  v37 all failed to beat v35 — and why v35 at 93.89% may already be near the ceiling for this dataset.

  Finding 1: 3.6% of the dataset is irreconcilable label noise

  2,605 exact-duplicate sequences exist across different classes. These are byte-for-byte identical
  assembly samples carrying contradictory labels. No model — no matter how expressive — can correctly
  classify a sample that appears identically in both the L1TF and SPECTRE_V1 training sets. This is not
  learnable ambiguity; it is contradictory supervision signal.

  With 72,000 samples and 2,605 cross-class duplicates, the theoretical accuracy ceiling is approximately
  96.4% assuming perfect classification of all non-contradictory samples. The opcode-only duplicates
  (4,638) suggest the effective ceiling may be closer to 93.6% — which is almost exactly where v35 sits
  (93.89%).

  This means v35 has likely already reached near-optimal performance for this dataset. All subsequent
  architecture changes (attention, hierarchical heads, curriculum learning) were trying to squeeze signal
  from noise.

  This aligns with Northcutt et al. (NeurIPS 2021, "Confident Learning") who found that even 3-6% label
  noise in benchmark datasets (CIFAR-10, ImageNet) creates hard accuracy ceilings, and that dataset
  cleaning outperforms architecture search in these regimes.

  Finding 2: The boilerplate tail dominates graph structure

  Analysis 5 is the smoking gun. Look at the most similar pairs:

  RETBLEED sample:                    INCEPTION sample:
  ldr w17, [sp,                       ldr w26, [sp,          ← only register differs
  add w17, w17,                       add w26, w26,
  str w17, [sp,                       str w26, [sp,
  b   LBB0_1                         b   LBB0_1
  dsb ish                             dsb ish                ← IDENTICAL from here
  add sp, sp,                         add sp, sp,
  ret                                 ret
  __mm_mfence:                        __mm_mfence:
  dsb ish                             dsb ish
  ret                                 ret
  __mm_lfence:                        __mm_lfence:
  ...                                 ...

  Every vulnerability template shares a measurement infrastructure tail: _barrier:, _rd:, __mm_mfence,
  __mm_clflush, stack setup/teardown. In a 15-20 instruction sample, this boilerplate constitutes 50-70% of
   the sequence. The PDG builder creates edges for all of it, so the graph is dominated by identical
  structure across all classes.

  The actual vulnerability-differentiating code is just 2-5 instructions at the top of each sample. But
  ┌───────────────────────┬────────────────┬────────────────┬────────────────────────────────┐y the
  │         Pair          │ Features d>0.8 │ Features d>1.2 │        Model confusion         │by Alon &
  ├───────────────────────┼────────────────┼────────────────┼────────────────────────────────┤ge passing
  │ MDS vs V4             │ 108            │ 62             │ Low (both ~100% in v35)        │
  ├───────────────────────┼────────────────┼────────────────┼────────────────────────────────┤
  │ BHI vs V2             │ 78             │ 14             │ Moderate (BHI F1=0.88)         │
  ├───────────────────────┼────────────────┼────────────────┼────────────────────────────────┤
  │ L1TF vs V1            │ 31             │ 11             │ High (both F1~0.89)            │
  ├───────────────────────┼────────────────┼────────────────┼────────────────────────────────┤
  │ RETBLEED vs INCEPTION │ 6              │ 0              │ Highest (RETBLEED recall=0.90) │
  └───────────────────────┴────────────────┴────────────────┴────────────────────────────────┘

  RETBLEED vs INCEPTION has zero features with Cohen's d > 1.2. The handcrafted features can barely
  separate them, and the best discriminator (ret_count, d=0.94) is weak. Meanwhile MDS vs V4 has 62 highly
  discriminative features — explaining why both classes achieve ~100% accuracy despite being in the same
  "mechanism group."

  This tells us the hierarchical grouping in v37 was wrong: MDS and V4 were grouped together despite being
  easily separable, while the real problem pair (RETBLEED/INCEPTION) needs fundamentally more signal, not
  architectural tricks.

  Finding 4: SPECTRE_V4 is architecture-monocultural

  SPECTRE_V4 is 100% x86_64 (200/200 samples), while every other class has mixed architectures. This is a
  dataset construction artifact — V4 templates were only generated for x86. The model likely learns
  "x86-only + store-load pattern = V4" as a shortcut, which is why V4 achieves 100% accuracy but the
  feature isn't generalizable.

  Finding 5: Cross-class Jaccard is low but duplicates are exact

  The mean Jaccard similarities are quite low (0.04-0.13), meaning most samples across classes are
  dissimilar. The confusion isn't caused by general structural overlap — it's caused by a thin but absolute
   layer of identical samples with contradictory labels. This is a bimodal problem: most cross-class pairs
  are easy, but ~3.6% are literally impossible.

  ---
  What this means for next steps

  The model architecture is not the bottleneck. The data is.

  Three concrete interventions, ranked by expected impact:

  1. Strip measurement boilerplate before windowing (highest impact)

  Remove _barrier:, _rd:, __mm_mfence, __mm_lfence, __mm_clflush, and the associated dsb/ret/mrs/sub sp/add
   sp epilogue from all samples before PDG construction. These are measurement infrastructure, not
  vulnerability code. Currently they constitute 50-70% of short samples and create identical subgraphs
  across all classes.

  2. Deduplicate cross-class samples

  Remove or relabel the 2,605 exact duplicates. For each duplicate group, either:
  - Keep only one copy with the majority label
  - Remove all copies (conservative)
  - Add a "multi-label" flag and use label smoothing during training

  This immediately raises the accuracy ceiling by ~3.6%.

  3. Rethink RETBLEED vs INCEPTION labeling

  With 144 exact duplicates, zero features at d>1.2, and Jaccard=1.0 on the most similar pair, these
  classes are not distinguishable at the assembly instruction level. The difference is microarchitectural
  (RSB underflow vs phantom speculation) and invisible in the instruction stream. Options:
  - Merge them into a single "RETURN_BASED" class (honest about what the data supports)
  - Add synthetic discriminative features (e.g., call depth before return, presence of indirect branches vs
   returns)
  - Generate new templates with architecturally distinguishing patterns