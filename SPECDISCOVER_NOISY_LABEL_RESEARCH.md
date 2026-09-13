# SPECDISCOVER — Noisy-label / low-sample literature assessment for the RISC-V transfer test

**What this file is.** A primary-source assessment of three supervisor-recommended papers —
Co-teaching (arXiv 1804.06872), Confident Learning (arXiv 1911.00068), DivideMix
(arXiv 2002.07394) — against one specific question: *can any of them improve how we handle
DATA for feature learning when standing up a NEW ISA (RISC-V) with very few, heuristically
labelled samples?* This is **not** the agreement/discard question that was extracted earlier.

**Written:** 2026-08-28. **Sources:** arXiv abstract pages, full PDFs / ar5iv HTML, and the
official reference implementations (cleanlab, LiJunnan1992/DivideMix, bhanML/Co-teaching).
Section, equation and line references are given for every load-bearing claim. Where I am
reasoning rather than quoting, it is marked **[inference]**.

**Nothing was changed in the repo other than this file.** (One temporary dependency, `pypdf`,
was installed into `.venv_fix` to read PDFs and then uninstalled.)

---

## 0. Repo facts this assessment is built on (verified, not assumed)

These were measured directly, because the applicability verdicts hinge on them.

| Fact | How verified |
| --- | --- |
| `riscv_corpus/` contains **498** `.s` files | `ls riscv_corpus/*.s \| wc -l` |
| Those are **249 distinct source groups** × 2 optimisation levels (`.O0`, `.O2`) | stems after stripping `\.O[0-9]+\.riscv64\.s` |
| Distinct **groups** per label keyword: `l1tf` 81, `bhi` 58, `retbleed` 51, `inception` 24, `mds` 18, `spectre_v2` 6, `spectre_v4` 6, `spectre_rsb` 2, `spectre_2` 1, `utils` 1, `downfall` 1 (excluded) | substring count over the 249 stems |
| **BENIGN in the RISC-V corpus is n = 1 group** (`c_vulns_c_code_utils`), i.e. 2 files — and it is the *documented mislabel* | `KEYWORD_TO_LABEL` entry `("utils","BENIGN")`, `spec/eval_riscv_real.py:82` |
| **SPECTRE_V1 has ZERO files** in `riscv_corpus/` — not "few", *none* | `ls riscv_corpus/ \| grep -ci "spectre_v1\|spectre_1"` → 0 |
| ~~`SPECTRE_RSB` (2 groups) is **not in the v54 checkpoint's label vocab**, so `eval_riscv_real.py` drops it~~ **FALSE — corrected 2026-08-28.** `SPECTRE_RSB` **is** in the label vocab of every checkpoint on disk (verified across `v50`, `v51`, `v52`, `v52_b`, `v54/viz_v54`, `v54/viz_v54_spec`: all 10 classes, `SPECTRE_RSB` present in each). The vocab filter at `spec/eval_riscv_real.py` therefore does **not** drop it. Its 2 groups are still too few to carry evidential weight, which is the only part of the surrounding argument that depended on this. | `torch.load(ckpt)['label_to_id']` over all six checkpoints |
| Huge blocks of the corpus are auto-generated near-duplicates (`..._gen_0` … `..._gen_49`); e.g. 50 `expanded_variants_l1tf_arm64_gen_*` groups and 50 `expanded_variants_bhi_arm64_gen_*` | stem listing |
| The label function is **deterministic substring matching on the filename** — `label_for_stem()` returns the first matching keyword's label | `spec/eval_riscv_real.py:88-97` |
| **No keyword collisions** among the 249 stems (no stem matches two competing keywords) | scripted check |

Two consequences worth stating before any paper is discussed:

1. **Effective sample size is far below the file count.** 498 files ≈ 249 groups ≈ maybe a few
   dozen genuinely distinct programs, because `gen_0…gen_49` blocks are generator variants of one
   seed program. Any per-class "n" quoted at file level overstates independent information by
   roughly an order of magnitude. **[inference, but forced by the filenames]**
2. **The noise is not random.** Because `label_for_stem` is a deterministic function of the
   filename, every file in a group gets the *same* label, right or wrong, and correlated files get
   correlated errors. This matters enormously in §3.

