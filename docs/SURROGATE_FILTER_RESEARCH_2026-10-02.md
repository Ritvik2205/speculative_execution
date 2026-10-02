# Surrogate filter / ranker for the leak oracle: research findings (2026-10-02)

Scope: what the primary literature says about (1) surrogate models for expensive verifiers,
(2) how Spectre and microarchitectural-leak discovery tools generate and prioritise
candidates, (3) closing the encoder distribution gap, (4) minimising leaking sequences,
and (5) evaluating a filter. Each finding is mapped onto `rank/`, `gen/rl_from_oracle.py` and
`gen/classifier_vs_oracle.py` on branch `cluster`.

Citation convention: each claim is followed by (author, venue, year, link). A claim marked
**UNVERIFIED** could not be confirmed in a primary source during this pass. "Repo measurement"
means I computed it from files in this repo today (commands are in the last section). It has not
been peer-reviewed or multi-seeded.

---

## 0. Two repo facts that change the framing (read before the TL;DR)

These came from reading the data the ranker will train on. They matter more than any single paper.

**F1. On the SPECTRE_V1 data there is no SAFE class. "Non-leak" means UNRUNNABLE.**
Repo measurement over `gen/rl_ms/*/samples.jsonl` (the 10 runs `classifier_vs_oracle.py` used):
1,531 `leak` and 456 `unrunnable`, with **0 `safe`**. `gen/classifier_vs_oracle.md` shows the same
split. `oracle/spectector_oracle.py` assigns `leak_signal = 0.0` to both SAFE and UNRUNNABLE
(compile or docker failure, timeout, unsupported instructions, unexpected status; lines ~95–145).
Consequences:
- The ROC-AUC of 0.44 in `gen/classifier_vs_oracle.md` measures whether the locked classifier
  separates *leaking* gadgets from *gadgets Spectector could not run*. It does not measure
  separating leaking from safe gadgets. The classifier was never trained to judge whether a
  gadget compiles or uses instructions Spectector supports, so 0.44 is not evidence of a
  speculative-semantics distribution gap. It may just show the classifier answers a different question.
- A regressor on `leak_signal` trained on this data mostly learns P(runnable) × trace length.
- A trivial baseline already beats the classifier. **Sequence length alone gives ROC-AUC 0.588**
  for LEAK vs rest on the same 1,987 rows (median length: leak 30, unrunnable 23).
- Real SAFE labels exist only in the multi-class runs (`gen/rl_mc/`): SPECTRE_V4 has 337 leak,
  187 safe and 76 unrunnable over 3 seeds. SPECTRE_V2 has 89 safe, 0 leak and 511 unrunnable.
  **V4 is the only place in the repo where a ranker can learn leak vs safe.**

**F2. The RL generator is already learning the filter, and its success caps how much a ranker can add.**
Repo measurement, leak rate per RL round (all seeds pooled):
- V1 (`rl_ms`): 0.54, 0.74, 0.81, 0.88, 0.88 for rounds 0–4.
- V4 (`rl_mc`): 0.15, 0.46, 0.69, 0.70, 0.81 for rounds 0–4.

