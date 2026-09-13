# SpecDiscover — standup update, 2 September 2026

*Internal record. Every number carries its caveat inline, so this is safe to send
if asked for. Covers the period since the last conversation.*

---

## 1. RISC-V: coarse spec features transfer where hand features collapse

Trained on x86_64+arm64 only, evaluated zero-shot on real RISC-V:

| feature tier | RISC-V zero-shot |
|---|---|
| `hand-58` (ISA-locked) | **7.65%** |
| `spec-42` (spec-derived) | **69.70%** |

A 62-point gap. `hand-58`'s features are literal x86/ARM regexes (`frac_movq`,
`_X86_ONLY`), so it has no mechanism for reading RISC-V at all — that number is the
floor for "just use the hand features on a new ISA". This is the strongest positive
result in the project.

**The caveat that must be said in the same breath.** Our RISC-V corpus is a
mechanical transliteration of our own x86/ARM corpus, produced by a ~40-rule
mnemonic substitution table. 496 records collapse to **22 source families**, Kish
**effective n = 7.34**. Three classes (SPECTRE_V4, SPECTRE_RSB, BENIGN) have a single
family each, so their confidence interval is *undefined*, not narrow. Group-aware
intervals are **3.5× wider** than the record-level ones previously quoted.

Two further checks, both of which cut against over-reading the number:

- **RISC-V transfers *better* than ARM does** (69.70% vs 59.22% for `spec-42`). An
  ISA that is a translation of the training corpus being *easier* than a genuinely
  independent one is evidence the number is flattered by shared provenance.
- 11.5% of the RISC-V corpus are `-O2` **stubs** where the compiler deleted the
  gadget but the file kept its attack label. A coarse feature tier scores **100%** on
  those by reading residual compiler shape rather than any attack.

**Honest position:** a promising direction with a real mechanism behind it, not a
result. Fixing it needs data, not features.

## 2. Learned features lose. This inverts a claim in the draft.

40 GINE runs, 10 seeds per mode, paired, on the locked split:

| node features | test-acc | macro-F1 |
|---|---|---|
| **hand** | **96.01% ± 0.55** | **82.81%** |
| learned | 94.35% ± 0.63 | 79.33% |
| both | 93.85% ± 0.87 | 78.99% |
| diff-gated (Alik's proposal) | 94.32% ± 0.82 | 79.90% |
| ensemble-gated (Paul's proposal) | 94.25% ± 0.54 | 78.78% |

Paired against `hand`, every learned variant is significantly worse: −1.66pp accuracy
and −3.47pp macro-F1 for `learned`, both p < 0.01.

**The draft currently bolds "Hand + contextual MLM" as the winning configuration**
(`specexec_methodology.tex:1126`). That is now contradicted by the strongest evidence
we have. My recommendation is to reframe the automated-feature-engineering section as
a negative result rather than patch the table — but that is a scope decision for you.

Two supporting findings:

- **L1TF's "+11.89pp lift" from learned features is exactly −0.00pp** (p=1.000,
  identical 69.19% means). That was the single strongest argument for the learned
  tier. It does not exist.
- **RF-ablation results have the opposite sign to GINE.** The RF harness said
  `hand+MLM` *beats* `hand-58` on SPECTRE_V2 by +4.55pp; GINE says it loses by
  9.55pp. RF must never be used as a proxy for GINE — they answer different
  questions.

## 3. Alik's two asks — both now have measured answers

### The window size

Alik suggested ~800–1000 instructions. Census of all **1,406** `.s` files in the
corpus:

```
median 28 instructions, mean 36.6
files with >=  100 instructions:  20  (1.4%)
files with >=  800 instructions:   3  (0.2%)
```

**Only 3 files could supply even one 800-instruction window.** The target is
unreachable at any scale in this corpus — it implicitly assumes execution traces or
full-program disassembly, and ours is a fragment corpus. Separately,
`wsl_trace_extract.py` — the one component that extracts from *real hardware traces* —
independently converged on 30.

This is not a rejection of the idea; it is a fact about the data that was not
available when the suggestion was made. The reachable ladder is **30 → 50 → 100**,
using the 151 files with ≥50 instructions.

### Class-representative differencing

Built it, measured it on GINE across 10 paired seeds. **Null.** The single-arm gate
moved SPECTRE_V2 by **+0.97pp (p=0.808)**; the calibrated multi-arm ensemble version
is **−1.50pp** against hand features overall.

Worth knowing *why* the first attempt was a weak test: the hardcoded 0.90 cosine
threshold sat far above the actual similarity distribution (calibrated value ≈ 0.55),
so the original gate touched only **4.2%** of positions — it was nearly inert. The
calibrated version touches **55.4%**, with arms disagreeing on 36.8% of adjudicated
positions. So this is a fair test of the idea, and it comes out negative.

What the ensemble rule *does* buy: it rescues semantically critical features that a
single-arm cut discards (`FENCE_LOAD` — the Spectre-V1 mitigation primitive, `TIMER`,
`CALL_IND`). Good for coverage, not for accuracy.

## 4. Generator baseline, re-measured

The previously-quoted figures were from **9 August** and predate the `<fn>` placeholder
fix (11 August), so they were stale. Re-run today at the same 300-sequence sample,
twice independently, so the numbers are replicated rather than a single favourable
sample:

| | Aug-09 (stale) | **Aug-30 run A** | **run B** | delta |
|---|---|---|---|---|
| per-instruction validity | 71.5% | **80.1%** | 79.0% | ≈ +8pp |
| &nbsp;&nbsp;x86_64 | 74.9% | 81.5% | 79.4% | ≈ +5pp |
| &nbsp;&nbsp;arm64 | 66.7% | 78.2% | 78.4% | ≈ +12pp |
| **per-sequence (all instructions valid)** | **2.3%** (7/300) | **4.7%** (14/300) | **4.0%** (12/300) | ≈ +2pp |
| `unresolved_placeholder` share | 45.9% | 17.9% | 18.0% | ≈ −28pp |

The two runs agree closely, so the roughly-doubled per-sequence rate is real and
not sampling noise. Quote it as **~4%**, not 4.7%.

The fix worked and the number roughly doubled — but **~4% is still the binding
constraint on the whole generation pipeline.** The arithmetic is unforgiving: a
sequence needs *every* instruction to assemble, so at 80% per-instruction and ~25
instructions per gadget, per-sequence validity cannot get far off the floor. Getting
to a usable generator needs per-instruction validity near 99%, not near 80%.

The failure profile has also shifted. `unresolved_placeholder` is no longer dominant;
**78.4% of malformed instructions are now in the uncategorised "other" bucket**, which
nobody has triaged. That triage is the obvious next piece of work on the generator.

## 4b. Generator "other" bucket triaged — and its dominant cause fixed (+6x)

The uncategorised `other` bucket (52.4% of malformed instructions) is now opened
up (`gen/triage_other_failures.py`, clustering by llvm-mc's real diagnostic).
**70.4% of it is a single Realizer bug**: the x86 register pool is all 64-bit, so
size-suffixed mnemonics got 64-bit registers (`movl (%rsi), %rcx`) that the
assembler rejects. Width-matching the register (spec-driven, x86-only, no retrain)
gives, in a controlled n=50 A/B:

| metric | before | after |
|---|---|---|
| per-instruction | 81.1% | 87.9% |
| &nbsp;&nbsp;x86_64 | 82.9% | **94.5%** |
| &nbsp;&nbsp;arm64 (control) | 78.5% | 78.6% |
| **per-sequence** | **3.5%** | **21.5% (6.1x)** |

arm64 flat confirms the gain is the fix, not sampling. Per-sequence is still far
from the ~99% per-instruction a usable generator needs, but the floor moved 6x at
the Realizer. Residual bucket, ranked: cross-ISA mnemonic leakage (next),
symbol-in-mnemonic-position, ARM register-indexed addressing.

## 5. What I propose next

Source real RISC-V data to test the classifier against, because the transliterated
corpus caps what any feature work can demonstrate.

Findings from a primary-source survey (`SPECDISCOVER_RISCV_DATA_SOURCES.md`):

- **RISC-V speculation is real but only on out-of-order cores.** In-order parts
  (SiFive U74, T-Head C906/C908, SpacemiT X60) are empirically *not* vulnerable;
  out-of-order parts (SiFive P550, T-Head C910/C920) are, confirmed on real silicon.
  **I intend to scope the paper's RISC-V claim to OoO cores** — that is a
  strengthening, not a hedge, and it pre-empts the obvious reviewer objection.
- **Almost nothing is sourceable.** No public RISC-V gadget corpus exists, and none of
  the x86 tooling (FastSpec, SafeSide, Kasper, Spectector, Revizor) supports RISC-V.
  The genuinely usable count is **2–5 real speculative-execution gadgets**
  (`riscv-boom/boom-attacks`, `cispa/Security-RISC`) — most of that repo's ~25
  experiments are side-channel primitives on in-order boards, not transient-execution
  gadgets.
- **Creating a real corpus is a months problem**, calibrated against the 2019 BOOM
  project (a semester → 2 working gadgets). There is no RISC-V equivalent of
  Spectector or Revizor to supply ground-truth labels.

**Plan:** harvest the 2–5 real gadgets as an untouched *validation* set — never
trained on — and template-generate for volume, with labels verified structurally
rather than dynamically. Against a corpus with effective n = 7.34, even three
genuinely independent samples are meaningful evidence, and they are the only thing
that can tell us whether generated gadgets are realistic.

**The independence gate is built and calibrated** (`eval/isa_independence_check.py`).
Generated RISC-V will not be accepted on the honour system: it must pass a
canonical-op **bigram**-distribution test, on the reasoning that a mnemonic
substitution table rewrites opcodes one at a time and cannot change instruction
*ordering*. Every distance is reported against an **x86-vs-arm yardstick** — two
corpora we know were built independently — so the number means something.

Calibrating it on our existing RISC-V corpus, which we *know* is a transliteration,
produced a result worth reporting on its own:

| comparison | JS divergence | vs yardstick |
|---|---|---|
| x86_64 vs arm64 (yardstick) | 0.4420 [0.4172, 0.4992] | — |
| x86_64 vs riscv64 | 0.5789 [0.5595, 0.6232] | 1.31x |
| arm64 vs riscv64 | 0.4289 [0.3642, 0.4938] | **0.97x** |

**Pooled, the test detects nothing** — RISC-V sits as far from ARM as x86 does. Run
per class, which controls for class mix, it inverts: RISC-V is closer to ARM than
ARM is to x86 in **6 of 6** shared classes (ratios 0.57x–0.81x, sign test
**p = 0.016**), and `arm-rv` is the smallest column in every single class. ARM is
exactly the transliteration source — the RISC-V corpus was compiled from
`arm64`-named sources (`enhanced_variants/l1tf_arm64_gen_*`).

Two things follow. First, this is **independent confirmation of the provenance
caveat in §1**, arrived at from instruction statistics rather than from reading the
translation script — the corpus carries ARM's fingerprint in its instruction
ordering. Second, and more useful going forward: **the pooled test is not fit to
gate the generator.** Class mix moves the bigram distribution enough to mask
provenance entirely, so had we shipped the obvious version of this check it would
have waved through a corpus we already knew was derivative. The gate is the
per-class table plus the sign test; the pooled number is context. That is recorded
in the tool itself so it cannot be misread later.

Priority classes: those with no usable evidence at all (SPECTRE_V1 is **absent
entirely**; SPECTRE_V4, SPECTRE_RSB, BENIGN have one family each), then L1TF and BHI,
which look well-populated at 162 and 116 records but carry effective n of 1.55 and
1.04. BENIGN is the cheapest by a wide margin — it is any compiled RISC-V code,
requires no attack design, and the classifier currently spends ~11.5% of its RISC-V
predictions on a class the test set cannot contain.

## 6. The real RISC-V validation set exists — and the classifier scores 0/11 on it

The harvest proposed in §5 is done (`spec/harvest_real_riscv.py`). Four published
PoCs — `riscv-boom/boom-attacks` (BOOM RTL) and `cispa/Security-RISC` (confirmed on
T-Head C910 silicon) — compiled to riscv64 by a real RISC-V compiler at O0 and O2.
**11 records, 4 independent upstream gadgets, zero overlap with training, no
class-naming token surviving neutralization.** It is stamped
`validation_never_train` and must stay that way; it is the only RISC-V evidence we
have that is not derived from our own corpus.

Three things had to be got right, and each one nearly went wrong:

- **Triage beats volume.** The two repos hold 25+ experiments; only four are
  transient-execution gadgets. `Security-RISC/spectre-v1/` is the trap — the
  *name* says spectre-v1, but it is an instruction-prefetch histogram and its own
  README reports C906/U74, **in-order cores confirmed not vulnerable**. It would
  have gone straight into the class we have least evidence for.
- **The function is the wrong window for V2/RSB.** `indirBranchMispred`'s
  victimFunc is a bare transmit gadget with *no indirect branch* — upstream's own
  comment calls it a Variant 1 body — and `specFunc` holds no RSB structure. Those
  mechanisms live in `main`'s mistrained `jalr` and in `frameDump`'s rewrite of
  `ra`. Labeling the functions V2/RSB would have injected exactly the noisy labels
  we have spent this project removing, so they are emitted only as wider
  `attack_unit` windows that contain the mistraining site.
- **A length floor cannot catch a deleted gadget.** At O2, GCC removes
  condBranchMispred's gadget outright (`dummy` is dead on the next line), leaving
  14 instructions that still look substantial, and reduces victimFunc to a bare
  `ret`. Both would have shipped as attack-labeled records containing no attack —
  the contamination we measured at 11.5% of `riscv_corpus`. Every record must now
  exhibit its class's defining structure in canonical ops; 5 were rejected.

**Nine of the eleven are hardware-confirmed.** boom-attacks' own README splits its
PoCs into "Implemented Attacks" and "Not Completed Attacks … not working yet" —
`returnStackBuffer.c` is in the latter, because the RSB was disconnected in the
BOOM BPU they tested. Its two SPECTRE_RSB records are genuine hand-written RISC-V
RSB attack code whose leak was **never demonstrated**. They are kept for their
structure but stamped `hardware_confirmed: false` and counted separately, so
SPECTRE_RSB on RISC-V still has *no* demonstrated sample.

**The result: 0/11 — and 0/9 on the hardware-confirmed subset.** The model never once predicts any of the three classes
present (it says RETBLEED 4, INCEPTION 5, BENIGN 2 — two real attack gadgets
called benign).

**Read that against the like-for-like baseline, not against the §1 headline.** On
the transliterated corpus the same checkpoint *already* scores **0.00 recall on
SPECTRE_V2 (n=14) and SPECTRE_RSB (n=4)**. So on the classes the two sets share,
the real PoCs are consistent with what we had already measured — this is not
evidence that real RISC-V is uniquely hard. What is genuinely new is **SPECTRE_V1,
previously unmeasurable on RISC-V for want of any sample at all: 0/7.**

Caveats stated plainly: n=11 across 6 groups, and the `v54_spec` checkpoint saw
zero riscv64 in training, so its arch-embedding row never received a gradient.

**This also validates the §5 gate.** Run against the real PoCs the independence
check does *not* fire (1/3, p=0.875) where it fires on the transliterated corpus
(6/6, p=0.016) — it discriminates rather than always firing. It now also refuses
to be over-read: below 5 shared classes the sign test cannot reach p<0.05 at all,
so it reports **underpowered** instead of letting a small corpus buy a free pass.

---

## 7. Synthetic RISC-V at volume — same 0% failure, now measurable at n=358

The ML generator cannot do RISC-V: `gen/generator.pt` is trained on x86_64+arm64
only and hits 1.1% per-sequence validity even there. So volume comes from
templates, as the plan said — but at the **C level**, compiled by a real RISC-V
compiler, so diversity is compiler-driven and idiomatic rather than a
register-renaming of one exemplar (`gen/synth_riscv.py`).

Only the two hardware-confirmed classes are generated — SPECTRE_V1 and SPECTRE_V2.
SPECTRE_RSB is deliberately absent: its only real RISC-V exemplar is upstream-listed
as "not working yet", so there is no demonstrated leak to imitate and no honest
label. Every sample is triple-gated: it must assemble (real assembler), its window
must exhibit the class's structure in canonical ops (the same -O2 gadget-deletion
guard), and it is de-duplicated against itself, the real set, and v54_train.

**358 records, 106 families.** Two results:

- **The corpus is a faithful stand-in for the real PoCs.** Its per-class bigram
  ratios (0.88x, 0.85x) match the real harvested set (0.83x, 0.89x), not the
  transliteration's V2 (0.57x) — and the classifier fails on it the *same way*:
  **0/358, defaulting to BENIGN (319/358)**, exactly as on the real 0/11. Same
  failure mode at 30x the volume.
- **It makes the RISC-V gap measurable.** At n=11 the real set cannot detect
  whether a fix (e.g. the roadmap's "mix real RISC-V into training") moves
  anything. n=358 with 106 families can. This is a measurement instrument, not
  training data — template samples share a generative process, so it stays a TEST
  corpus and the tiny real set remains the anchor.

The headline stands and is now robust: **the v54_spec classifier does not recognise
RISC-V speculative gadgets, real or synthetic — it calls them benign.** That is the
untrained-arch / graph-size domain shift (H3), now confirmed on genuinely
independent RISC-V data rather than on our own transliterated corpus.

## 8. BENIGN RISC-V + generalisation: it's a graph-size shift, not the ISA

Harvested a real BENIGN RISC-V set — 180 mbedTLS/polarssl crypto functions
compiled to riscv64, 30 families, never trained on (`gen/harvest_benign_riscv.py`).
First honest false-positive measurement on a new ISA: **36.7% FP** (66/180 real
crypto functions flagged as attacks). Note the asymmetry — attack RISC-V defaults
to BENIGN (0% recall), benign RISC-V over-fires 37%: confused in both directions.

Then diagnosed *why*, zero-shot, no RISC-V training:

- **The arch embedding is a red herring.** riscv64's embedding row got zero
  gradient, so it injects noise; overriding it 5 ways ties on attacks and only
  shifts a BENIGN-bias on benign. Not the bottleneck.
- **The real cause is a graph-size domain shift (H3).** Training windows are
  ~24-28 instructions; RISC-V functions are 40-1927 (real median 159). The model
  classifies graphs 2-6x larger than anything it trained on.
- **Fixed without retraining** by matching the test window to the training window:
  slide a 24-instruction window, classify each, aggregate with a k-alarm
  threshold. Whole-function baseline is 0% recall / 36.7% FP; **windowed k=3 is
  27.3% recall AND 8.9% FP — strictly better on both**, which is only possible if
  size, not the ISA, was the binding constraint. k=1 reaches 63.6% recall.

Deployment recipe: scan new-ISA functions with training-sized sliding windows +
calibrated aggregation. Deeper fix (next): retrain with multi-scale size
augmentation of the existing x86/arm data — no RISC-V — to cover the large-graph
regime, tested on these held-out sets. Full account:
`SPECDISCOVER_RISCV_GENERALISATION.md`.

## 9. Parallel work while the size-augmentation retrain runs (GPU box)

Four independent streams, none blocked on the retrain:

- **x86 benign FP is catastrophic — and it was invisible.** The corpus has ZERO
  x86 benign (BENIGN is arm64-only). Compiling the SAME mbedTLS functions to each
  arch and running v54_spec: **x86 benign FP 98.4%** (61/62 flagged) vs arm64
  27.4%. The model learned "x86 + structure = attack" with no x86-benign
  counterexamples. Worse than RISC-V benign (36.7%) — the gap hurts the trained
  arch harder than the unseen one. **Fix folded into the retrain**: the size
  augmentation now also injects ~547 real x86/arm BENIGN records, so the retrain
  closes this directly (`eval/benign_xarch_fp_2026-08-31.txt`).
- **Generator cross-ISA leakage fixed** (Alik/supervisor's "make generation
  accurate"). The shared vocab let the generator draw ARM opcodes for x86 and 41
  symbol-name tokens as opcodes. A sample-time arch-purity mask
  (`gen/arch_purity.py`, no retrain) eliminates both: per-sequence validity
  21.1%->24.2%, x86 per-instruction 94.4%->95.7%, and the "other" bucket's
  cross-ISA class is gone. Stacks with the width fix; generator now ~24%
  per-sequence (from ~1-3%).
- **Windowing scan calibrated** into a deployment operating curve (§ in
  `SPECDISCOVER_RISCV_GENERALISATION.md`): W=20/k=1 max recall (real 54.5%), W=24/k=3
  low FP (8.9% at 27.3% recall); several points strictly beat the 0%/36.7% baseline.
- **Fixed a train/test leak**: 1 record (L1TF x86 p17 t3/t4) inherited from v53's
  split appeared in both halves; build_dataset now dedups train-vs-test. Negligible
  numeric impact (<=0.06pp) but a real data-snooping leak, now closed.

## 10. Multiscale retrain came back — x86 fix works, size-for-RISC-V refuted

The GPU-box retrain ran (`SPECDISCOVER_MULTISCALE_RETRAIN_RESULT.md`). Result splits
by the augmentation's two components:

| held-out set | v54_spec | multiscale | verdict |
|---|---|---|---|
| x86 benign FP | 98.4% | **24.2%** | fixed |
| arm64 benign FP | 27.4% | **3.2%** | improved |
| RISC-V benign FP | 36.7% | 55.6% | worse |
| RISC-V attack (real/synth) | 0/0 | 0/0 | unchanged |
| locked test acc | 95.27% | 92.93% | regressed 2.3pp (SPECTRE_V2 recall 71%) |

- **The x86-benign record injection worked** — the 98.4% FP finding is fixed.
- **Size enlargement backfired**: it regressed the base task (V2 signal diluted in
  large graphs) and did NOT transfer to RISC-V, even though windowing to train size
  at *inference* recovered 27-64%. So the windowing benefit was *isolation*, not
  *size familiarity*; training on big graphs reproduces size but not isolation.

Plan moves: (1) **RISC-V deployment = windowing scan at inference**, not a size
retrain — that lever is closed. (2) **Ship the x86 fix without the enlargement**:
`augment_size_multiscale.py --frac 0.0` (benign records only, no dilution) is the
next run — predicted to keep the x86 fix and recover the locked test
(LINUX_BOX_RUNBOOK.md "Run B"). Caveat: single run, RISC-V negative partly
confounded by the regression; Run B is also the cleaner test.

---

## Reproduce

| claim | command / file |
|---|---|
| GINE 4-mode comparison | `eval/collect_v56_results.py --dirs eval/v56_multiseed` |
| RISC-V transfer + stub split | `eval/eval_candidate_features_riscv.py` |
| group-aware effective n | `eval/group_stats.py` |
| window census | `SPECDISCOVER_LEARNED_FEATURES_PLAN.md` §Phase 3 |
| ensemble gate result | `eval/v56_postfix/`, `tests/gate/test_ensemble_gate.py` |
| generator validity | `eval/check_syntactic_validity_results_2026-08-30.txt` |
| "other" bucket triage + fix | `gen/OTHER_BUCKET_TRIAGE.md`, `gen/triage_other_failures.py` |
| RISC-V data survey | `SPECDISCOVER_RISCV_DATA_SOURCES.md` |
| ISA-independence gate | `eval/isa_independence_check.py`, `eval/isa_independence_2026-08-30.txt` |
| real RISC-V harvest | `spec/fetch_riscv_pocs.sh` then `spec/harvest_real_riscv.py --apply` |
| 0/11 on real RISC-V | `eval/riscv_real_eval_2026-08-30.txt` |
| synth RISC-V at volume | `gen/synth_riscv.py --apply`, `eval/riscv_synth_2026-08-30.txt` |
| benign RISC-V + FP rate | `gen/harvest_benign_riscv.py --apply`, `eval/riscv_benign_2026-08-30.txt` |
| generalisation (H3 + windowing) | `SPECDISCOVER_RISCV_GENERALISATION.md`, `eval/riscv_generalisation_2026-08-30.txt` |