> **Discrepancy I could not reconcile.** The task brief states "L1TF is measurable but n=2" and
> "SPECTRE_V4 has 1 group". In `riscv_corpus/` itself L1TF has 81 groups and SPECTRE_V4 has 6.
> Those n=1/n=2 figures presumably come from a *different* holdout split (the stratified
> group-holdout in the RISC-V training-integration work), not from this corpus. I have not
> resolved which split the brief refers to. **The argument below does not depend on it**: BENIGN
> at n=1 group and SPECTRE_V1 at n=0 files are verified from the corpus directly and are already
> below every method's minimum viable condition.

---

## 1. Bottom line, ranked

**Highest-value item first.** The honest summary is that these three papers contribute one
usable tool, one strong *negative* result, and one good pointer to a fourth paper that fits our
constraints better than any of the three.

### 1. Run Confident Learning as a **label audit on the x86/ARM training pool**, not on RISC-V.
The x86/ARM pool (`v54/data/v54_train.jsonl`, 5,533 records, 9 classes) is the only part of our
data where CL's stated preconditions are actually satisfiable: enough examples per class for
k-fold cross-validation, a model that emits calibrated-ish softmax, and no need to know the noise
rate in advance. CL is model-agnostic — it consumes only `(out-of-sample pred_probs, noisy
labels)` (§3, p.5: *"CL requires two inputs: (1) the out-of-sample predicted probabilities and
(2) the vector of noisy labels"*), so our existing GINE checkpoint can supply them with no
architecture change. Cost: one 4-fold CV run (§5: *"we compute out-of-sample predicted
probabilities using four-fold cross-validation"*) plus <1 minute of counting. The RISC-V transfer
number inherits every mislabel in the source pool, so cleaning the pool is the cheapest way to
make the RISC-V result interpretable. **This is a diagnostic, not an accuracy claim.**
*Caveat that must be respected:* the folds must be **group-aware** (`eval/splits.py`), or CL will
see leaked near-duplicates, judge them confidently correct, and tell you your labels are clean
when they are not.

### 2. Hand-ground-truth the 249 RISC-V groups. No paper here can do it for you.
At 249 groups and ~10 keywords, statistical noise estimation is the *wrong tool*: CL needs ≥ k
examples per class for k-fold CV (cleanlab defaults to `cv_n_folds=5` with `StratifiedKFold`,
`cleanlab/count.py:989`), and our BENIGN class has 1 group. Reading 249 filenames and spot-
checking the ones whose keyword is doing the most work (`utils` → BENIGN; the `retbleed_rsb` /
`mds_ridl` / `mds_zombie` families) is a few hours of work and produces *ground truth*, which is
strictly better than any estimate. The papers' own preconditions point here.

### 3. If you want a method, **Ren et al. 2018 (arXiv 1803.09050) fits our constraints better than all three recommended papers.**
It is cited by Co-teaching (ar5iv §2, ref [34]: *"Ren et al. leveraged an additional validation set
to adaptively assign weights to training examples in every iteration"*), so it is inside the
requested citation graph. Why it fits: (a) it needs only a *small clean validation set*, and the
paper measures how small — *"using 15 validation images for all classes only results in a 2% drop
in performance, and the overall classification performance does not grow after having more than
100 validation images"* (§ "Size of the clean validation set"); (b) it is the only one of these
papers that runs a **class-imbalance** experiment — *"With class imbalance ratio of 200:1, our
method only reports a small increase of error rate around 2%"* — and (c) crucially for us,
*"our approach does not throw away samples based on its class or training loss"*, i.e. it is the
one method that structurally cannot delete our n=1 and n=2 classes. Unverified for our setting:
no graph/assembly experiments, and it needs a second-order (meta) gradient, which is real
engineering on the GINE.

### 4. Semi-supervised use of unlabelled RISC-V assembly is **plausible but must reckon with a prior negative result in this repo.**
DivideMix's semi-supervised move does *not* transfer the way the brief hopes — see §2.3: its
"unlabeled" set is a **partition of the same training set**, not extra data. The idea the brief is
reaching for is MixMatch (arXiv 1905.02249, which DivideMix builds on and cites), and MixMatch's
few-label result is genuinely striking: **11.08% ± 0.87 error on CIFAR-10 with 250 labels**
(25/class) vs 6.24% with 4000 labels (Table 5, appendix B.1). But it needs ~49,750 in-domain
*unlabelled* images alongside those 250 labels (§4.2: *"treat most of the dataset as unlabeled and
use a small portion as labeled data"*). We *can* manufacture unlimited unlabelled riscv64 assembly
by compiling arbitrary C. **However**: this repo already exploited unlabelled assembly via the
self-supervised MLM encoder (`spec/train_mlm.py`, `spec/asm_encoder.py`) and the multi-seed TOST
**refuted** parity — learned features came in **−2.5 to −3.0 pp below hand features**
(`SPECDISCOVER_PHASE01_RIGOR.md` §A2). Any new "use the unlabelled data" proposal has to explain
why it beats that. Also, MixUp is undefined on discrete instruction graphs (§3).

### 5. Do **not** adopt Co-teaching here. It is actively hazardous at our sample sizes.
It requires the noise rate ε to be known in advance (§4 Experimental setup), its selection is
**class-agnostic and per-mini-batch** (official `loss.py`: `num_remember = int(remember_rate *
len(loss_1_sorted))`, no per-class floor), and the paper itself warns *"if too many instances are
dropped, networks may not get sufficient training data and the performance can deteriorate"*
(§4.2). A class with 1–2 groups can be discarded entirely with no guard. See §3.1.

### 6. Do **not** run DivideMix's GMM on the RISC-V slice.
Two-component GMM over ~500 (heavily duplicated) losses, fit globally rather than per class, will
sort our rare classes wholesale into "unlabeled" because rare classes have high loss. See §3.3.

---

## 2. Per paper

### 2.1 Co-teaching — arXiv 1804.06872 (NeurIPS 2018)
Primary: https://arxiv.org/abs/1804.06872 · https://ar5iv.labs.arxiv.org/html/1804.06872 ·
code https://github.com/bhanML/Co-teaching (`loss.py`)

**Mechanism.** Two networks f, g train simultaneously. In each mini-batch, each selects the
`R(T)%` smallest-loss instances and passes *that subset* to its peer for the gradient step
(Algorithm 1, lines 4–7). The schedule is

> `R(T) = 1 − min{ (T/T_k)·τ , τ }`  — Algorithm 1, line 8

The justification is the memorisation effect: *"deep networks will learn clean and easy pattern in
the initial epochs"* (§3), so early losses discriminate clean from noisy.

**Data requirements.**
- **Datasets:** MNIST 60,000 train / 10,000 test / 10 classes; CIFAR-10 50,000 / 10,000 / 10;
  CIFAR-100 50,000 / 10,000 / 100 (Table 1). **No dataset below 50k is reported.**
- Batch size 128, 200 epochs, Adam lr 0.001, each experiment repeated 5× (§4).
- Noise is *synthetic*: pair-flip and symmetry-flip transition matrices Q, ε ∈ {0.2, 0.45, 0.5} (§4).

**Does it need clean validation data?** Not directly — but it needs something arguably harder:
**the noise rate itself.**

> *"we assume the noise level ε is known and set R(T)=1−τ·min(T/T_k,1) with T_k=10 and τ=ε. If ε
> is not known in advanced, ε can be inferred using validation sets [23,43]."* — §4, Experimental setup

The escape clause is a citation, **not an implemented or evaluated part of the paper**. Every
number in the paper is produced with the true ε handed to the algorithm.

**Sample-efficiency / cost of two networks.** The paper never studies it. Both networks see the
*same* data, so the two-network design costs 2× compute, not 2× data. **[inference]** What it does
cost in a low-sample regime is *diversity*: the paper's argument for why two networks help is that
they filter different errors (§3, contrast with MentorNet), and their divergence comes from random
initialisation and different mini-batch streams. With a few hundred samples and a handful of
batches per epoch, those divergence sources shrink and the two networks approach each other —
untested by the authors, and a real risk for us.

**Transfer / imbalance / small data.** Nothing. The paper contains no small-dataset, class-
imbalance, few-shot, or cross-domain experiment or discussion. It explicitly distances itself from
semi-supervised learning: *"Co-training is designed for semi-supervised learning (SSL), and
Co-teaching is for learning with noisy labels (LNL); as LNL is not a special case of SSL, we cannot
simply translate Co-training from one problem setting to another"* (§3).

**Applicability verdict for our low-sample RISC-V case: NO. Reject.**
Three independent blockers: (i) we do not know ε, and the paper's own answer ("infer it from a
validation set") is exactly the thing we lack for RISC-V; (ii) selection is class-agnostic
(`loss.py` sorts the whole batch and keeps a fixed count), so a 1-group BENIGN class can be
dropped entirely; (iii) the paper's own §4.2 warns that over-dropping starves the network. At
τ = ε = 0.2, we would discard ~20% of a corpus whose effective size is a few dozen programs.

---

### 2.2 Confident Learning — arXiv 1911.00068 (JAIR 70:1373–1411, 2021)
Primary: https://arxiv.org/abs/1911.00068 · PDF https://arxiv.org/pdf/1911.00068 ·
code https://github.com/cleanlab/cleanlab

**Mechanism.** Estimate the joint distribution `Q_{ỹ,y*}` of noisy and true labels, then prune.
The central object is the **confident joint** (Eq. 1):

> `C_{ỹ,y*}[i][j] := |X̂_{ỹ=i, y*=j}|` where
> `X̂_{ỹ=i,y*=j} := { x ∈ X_{ỹ=i} : p̂(ỹ=j; x,θ) ≥ t_j ,  j = argmax_{l: p̂(ỹ=l;x,θ) ≥ t_l} p̂(ỹ=l;x,θ) }`

with the **per-class threshold** being the mean self-confidence of that class (Eq. 2):

> `t_j = (1/|X_{ỹ=j}|) · Σ_{x ∈ X_{ỹ=j}} p̂(ỹ=j; x, θ)`

Eq. 3 calibrates `C` into `Q̂` so row sums match observed class marginals. Five rank-and-prune
variants follow (§3.2): `C_confusion`, `C_{ỹ,y*}` (default), Prune-by-Class, Prune-by-Noise-Rate,
and their intersection C+NR.

**Data requirements — this is where it gets specific.**
- **Out-of-sample predicted probabilities are mandatory.** §3: *"CL requires two inputs: (1) the
  out-of-sample predicted probabilities P̂ and (2) the vector of noisy labels ỹ."* §3.2: *"in our
  paper k = 4 is fixed in the experiments using cross-validation."* §5: *"we compute out-of-sample
  predicted probabilities P̂ using four-fold cross-validation."* The reference implementation
  defaults to **5** folds via `StratifiedKFold(n_splits=cv_n_folds, ...)`
  (`cleanlab/count.py:989`, default `cv_n_folds=5` at `count.py:893`).
- **At least one example per class is assumed.** §4, verbatim: *"Throughout, we assume X includes
  at least one example from every class."*
- **The paper itself flags the small-class discretisation problem**, §4, verbatim:
  > *"if a noise rate is 0.39, but the dataset has only 5 examples in that class, the nearest
  > possible estimate by removing errors is 2/5 = 0.4 ≊ 0.39. So, Q̂ is technically a consistent
  > estimator for Q only because of discretization error."*
  This is the closest the paper comes to a minimum-viable-n statement, and it is illustrated with
  **n = 5** as an already-awkward case.
- The reference implementation encodes the same worry operationally: `find_label_issues(...,
  min_examples_per_class=1)` — *"Minimum number of examples per class to avoid flagging as label
  issues. This is useful to avoid deleting too much data from one class when pruning noisy
  examples in datasets with rare classes"* (`cleanlab/filter.py:161-164`) — and emits
  *"May not flag all label issues in class: {k}, it has too few examples"*
  (`filter.py:861, 891`). `compute_confident_joint` also force-clips the diagonal:
  `np.fill_diagonal(confident_joint, confident_joint.diagonal().clip(min=1))` with the comment
  *"Guarantee at least one correctly labeled example is represented in every class"*
  (`cleanlab/count.py:611-612`).

**Noise assumption (the key limit).** §2, Assumptions:

> *"a class-conditional classification noise process (Angluin and Laird, 1988) maps y*→ỹ such that
> every label in class j may be independently mislabeled as class i with probability p(ỹ=i|y*=j)."*

and §3, Goal, stated as an implication:

> *"Our assumption of a class-conditional noise process implies the label noise transitions are
> data-independent, i.e., p(ỹ|y*;x) = p(ỹ|y*)."*

**Theory conditions.** Thm 1 needs Condition 1 (**Ideal**: `p̂` exactly equals the true noise
rates) plus the diagonal of `Q_{ỹ|y*}` maximising its row *and* column. Cor 1.1 relaxes to
Condition 2 (**Per-Class Diffracted**: `p̂ = ε_j^(1) p* + ε_j^(2)`, a per-class affine distortion),
needing only row-maximal diagonal. Thm 2 relaxes further to Condition 3 (**Per-Example
Diffracted**, Eq. 4: per-example error uniform within the residual between `p*` and the threshold),
again requiring **no label collisions** and row-maximal diagonal. All three are conditions on the
*probabilities*, not on n. There is **no finite-sample bound anywhere in the paper.**

**Class imbalance — a genuine positive.** CL's thresholds are explicitly motivated by imbalance:
§3.1, *"the thresholds in this formulation improve CL uncertainty quantification robustness to
(1) heterogeneous class probability distributions and (2) class-imbalance … These thresholds allow
us to guess y* in spite of class-imbalance, unlike prior art which may guess over-confident classes
for y* because argmax is used."* This is the one property of the three papers that is designed for
our shape of problem. But note it is robustness to *imbalance*, not to *tiny absolute n*.

**Reported scale.** Experiments are CIFAR-10 (50,000 train) with generated asymmetric noise at
20/40/70% across sparsities 0–0.6, averaged over ten trials (§5.1, Tables 2–3), plus real-error
hunts in MNIST, ImageNet, WebVision and Amazon Reviews (§5.2). **No small-data experiment.**

**Applicability verdict.**
- **On the x86/ARM pool (5,533 records, 9 classes): YES — this is the recommended adoption.**
  Conditions are satisfiable, cost is one CV run, and the output is an auditable list of suspect
  records rather than an accuracy claim.
- **On the RISC-V slice: NO.** 5-fold stratified CV is impossible with a 1-group BENIGN class
  (sklearn raises when `n_splits` exceeds the smallest class count) **[inference from
  `StratifiedKFold` semantics + `count.py:989`]**, `t_j` for a 2-file class is the mean of two
  numbers, and the diagonal clip guarantees the joint estimate for that class is degenerate by
  construction. Applicability of CL at n = 1 or n = 2 per class is **unsupported by the paper** —
  its own worked example of an awkward small class is n = 5.

---

### 2.3 DivideMix — arXiv 2002.07394 (ICLR 2020)
Primary: https://arxiv.org/abs/2002.07394 · https://ar5iv.labs.arxiv.org/html/2002.07394 ·
code https://github.com/LiJunnan1992/DivideMix (`Train_cifar.py`)

**Mechanism.** Two networks. Each epoch, each network computes per-sample cross-entropy loss
(Eq. 1) over the training set, fits a **two-component GMM** by EM, and takes each sample's clean
probability as the posterior of the lower-mean component. A threshold τ on `w_i` splits the data;
**co-divide** means network A's GMM divides data for network B. The "noisy" half is then treated
as **unlabeled** and the whole thing is trained with MixMatch, plus label co-refinement (Eq. 3),
sharpening (Eq. 4) and co-guessing.

**The crucial structural point for our question.** §3.1, verbatim:

> *"We divide the training data into a labeled set and an unlabeled set by setting a threshold τ on w_i."*

The unlabeled set is a **partition of the existing labelled training set**. DivideMix ingests **no
external unlabelled data at all**. So the brief's hypothesis — "could unlabelled RISC-V assembly be
used semi-supervised rather than discarded?" — is **not** what DivideMix does. DivideMix relabels
*your own suspect samples* as unlabelled. The idea of bringing in genuinely unlabelled in-domain
data belongs to MixMatch (§1 item 4), which DivideMix consumes as a subroutine.

**Data requirements.**
- **Datasets:** CIFAR-10 / CIFAR-100 (50,000 train each), Clothing1M (**1 million** training
  images), WebVision (**2.4 million**) (§4.1–4.2). The smallest thing DivideMix was ever run on is
  50,000 images.
- PreAct ResNet-18, batch 128, **300 epochs**, warm-up 10 epochs (CIFAR-10) / 30 (CIFAR-100) (§4.1).
- Hyperparameters M=2, T=0.5, α=4, τ=0.5 (0.6 at 90% noise), **λ_u chosen from {0,25,50,150}
  "using a small validation set"** (§4.1) — so it *does* need a held-out set for tuning.
- Clothing1M/WebVision use **ImageNet-pretrained** backbones (§4.1) — i.e. the real-world results
  are transfer-learning results, not from-scratch.
- Official code: `GaussianMixture(n_components=2, max_iter=10, tol=1e-2, reg_covar=5e-4)` fit on
  min-max-normalised losses `losses = (losses-losses.min())/(losses.max()-losses.min())` over a
  hard-coded `torch.zeros(50000)` buffer (`Train_cifar.py:165-190`). The fit is **global — there is
  no per-class stratification of the GMM.**

**Known failure mode the authors document.** Asymmetric (class-conditional) noise breaks the GMM:
§3.1, *"the network would quickly overfit to noise during warm up and produce over-confident (low
entropy) predictions, which leads to most samples having near-zero normalized loss … In such cases,
the GMM cannot effectively distinguish clean and noisy samples based on the loss distribution."*
Their fix is a negative-entropy confidence penalty during warm-up (Eq. 2, Fig. 2). Note this is a
failure at 50,000 samples — the mechanism is fragile even when data is abundant.

**Cost of the two networks — the paper does measure this.** Table 5 ablation, CIFAR-10 / CIFAR-100
"best" accuracies: full DivideMix 96.1 (20% sym) / 93.4 (40% asym) / 31.5 (CIFAR-100 90% sym);
"Divide and MixMatch" (the single-network variant, no co-training / co-refinement) 94.1 / 86.5 /
25.0. So dropping to one network costs ~2 pp at low noise and ~7 pp at 40% asymmetric noise. Again:
the cost is compute and diversity, not data — both networks see the same set.

**Transfer / imbalance / small data.** No class-imbalance study. No small-dataset study. No
ablation on dataset size or warm-up length. Transfer appears only as ImageNet pretraining for the
two million-scale datasets.

**Applicability verdict for our low-sample RISC-V case: NO for the RISC-V slice; UNPROVEN and
architecturally blocked in general.** Reasons in §3.3 — GMM identifiability at n≈500 heavily
duplicated samples, global (unstratified) division wiping out rare classes, and MixUp being
undefined on our input space.

---

## 3. What would break — adversarial

### 3.1 The noise-rate requirement is a hidden clean-data requirement (Co-teaching)
Co-teaching's τ must equal ε. We have no ε for RISC-V. The paper's answer — infer ε from a
validation set (§4) — is unimplemented in the paper, and a validation set is precisely what we
lack. Worse, our labels come from a *deterministic* filename rule, so there is no ε in the paper's
sense at all: there is a set of systematically wrong keyword mappings, not a flip probability.

### 3.2 Confident Learning's class-conditional assumption is violated in the strongest possible way
CL assumes `p(ỹ|y*;x) = p(ỹ|y*)` (§3, Goal) — noise depends on the true class, **not on x**. Our
noise is generated by `label_for_stem()` (`spec/eval_riscv_real.py:88-97`), a deterministic
substring match on the filename. That means:
- **The noise is instance-dependent**, and in fact instance-*determined*: conditioned on provenance,
  the label is a fixed function, not a draw from `p(ỹ|y*)`.
- **The noise is perfectly correlated within a group.** `..._l1tf_..._gen_37.O0` and `.O2` — and all
  50 `gen_*` siblings — are labelled identically. If the `l1tf` mapping is wrong for that family,
  it is wrong 100 times, not 100 independent flips. CL's counting model has no way to represent
  this; it will see 100 confidently-consistent examples and conclude the label is clean.
- **The failure is exactly of the kind CL cannot detect**: a mapping error produces a *self-
  consistent* cluster, which is the signature of a clean class, not of noise.
This is the single most important adversarial point in this document. **Running CL on the RISC-V
slice would likely return "labels are clean" for precisely the mappings most likely to be wrong.**

### 3.3 DivideMix's GMM cannot be trusted here
- **Two components need enough points to be identifiable.** DivideMix fits over 50,000 losses. Our
  RISC-V slice is ~498 records with an effective independent count in the dozens. The official
  code's `reg_covar=5e-4` is a variance floor tuned for min-max-normalised losses at n=50,000
  (`Train_cifar.py:186`); at n≈500 with duplicated points the EM can happily collapse onto one
  cluster or split on a duplication artefact. **[inference — the paper reports no small-n study]**
- **The division is global, not per class.** Nothing in Eq. 1 / §3.1 or in the code stratifies the
  GMM by class. Rare classes have high loss *because they are rare*, not because they are
  mislabelled. A 1-group BENIGN class and a 6-group SPECTRE_V4 class will land in the high-loss
  Gaussian and be swept wholesale into the "unlabeled" set — at which point co-guessing replaces
  their labels with the majority classes' predictions. **This actively destroys the exact classes
  we are trying to measure.**
- **MixUp is undefined on our inputs.** MixMatch/DivideMix's core operation is
  `x' = λ'x₁ + (1−λ')x₂` on continuous images. Our inputs are discrete instruction sequences and
  PDG graphs (`v54/pdg_builder.py`, `spec/spec_pdg_builder.py`). There is no defined convex
  combination of two control-flow graphs. You would have to mix in embedding space (manifold
  mixup), which is a *different, untested* method — none of the three papers evaluates it.
- **The documented GMM failure mode is our noise type.** Their own §3.1 says asymmetric
  (class-conditional) noise breaks the GMM at 50k samples. Ours is worse than asymmetric: it is
  structured/instance-determined.

### 3.4 "n=2" is below every method's floor, and no paper supports it
- Co-teaching: selection has no per-class floor (`loss.py`), so an n=2 class can be dropped.
- Confident Learning: needs k-fold CV (k=4 in the paper, k=5 in cleanlab); an n=1 class cannot be
  stratified. The paper's own smallest illustrated class is n=5, described as already lossy.
- DivideMix: no per-class handling at all.
**Stating it plainly: applicability of any of these three methods at n = 1 or n = 2 per class is
unsupported by the primary sources. Do not claim otherwise.**

### 3.5 SPECTRE_V1 at n = 0 is not a noisy-label problem
No amount of noise modelling creates data. This is a data-collection task, not a method task.

### 3.6 Group leakage will fake a clean result
All three methods rank samples by loss/confidence. Our corpus contains `gen_0…gen_49` near-
duplicates. If any of these methods is run with a random (non-group-aware) split, duplicates land
on both sides, losses are artificially low, and every method reports the data is clean and the
model is accurate. This repo already has the machinery to avoid that (`eval/splits.py` group
holdout) and a documented history of split-related sign reversals
(`SPECDISCOVER_VERIFICATION_GAPS.md`). **Any experiment below must be group-aware or it is void.**

### 3.7 Two networks may not stay diverged at our scale
Both Co-teaching (§3) and DivideMix (§3.1) rely on the two networks *disagreeing*; DivideMix names
its diversity sources: *"different (random) parameter initialization, different training data
division, different (random) mini-batch sequence, and different training targets."* With a few
hundred grouped samples, "different mini-batch sequence" and "different data division" become
nearly vacuous. Neither paper tests this. **[inference]**

### 3.8 The repo has already lost this bet once
The self-supervised-on-unlabelled-assembly route was tried (`spec/train_mlm.py`) and multi-seed
TOST put learned features **−2.5 to −3.0 pp** below hand features
(`SPECDISCOVER_PHASE01_RIGOR.md` §A2), correcting an earlier single-seed "parity" claim. Any
semi-supervised proposal must be pre-registered with the multi-seed harness or it will produce
another finding that evaporates.

---

## 4. Concrete next experiments — each with the smallest falsifying test

Ordered by value/cost. Each states what would kill it.

### E1. CL label audit of the x86/ARM pool *(recommended; ~1 GPU-day)*
Produce out-of-sample `pred_probs` for `v54/data/v54_train.jsonl` with **group-aware** 4-fold CV
using the existing GINE, then compute the confident joint and rank suspects by normalised margin
(CL §3.2, *"we observe ordering label errors by the normalized margin … works well"*).
- **Smallest falsifying test:** take the top-50 flagged records, hand-inspect them. If **fewer than
  ~10** are genuinely mislabelled, CL is not finding real errors in this pool and the line of work
  stops there. (This is a precision check on 50 items, not a retraining run — hours, not days.)
- **Guard:** folds must come from `eval/splits.py`. A random split invalidates the result (§3.6).
- **Do not** report any accuracy delta from this; it is a diagnostic.

### E2. Hand ground-truth of the RISC-V keyword mapping *(recommended; hours, no GPU)*
For each of the 10 keywords in `KEYWORD_TO_LABEL`, read 2–3 representative source files and confirm
the mapping. Priority order by risk: `utils`→BENIGN (n=1 group, already documented as suspect),
`spectre_2`→SPECTRE_V2 (n=1 group), `spectre_rsb` (2 groups, currently silently dropped by the
vocab filter), then the `retbleed_*` / `mds_*` families.
- **Smallest falsifying test:** if all 10 mappings survive inspection, the RISC-V "noisy label"
  premise is *false* and papers 1–3 are irrelevant to RISC-V entirely — which is itself a useful,
  publishable-grade negative finding. If ≥1 mapping is wrong, every existing RISC-V accuracy number
  must be recomputed, and that supersedes all method work.

### E3. Is there even a two-component loss structure? *(cheap; the precondition test for DivideMix)*
Before implementing anything from DivideMix, just **fit the GMM and look at it**: compute
per-sample CE loss for the RISC-V slice under the existing checkpoint, min-max normalise as the
official code does, fit `GaussianMixture(n_components=2, reg_covar=5e-4)`, and compare to a
1-component fit by BIC.
- **Smallest falsifying test:** if BIC prefers 1 component, or if the 2-component split correlates
  with **class** rather than with hand-verified correctness (Spearman against E2's ground truth),
  DivideMix's co-divide is inapplicable and the whole branch is closed. **My prediction is that it
  will split on class, i.e. it will fail — see §3.3.** This test costs one forward pass.

### E4. Small-clean-set reweighting (Ren et al.) — only after E2 supplies the clean set
Use E2's hand-verified groups as the clean validation set (Ren et al. show 15 clean examples total
already gets within ~2% of their best), and reweight the RISC-V training records by meta-gradient.
- **Smallest falsifying test:** run it against a plain class-balanced-reweighting baseline over the
  repo's multi-seed harness (`eval/full_tost/`, ≥5 seeds, group holdout). If the 90% CI on the
  difference straddles zero, drop it. Do **not** run a single seed — this repo's documented failure
  mode is exactly single-seed "parity" claims (`SPECDISCOVER_PHASE01_RIGOR.md` §A2).

### E5. Semi-supervised with genuinely new unlabelled riscv64 assembly *(largest, do last)*
Compile a large body of arbitrary C to riscv64 to create ~10⁴–10⁵ unlabelled records, and use them
as the unlabelled stream (embedding-space mixup, since input mixup is undefined — §3.3).
- **Smallest falsifying test before building anything:** re-run the existing MLM encoder
  (`spec/train_mlm.py`) with 10× more unlabelled riscv64 data and re-run the A2 TOST. If the
  learned-feature deficit does **not** shrink from −2.5/−3.0 pp, more unlabelled data is not the
  bottleneck and E5 is dead. This reuses existing code and answers the question without
  implementing MixMatch at all.

### E6. Explicitly out of scope
SPECTRE_V1 (n=0 files) cannot be addressed by any method here. It needs new RISC-V PoCs.

---

## 5. Source list

| Source | URL | Used for |
| --- | --- | --- |
| Co-teaching, Han et al., NeurIPS 2018 | https://arxiv.org/abs/1804.06872 · https://ar5iv.labs.arxiv.org/html/1804.06872 | Alg. 1 (R(T)), §3, §4 setup + Table 1, §4.2 |
| Co-teaching reference code | https://github.com/bhanML/Co-teaching (`loss.py`) | class-agnostic per-batch selection |
| Confident Learning, Northcutt et al., JAIR 70:1373–1411 (2021) | https://arxiv.org/abs/1911.00068 · https://arxiv.org/pdf/1911.00068 | §2 Assumptions, §3–3.2 (Eq. 1–3), §4 (Cond. 1–3, Thm 1–2), §5–5.1 |
| cleanlab reference implementation | https://github.com/cleanlab/cleanlab — `cleanlab/filter.py`, `cleanlab/count.py` | `min_examples_per_class`, `cv_n_folds=5` + `StratifiedKFold`, diagonal `clip(min=1)` |
| DivideMix, Li et al., ICLR 2020 | https://arxiv.org/abs/2002.07394 · https://ar5iv.labs.arxiv.org/html/2002.07394 | §3.1 co-divide, Eq. 1–4, §4.1 setup, §4.3 Table 5 |
| DivideMix reference code | https://github.com/LiJunnan1992/DivideMix (`Train_cifar.py:165-190`) | GMM parameters, global unstratified fit |
| MixMatch, Berthelot et al., NeurIPS 2019 (cited by DivideMix) | https://arxiv.org/abs/1905.02249 · https://arxiv.org/pdf/1905.02249 | §4.2, Table 5 appendix (11.08% @ 250 labels) |
| Ren et al., ICML 2018 (cited by Co-teaching, ref [34]) | https://arxiv.org/abs/1803.09050 · https://arxiv.org/pdf/1803.09050 | abstract, class-imbalance experiment, "Size of the clean validation set" ablation |
| Repo | `spec/eval_riscv_real.py`, `riscv_corpus/`, `SPECDISCOVER_PHASE01_RIGOR.md`, `SPECDISCOVER_VERIFICATION_GAPS.md`, `eval/splits.py`, `spec/train_mlm.py` | §0 facts, §3.6, §3.8 |