When random ordering already yields 0.88 leaks per oracle call, a perfect ranker can improve
leaks-per-call by at most 1/0.88 ≈ 1.14×. The ranker's useful range is early rounds, harder
classes (V4 round 0 is 0.15) and fresh generators. The ranker must therefore be compared against
the RL generator's own improving yield, not only against random ordering of a fixed pool. This
is the same idea as Revizor's later work, which filters cheaply *and* biases generation toward
effective test cases (Oleksenko, Guarnieri, Köpf, Silberstein, IEEE S&P 2023,
https://arxiv.org/abs/2301.07642).

---

## TL;DR: recommendation for this project

1. **Change the target.** Stop regressing Spectector `trace_length`. It counts load, store and
   symPc observations, and Spectector's authors use it as a measure of SMT-formula size, not
   leak severity (Guarnieri, Köpf, Morales, Reineke, Sánchez, IEEE S&P 2020,
   https://spectector.github.io/papers/spectector.pdf, §VIII-B). The repo's own
   `gen/rl_from_oracle.py` docstring already says it is "a proxy for gadget complexity, not leak
   severity". Instead, predict two **calibrated probabilities**, P(runnable) and
   P(LEAK | runnable), and rank by their product. This is the "unknown constraints"
   factorisation from constrained BO (Gelbart, Snoek, Adams, UAI 2014,
   https://arxiv.org/abs/1403.5607). Ranking by a classifier's probability is a principled
   acquisition: BORE and LFBO show expected-improvement BO reduces to (weighted) classification
   (Tiao et al., ICML 2021, https://arxiv.org/abs/2102.09009; Song et al., ICML 2022,
   https://arxiv.org/abs/2206.13035).
2. **Filter cheaply before learning.** First add a non-learned pre-oracle check: does the gadget
   assemble/compile, and does it use only instructions Spectector supports? This alone should
   remove most UNRUNNABLE calls. It mirrors Revizor's speculation and observation filters,
   which are cheap, conservative and non-learned, and which give up to two orders of magnitude
   speed-up (Oleksenko et al., S&P 2023). No prior Spectre or leak-discovery tool I checked
   uses a *learned* surrogate in front of the expensive check (§2).
3. **Run the ranker where labels have both classes and headroom: SPECTRE_V4 (leak vs safe), early
   RL rounds.** Report V1 separately as "runnable-filter" performance, because V1 has no SAFE labels.
4. **Use a small, simple model plus an ensemble.** Fit (a) gradient-boosted trees on opcode n-grams
   plus structural features and (b) the frozen-GINE-embedding head, each as a 5-member
   ensemble. For NAS performance predictors, GNN/semi-supervised predictors win when labels
   are few and boosted trees win once labels are plentiful (White et al., NeurIPS 2021,
   https://arxiv.org/abs/2104.01177). Deep ensembles gave the best uncertainty under dataset
   shift; last-layer and MC-dropout were weaker (Ovadia et al., NeurIPS 2019,
   https://arxiv.org/abs/1906.02530). Keep MC-dropout only as a cheap ablation.
5. **Acquisition: rank by the probability product. Use Thompson sampling across ensemble members for
   batch diversity, with a greedy baseline.** Parallel Thompson sampling with n evaluations over M
   workers is essentially equivalent to n sequential ones (Kandasamy et al., AISTATS 2018,
   https://arxiv.org/abs/1705.09236). In a contextual-bandit bake-off, a greedy baseline was a
   close second to the best optimistic method (Bietti, Agarwal, Langford, JMLR 2021,
   https://arxiv.org/abs/1802.04064). UCB-vs-greedy is therefore an empirical question, not a given.
6. **Evaluate prospectively, by RL round.** Train on rounds ≤ r and score round r+1 of *held-out seeds*.
   Report leaks-per-oracle-call vs (i) random, (ii) the generator's own order, (iii) a length-only
   ranker, and (iv) the compile/supported-instruction filter alone. Also report the
   base-rate-capped maximum gain (F2). A ranker that does not beat the length-only baseline has
   learned length (Arp et al., USENIX Security 2022, P4 "Spurious Correlations",
   https://arxiv.org/abs/2010.09470).
7. **Minimality comes next. It is a reduction problem, not a ranking problem.** Run a Revizor-style
   backward one-instruction-at-a-time removal pass, followed by an lfence-insertion pass to
   localise the speculative window. Both are in Revizor's minimiser
   (https://github.com/microsoft/sca-fuzzer, `rvzr/postprocessing/instruction_passes.py`). Use a
   learned P(still leaks | removal) model in ProbDD/CHISEL style to choose which removals to try
   first, so fewer Spectector calls are wasted (Wang et al., ESEC/FSE 2021,
   https://xiongyingfei.github.io/papers/FSE21a.pdf; Heo et al., CCS 2018,
   https://www.cis.upenn.edu/~mhnaik/papers/ccs18.pdf).
8. **First thing to do, which needs no cluster:** recompute `gen/classifier_vs_oracle.py` and the
   length baseline on V4 only (leak vs safe, excluding unrunnable). If the locked classifier is
   still at or below chance there, the distribution gap is real. If it is not, the 0.44 was an
   artefact of the label set.

---

## 1. Surrogates for expensive verifiers (BO / active learning)

### 1a. Surrogate families for discrete or graph inputs
- **GP-UCB**: an upper-confidence acquisition with sublinear cumulative-regret bounds when the
  objective is GP-distributed or has low RKHS norm (Srinivas, Krause, Kakade, Seeger, ICML 2010,
  https://arxiv.org/abs/0912.3995). These guarantees assume a GP surrogate. They do not carry
  over to an MC-dropout head on frozen features, so `rank/acquisition.py`'s UCB is a heuristic here.
- **GPs over structured inputs** (graph, string and fingerprint kernels) are packaged in GAUCHE for
  molecular BO (Griffiths et al., NeurIPS 2023 Datasets & Benchmarks, https://arxiv.org/abs/2212.04450).
  A GP over a Weisfeiler-Lehman or opcode-string kernel is a legitimate small-data alternative to
  a neural head. The venue is from the authors' listing; the arXiv record carries no journal-ref:
  **UNVERIFIED venue**.
- **Deep kernel learning**: a neural feature extractor feeds a GP kernel, trained jointly through the
  marginal likelihood (Wilson, Hu, Salakhutdinov, Xing, AISTATS 2016, https://arxiv.org/abs/1511.02222).
  This is the "frozen GINE embedding + GP" option. Its uncertainty is a GP posterior rather than
  dropout noise.
- **Optimising in a generative model's latent space**: periodically retrain the generator on queried
  points, weighted by objective value (Tripp, Daxberger, Hernández-Lobato, NeurIPS 2020,
  https://arxiv.org/abs/2006.09191). `gen/rl_from_oracle.py`'s fine-tune-on-LEAK rejection
  sampling is a 0/1-weighted version of this, which is why yield climbs per round (F2).

### 1b. Uncertainty: ensembles vs MC-dropout
- MC-dropout as approximate Bayesian inference (Gal & Ghahramani, ICML 2016,
  https://arxiv.org/abs/1506.02142).
- Deep ensembles (Lakshminarayanan, Pritzel, Blundell, NeurIPS 2017, https://arxiv.org/abs/1612.01474).
- Under dataset shift, "Deep ensembles seem to perform the best across most metrics and be more
  robust to dataset shift". M = 5 may be enough. "Last layer Dropout exhibits less uncertainty on
  shifted and OOD datasets than Dropout" (Ovadia et al., NeurIPS 2019, §take-home messages,
  https://arxiv.org/abs/1906.02530). `rank/regressor.py::predict_mc` is exactly last-layer
  dropout on a frozen encoder: the variant Ovadia et al. found *least* able to express shift
  uncertainty. Generated gadgets are off-distribution for the encoder, which is precisely the
  shift case.
- Batch acquisition: picking the top-K by a per-point score selects "similar and redundant points,
  sometimes performing worse than randomly acquiring data". BatchBALD fixes this for
  information-gain acquisition (Kirsch, van Amersfoort, Gal, NeurIPS 2019,
  https://arxiv.org/abs/1906.08158). `select_topk` is per-point top-K, and RL samples within a
  round are near-duplicates, so batch redundancy is a real risk. Thompson sampling across
  ensemble members (Kandasamy et al., AISTATS 2018, https://arxiv.org/abs/1705.09236) or a
  per-batch dedup on content hash are the cheap fixes.

### 1c. Cold start
- In the low-budget regime, querying *typical* examples beats querying uncertain ones. The best
  strategy flips as the budget grows (Hacohen, Dekel, Weinshall, ICML 2022,
  https://arxiv.org/abs/2202.02794). For loop 1, use generator order or random, as the Phase-3
  design already says (`docs/superpowers/specs/2026-07-22-phase3-ranker-design.md`). Do not
  trust uncertainty-driven acquisition until a few hundred labels exist.
- Performance predictors that "extract better latent features" (GCN, semi-supervised) win at low
  initialisation budget, and boosted trees win once there is more performance data (White et al.,
  NeurIPS 2021, §4, https://arxiv.org/abs/2104.01177). The repo now has about 2,600 labelled
  generations, so a GBDT on simple features is a mandatory baseline, not an afterthought.

### 1d. Regression vs learning-to-rank vs classification when only top-K matters
- BRP-NAS trains a GCN *binary relation* (pairwise) predictor because "accurately predicting the
  rankings of top candidates is the most important". n measurements give O(n²) pairwise
  training samples. Iterative data selection focused on top models improves top-K ranking at some
  cost to global ranking (Dudziak et al., NeurIPS 2020, §4.2 and Fig. 5,
  https://arxiv.org/abs/2007.08668).
- BORE and LFBO recast expected improvement as classifying whether a point beats a quantile
  threshold (Tiao et al., ICML 2021, https://arxiv.org/abs/2102.09009; Song, Yu, Neiswanger,
  Ermon, ICML 2022, https://arxiv.org/abs/2206.13035). This is the formal justification for
  ranking by a calibrated P(LEAK).
- **Verdict for this project.** The oracle's verdict is binary, Spectector itself is a binary
  decision procedure ("prove SNI or detect violations"; Guarnieri et al., S&P 2020), and
  `trace_length` is a formula-size statistic. So:
  - **Primary target:** binary LEAK, factorised as P(runnable) · P(LEAK | runnable), trained with
    BCE and calibrated on held-out data.
  - **Pairwise (BRP-style) loss:** worth an ablation once there are enough LEAK/SAFE pairs in V4.
  - **Severity regression:** only if a real severity signal exists, such as Revizor violation
    counts or a Flush+Reload SNR. `trace_length` is not one.
  - **Length:** if the ranker must prefer smaller leaks, make that an explicit secondary key. It is
    known without calling the oracle, so it should not be learned through `trace_length`.

---

## 2. How Spectre and microarchitectural-leak discovery tools generate and prioritise candidates

| Tool | Candidate generation | Pre-check / prioritisation before the expensive step | Learned filter? | Minimisation |
|---|---|---|---|---|
| Revizor (Oleksenko, Fetzer, Köpf, Silberstein, ASPLOS 2022, https://arxiv.org/abs/2105.06872) | Random DAG of basic blocks plus random instructions from an ISA subset. Random inputs with priority to *effective inputs* (inputs sharing a contract trace) and *priming* | Diversity analysis via **pattern coverage** (memory, register and control dependency pairs). Low coverage gain triggers reconfiguration (bigger tests, more inputs) (§5.1, §5.6) | No | Yes: three-stage postprocessor (§5.7), details below |
| Revizor + "Hide and Seek" (Oleksenko, Guarnieri, Köpf, Silberstein, IEEE S&P 2023, https://arxiv.org/abs/2301.07642) | Same, plus contract-driven input generation | **Speculation filter** (perf counters INT_MISC.RECOVERY_CYCLES and UOPS_ISSUED−UOPS_RETIRED) and **observation filter** (compare with an lfence-after-every-instruction serialised copy) prune test cases *before* the slow contract-trace collection. Both "err on the side of permitting" uncertain cases (§IV-A to E). Fewer than 0.5% of random program-input pairs are effective. Campaign time went from over 2 months to 16 hours | **No: cheap, conservative, non-learned filters** | Uses the Revizor minimiser |
| Spectector (Guarnieri et al., IEEE S&P 2020, https://spectector.github.io/papers/spectector.pdf) | Analyses given x86 assembly by concolic and symbolic path enumeration, with path and instruction limits | None. Most traces are checked in under 1 minute; time is reported against trace length (§VIII-B, C) | No | No |
| SpecFuzz (Oleksenko, Trach, Silberstein, Fetzer, USENIX Security 2020, https://arxiv.org/abs/1905.10311) | Instruments the program to simulate misprediction ("speculation exposure"). Coverage-guided fuzzing with HonggFuzz; ASan detects speculative out-of-bounds accesses | Coverage feedback only | No | No |
| Kasper (Johannesmeyer, Koschel, Razavi, Bos, Giuffrida, NDSS 2022, https://download.vusec.net/papers/kasper_ndss22.pdf) | Kernel fuzzing (syzkaller) under speculative emulation with taint policies (attacker-controlled data, secret access, covert-channel transmit). Found 1,379 unmitigated gadgets | Taint policies are the detector; no ranking stage described | No | No |
| Teapot (Lin, Wang, Sasaki, CGO 2025, https://arxiv.org/abs/2411.11624) | Static binary rewriting with "Speculation Shadows" plus fuzzing and integrity checks (ASan, DIFT) on COTS binaries; more than 20× faster than prior binary-based tools | Coverage-guided fuzzing | No | No |
| oo7 (Wang, Chattopadhyay, Gotovchits, Mitra, Roychoudhury, IEEE TSE 2019/2021, https://arxiv.org/abs/1807.05843) | Static taint and address analysis over binaries; fences inserted only at vulnerable branches | Static patterns | No | n/a |
| KLEESpectre (Wang et al., ACM TOSEM 2020, https://abhikrc.com/pdf/KLEESpectre_TOSEM.pdf) and SpecuSym (Guo et al., ICSE 2020, http://cusecurity.cs.colorado.edu/yueqichen/publications/SpecuSym.pdf) | Speculative symbolic execution on KLEE with cache modelling; SpecuSym generates leak witnesses | Symbolic path exploration | No | n/a |
| SpecTaint (Qi et al., NDSS 2021) | Speculative dynamic taint analysis on whole-system emulation. **UNVERIFIED beyond the abstract and search snippet; I did not read the paper** | — | — | — |
| Scam-V (Nemati, Buiras, Lindner, Guanciale, Jacobs, CAV 2020, https://arxiv.org/abs/2005.05254); observation refinement (Buiras, Nemati, Lindner, Guanciale, MICRO 2021, https://dl.acm.org/doi/10.1145/3466752.3480130) | Random or template programs plus two inputs that are observationally equivalent under the model (symbolic execution and relational analysis), run on a Raspberry Pi 3 | Observation refinement adds finer observations to exclude already-explained behaviours and steer the search, which exposed SiSCLoak on Cortex-A53 | No | **UNVERIFIED** (could not fetch the MICRO paper, ACM 403) |
| Osiris (Weber, Ibrahim, Nemati, Schwarz, Rossow, USENIX Security 2021, https://www.usenix.org/system/files/sec21-weber.pdf) | Fuzzes (reset, trigger, measure) instruction-sequence triples generated from a machine-readable ISA spec | A confirmation stage re-tests candidates (does reset have any effect, does a different order reproduce). Clustering by ISA extension and timing difference dedups the reports (§4) | No | Clustering, not minimisation |
| Medusa / Transynther (Moghimi, Lipp, Sunar, Schwarz, USENIX Security 2020, https://www.usenix.org/conference/usenixsecurity20/presentation/moghimi-medusa) | Mutates basic blocks of existing Meltdown variants | **UNVERIFIED beyond the abstract** | — | — |
| FastSpec (Tol, Gulmezoglu, Yurtseven, Sunar, IEEE EuroS&P 2021, https://arxiv.org/abs/2006.14147) | Mutational fuzzing of known V1 gadgets (over 1M) plus SpectreGAN masked-GAN generation; BERT-style embedding detector | The abstract describes the detector applied *after* generation, not as a filter in the loop. **UNVERIFIED** whether generated gadgets were hardware-verified | Detector, not an in-loop filter | No |
| AutoCAT (Luo et al., IEEE HPCA 2023, https://arxiv.org/abs/2208.08025) | RL agent plays a cache-timing guessing game against a victim in a simulator or real hardware | The RL policy *is* the prioritiser | RL policy | **UNVERIFIED** |
| μRL (Tol, Derya, Sunar, arXiv 2025, https://arxiv.org/abs/2502.14307) | PPO agent emits x86 instruction sequences on real Intel CPUs | Reward = (bad-speculation perf counters + observed leaked bytes) / **instruction count**, capped. Leakage is confirmed by a JE/JNE test, then rechecked with an lfence inserted before the branch (§5.6) | RL policy (no separate surrogate) | No explicit minimisation, but the reward penalises length |
| BETA (Chen, Cui, Zhang, arXiv 2024, https://arxiv.org/abs/2410.16648) | Constrained mutation over opcode, data, address and privilege level | Instruction-class coverage feedback discards "trivial or redundant" tests | No | — |

**Bottom line for Q2.** In every tool I checked, the work done before the expensive check is one of:
- cheap physical signals (perf counters, a serialised-copy differential), or
- coverage or diversity feedback.

When learning appears (AutoCAT, μRL), it is RL on the *generator*. That is the role
`gen/rl_from_oracle.py` already plays. I found **no primary source that puts a learned surrogate
or regressor in front of a speculative-leak oracle**. That makes the ranker a genuine
contribution, but only if it beats the cheap non-learned filters and the RL generator's own
yield. Revizor's lfence-differential idea (observation filter; μRL's lfence recheck) also gives
this repo a cheap label-quality check: a gadget whose leak survives a full serialisation is
suspect.

**Revizor minimiser, read from source** (https://github.com/microsoft/sca-fuzzer, `rvzr/postprocessing/`, main branch as fetched 2026-10-02):
- `Minimizer` first re-runs the original violation up to `minimizer_retries` times and aborts if
  it does not reproduce.
- Input passes come next (`InputSequenceMinimizationPass`, `DifferentialInputMinimizerPass`). A
  pass's result is kept only if the violation reproduces; otherwise it rolls back.
- Instruction passes walk the program **backwards, one instruction at a time**. Each candidate
  modification costs one violation check. Passes include `InstructionRemovalPass`,
  `InstructionSimplificationPass`, `NopReplacementPass`, `ConstantSimplificationPass`,
  `MaskSimplificationPass` and `LabelRemovalPass`; `LabelRemovalPass` does no verification.
  The walk skips lfences, labels, instrumentation lines and sandbox-base updates.
- Analysis passes follow: `FenceInsertionPass` inserts lfences to localise the leak, and
  `AddViolationCommentsPass` annotates the result.

The minimisation stages match ASPLOS'22 §5.7.

---

## 3. Closing the distribution gap: fine-tune vs frozen head vs fresh model

- **Linear probing vs full fine-tuning.** Fine-tuning gives about 2% better in-distribution
  accuracy but about 7% worse out-of-distribution accuracy than linear probing when features are
  good and the shift is large. **LP-FT** (probe first, then fine-tune) gets the best of both:
  "1% better ID, 10% better OOD than full fine-tuning" (Kumar, Raghunathan, Jones, Ma, Liang,
  ICLR 2022, https://arxiv.org/abs/2202.10054).
  - Here the target distribution *is* the generated distribution, and labels come from it. So
    fine-tuning on oracle-labelled generated data is appropriate.
  - LP-FT is the safe recipe. First train the head on the frozen encoder (what `rank/` does now),
    then unfreeze with a low learning rate.
  - The repo's generator-pretraining note in `MEMORY.md` points the same way: a 3e-3 fine-tune LR
    overwrote the pretrained weights and 1e-4 did not.
- **Task-adaptive pretraining.** Continued self-supervised pretraining on the *unlabelled*
  target-task corpus improves downstream results even after domain-adaptive pretraining
  (Gururangan et al., ACL 2020, https://arxiv.org/abs/2004.10964). Here this means continuing the
  MLM (`spec/mlm_neutral.pt`) on all realized generated sequences, which are free and need no
  oracle, before fitting the ranker.
- **Is the encoder even the right starting point?**
  - White et al. found boosted trees beat GNN predictors once training data is plentiful
    (NeurIPS 2021, §4).
  - F1 shows the main V1 signal (runnable or not) is a surface property that the
    classification-trained GINE was never asked to encode.
  - So train a **fresh small model on generated data only** (GBDT on opcode n-grams plus
    structural features) as a baseline alongside the frozen and LP-FT GINE heads. Keep whichever
    wins on the prospective split.
  - The literature does not settle which will win. This is an experiment, not a recommendation.
- **Do not fold generated data into the locked classifier.** The classifier is locked and its numbers
  are reported. The ranker is a separate model. Mixing generated, oracle-labelled data into the
  classifier would change a locked artefact and add the classifier's 9-way label space to a binary
  problem. If a shared encoder is ever wanted, use a multi-task head on a *copy* of the encoder.

---

## 4. Minimality: reducing a verified leak

- **ddmin** (Zeller & Hildebrandt, IEEE TSE 28(2), 2002, doi:10.1109/32.988498) finds a
  1-minimal failing subset. Its worst case is O(n²) tests. I could not reach the authors' PDF
  (connection refused), so the complexity figure is taken from the account in the ProbDD paper
  (Wang, Shen, Chen, Xiong, Zhang, ESEC/FSE 2021, https://xiongyingfei.github.io/papers/FSE21a.pdf,
  §2–3). The 1-minimality definition and the O(n²) figure are therefore cited **second-hand**.
- **HDD** applies ddmin level by level over a tree (Misherghi & Su, ICSE 2006, doi:10.1145/1134285.1134307).
  **Perses** is grammar-guided, so it never produces syntactically invalid candidates (Sun, Li,
  Zhang, Gu, Su, ICSE 2018, doi:10.1145/3180155.3180236). **C-Reduce** uses domain-specific
  transformation passes (Regehr et al., PLDI 2012, doi:10.1145/2254064.2254104). All three are
  described here as characterised in the ProbDD and CHISEL papers; I did not open their originals.
- **Learned models that cut verifier calls during reduction.**
  - **ProbDD** keeps a per-element probability of being in the minimal result and picks removals
    to maximise expected gain. It needs O(n) tests vs ddmin's O(n²). Inside HDD and CHISEL it
    produced 59.48% and 11.51% smaller results using 63.22% and 45.27% less time (ESEC/FSE 2021).
  - **CHISEL** learns a decision-tree model of "the likelihood of each candidate program's passing
    the property test" and tries likely-passing reductions first. It ran up to 7.1× faster than
    C-Reduce and 3.7× faster than Perses (Heo, Lee, Pashakhanloo, Naik, CCS 2018,
    https://www.cis.upenn.edu/~mhnaik/papers/ccs18.pdf, §1, §4).
  - These two are the direct precedent for "a surrogate cuts oracle calls *during reduction*".
- **Recipe for instruction sequences** (my synthesis of the above with Revizor's passes; not a
  published algorithm):
  1. Re-verify the original leak with Spectector. Skip it if it does not reproduce.
  2. Make the reduction structure-aware, as in Perses and HDD. Never remove the conditional branch
     or the dependent load→transmit chain without testing. Keep labels consistent. Treat
     `lfence`/barriers as protected.
  3. Run a backward one-instruction removal pass, Revizor-style. Order candidates by a learned
     P(still LEAK after removal) from the ranker, applied to each one-removal variant, in
     CHISEL/ProbDD style. Verify each with Spectector.
  4. Finish with lfence insertion, Revizor-style, to mark the speculative window. That yields a
     *localised* gadget and a fenced SAFE twin, which is also a free hard negative for the ranker
     (it fits the V4 oracle-label pipeline note in `MEMORY.md`).
  5. Record oracle calls per reduction, with and without the surrogate ordering. That pair is the
     efficiency claim.
- μRL's reward divides by instruction count (Tol, Derya, Sunar, 2025, §5.6). A length penalty in
  the generator's reward is a cheap complement to post-hoc reduction.

---

## 5. Evaluation: showing the filter helps, and the pitfalls

- **Metric.** Use confirmed leaks per oracle call, as a cumulative curve against oracle calls
  (already `rank/efficiency.py`). Add:
  - the **base-rate ceiling** (1 / base rate);
  - **simple regret** for the minimality objective (smallest verified leak found after N calls);
  - **oracle-calls-to-first-K-leaks**.
  Report the same four baselines every time: random, generator order, length-only, and the
  compile/support filter.
- **Prospective split, not only group-holdout.** `rank/data.py` groups by the 8-hex token-content
  hash in `gadget_id`. Repo measurement: 1,566 groups over 1,987 rows. That hash catches only
  *exact* token duplicates. RL rounds fine-tune on their own leaks, so near-duplicates cross
  rounds. Kapoor & Narayanan list duplicates and non-independence between train and test among
  their 8 leakage types (Patterns 2023, https://arxiv.org/abs/2207.07048). Two fixes:
  - **Hold out whole RL seeds/runs.**
  - **Train on rounds ≤ r, test on round r+1.** This matches deployment, where a ranker trained on
    past rounds scores the next one.
- **Spurious correlates.** Arp et al.'s pitfalls P4 (spurious correlations), P6 (inappropriate
  baseline), P7 (inappropriate performance measures) and P8 (base-rate fallacy under imbalance)
  all apply (USENIX Security 2022, https://arxiv.org/abs/2010.09470):
  - Length already gives AUC 0.588.
  - `trace_length` is length-like by construction.
  - V1 is 77% LEAK.
  Mitigations:
  - Report a length-matched evaluation, binning by instruction count and measuring
    within-bin ranking.
  - Report precision@K against the base rate, not raw.
- **Active-learning evaluation hygiene.** Lüth et al. identify five pitfalls that make AL results
  inconsistent, including weak baselines and unrealistic settings (NeurIPS 2023,
  https://arxiv.org/abs/2301.10625). Use a fixed oracle budget, multiple seeds (≥ 5, matching repo
  policy), a random baseline with the same budget, and the same tuned model across strategies.
- **Uncertainty quality.** Report calibration (ECE or a reliability plot) for P(LEAK), as the
  Phase-3 design already asks. Calibration on the i.i.d. split does not carry over to shift
  (Ovadia et al., 2019), so measure it on the prospective split.

---

## 6. Mapping onto the existing `rank/` code

| File | Keep | Change |
|---|---|---|
| `rank/encoder_hook.py` | Pre-hook capture of `combined`; no fork | Add an `unfreeze()` path for LP-FT (Kumar et al. 2022). Optionally load a task-adapted MLM (Gururangan et al. 2020) |
| `rank/regressor.py` | Small head; target standardisation; BN-frozen MC passes as an ablation | Replace the SmoothL1 regression on `signal` with **two BCE heads**, `p_runnable` and `p_leak_given_runnable`, scored as their product, plus a calibration step (temperature or isotonic on a held-out round). Add a **5-member ensemble** (Ovadia et al. 2019) and keep MC-dropout as an ablation |
| `rank/acquisition.py` | `select_topk` masking and non-finite handling | Add `thompson_topk` (sample one ensemble member per batch slot; Kandasamy et al. 2018) and a content-hash dedup within a batch (BatchBALD's redundancy point). Keep greedy as a first-class arm (Bietti et al.) |
| `rank/data.py` | `load_rows`; `buildable` mask | Keep `verdict` 3-way (`leak`/`safe`/`unrunnable`), not just `signal`. Group by **run/seed**, and add a `round_split(train_rounds, test_round)`. Load `gen/rl_mc/SPECTRE_V4_*` too |
| `rank/efficiency.py` | Cumulative curve; NaN on degenerate batches | Add baselines: length-only, generator order, compile/support filter. Add the base-rate ceiling and a length-binned precision@K |
| `rank/train_ranker.py` | Multi-seed CI scaffolding | Loop over seeds × prospective round splits. Report V1 (runnable filter) and V4 (leak vs safe) **separately**. Add a GBDT baseline on opcode n-grams |
| `gen/relabel_signal.py` / `.sbatch` | Writes `signal: null` for non-adjudicated cases (good) | Also log the **reason** for UNRUNNABLE (compile failure, timeout, `unsupported_ins > 0`, missing status). Today the sample log keeps only the verdict, so the runnable model cannot separate "won't compile" from "Spectector can't model it" |

### First three experiments (in order), with success criteria

**E0: re-measure the gap on clean labels.** No cluster needed; the labels already exist.
- **Run:** `gen/classifier_vs_oracle.py` restricted to `gen/rl_mc/SPECTRE_V4_*` with `verdict ∈ {leak, safe}`.
  Compute ROC-AUC for (a) locked classifier `attack_prob`, (b) length, (c) a 5-fold, seed-grouped
  GBDT on opcode 1–3-grams.
- **Success:** a clear statement of whether the locked classifier tracks *leak vs safe* better than
  length. If (a) ≤ (b), the encoder is not carrying leak semantics for generated gadgets: go to
  LP-FT / a fresh model. If (a) > (b), the 0.44 was a label-set artefact and the frozen head is
  viable.

**E1: non-learned pre-filter.** Cheap; this is Hide-and-Seek's lesson.
- **Run:** an assemble/compile check plus a Spectector-supported-instruction allow-list on every
  realized gadget. Measure the fraction of UNRUNNABLE it rejects, and the fraction of LEAK it
  wrongly rejects.
- **Success:** at least 80% of UNRUNNABLE removed with at most 2% of LEAK lost. Both thresholds are
  proposed, not from literature. This becomes baseline (iv) for everything after it.

**E2: prospective ranker on V4 plus early V1 rounds.**
- **Setup:** train on rounds 0..r of seeds {1, 2}, test on round r+1 of seed 3, rotating seeds,
  for r = 0..3.
- **Arms:**
  - frozen-GINE head, 5-ensemble
  - LP-FT GINE
  - GBDT on n-grams
  - length-only
  - random
  - generator order
- **Target:** P(runnable) · P(LEAK | runnable).
- **Success:** the leaks-per-call curve of the best learned arm lies above *both* length-only and
  E1-filter-then-random, with a multi-seed 95% CI on the AUC gain excluding 0. The gain should be
  reported as a fraction of the base-rate ceiling. If no learned arm beats E1 plus random, report
  that the cheap filter is sufficient for V1/V4 at current generator yield. That is a legitimate
  result, and it matches the prior art (§2).

---

## 7. What I could not verify

- Zeller & Hildebrandt TSE 2002 full text: the authors' site refused the connection. The ddmin
  complexity and the 1-minimality definition are cited via the ProbDD paper (second-hand).
- HDD, Perses and C-Reduce originals were not opened. They are characterised via ProbDD and CHISEL.
- SpecTaint (NDSS 2021): I did not read the paper, only search-result metadata.
- Scam-V observation refinement (MICRO 2021): ACM returned 403. I rely on the abstract-level
  description. Program-generation details for Scam-V CAV 2020 were not visible in the abstract.
- FastSpec: I could not confirm whether SpectreGAN outputs were hardware-validated, or whether the
  detector was ever used as an in-loop filter. Abstract only.
- AutoCAT and Medusa/Transynther: abstract and search-level only.
- Venues for papers whose arXiv record has no journal-ref were taken from my knowledge, not the record: BORE (ICML 2021), LFBO (ICML 2022), BatchBALD (NeurIPS 2019), Kandasamy et al. (AISTATS 2018), Bietti et al. (JMLR 2021), Wilson et al. DKL (AISTATS 2016), Srinivas et al. (ICML 2010), Gal & Ghahramani (ICML 2016), Kapoor & Narayanan (Patterns 2023), Gelbart et al. (UAI 2014). The paper content cited is from the arXiv abstracts; the **venues are UNVERIFIED**.
- The GAUCHE venue (NeurIPS 2023 Datasets & Benchmarks) is not in the arXiv metadata.
- That *no* published speculative-leak tool uses a learned surrogate before the oracle is a negative
  claim. It covers the tools above, and I grepped the full text of Revizor, Hide-and-Seek,
  Spectector, SpecFuzz, Kasper, Teapot and Osiris for "machine learning / neural / surrogate".
  Other work (e.g. RTL fuzzers such as SpecDoctor or Introspectre) was **not checked**.
- Spectector per-gadget cost: the "~25–40 s per leaking gadget" figure is a code comment in
  `oracle/spectector_oracle.py` (~line 183), not a measurement I ran.
- The repo measurements (F1, F2, the length AUC of 0.588) are single computations over the
  committed sample logs. They are not multi-seed statistics with CIs. Recompute them with the
  commands below before quoting.

## 8. Repo measurements used here (reproducible)

```bash
# verdict counts + length per verdict (F1); per-round leak rate (F2); length-only AUC
python3 - <<'EOF'
import json,glob,collections,sys; sys.path.insert(0,'gen')
import numpy as np; from classifier_vs_oracle import roc_auc
s,y=[],[]
for f in glob.glob('gen/rl_ms/*/samples.jsonl'):
    for l in open(f):
        if l.strip():
            r=json.loads(l); s.append(len(r.get('realized_asm') or [])); y.append(r['verdict']=='leak')
print('length AUC', roc_auc(np.array(s,float), np.array(y)))   # 0.588 on 2026-10-02
EOF
```
