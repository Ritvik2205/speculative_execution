# SpecDiscover — Roadmap for onboarding a new ISA

*Written 2026-08-30. What to do next to make the pipeline actually work for a
new architecture, what data is missing, and what is worth exploring. Grounded
in `SPECDISCOVER_RISCV_LEARNED_GAPS.md` (the ranked gap analysis) and the
measurements taken over the preceding two days.*

---

## The one thing to understand first

Every RISC-V number in this repo — including the 69.70% I would otherwise be
recommending as the headline — is computed on a corpus of **494 records
generated from 27 family templates by a ~40-rule hand-written transliteration
table** (`scripts/translate_riscv_inline_asm.py:143`). `lfence|mfence|dsb`
became `fence`; `dc civac` became `cbo.inval`.

So the pipeline has never been tested on RISC-V. It has been tested on *a
translation of the x86/ARM corpus into RISC-V syntax*. That is a much weaker
claim, and it caps what any amount of feature engineering can prove.

This does not invalidate the portability result — `hand-58` still collapses to
7.65% while spec-derived features reach ~70%, and that contrast is real
regardless of provenance. But it does mean **the binding constraint is data,
not features**, and the work should be ordered accordingly.

---

## Tier 1 — do now. Cheap, and they fix numbers we are currently reporting wrong

These are all code changes on data we already have. None needs new samples.

### 1.1 Make RISC-V confidence intervals group-aware · gap G12
Every RISC-V CI in the repo is computed over **records** (494) when the
independent unit is the **family group** (27). SPECTRE_V4 is 1 group / 12
records; SPECTRE_RSB is 2 groups / 4 records. Near-duplicates are being counted
as independent evidence, so every interval — including the ±1.56pp on 69.70% —
is far too narrow.

Fix: aggregate to group level before computing the CI, or bootstrap over groups.
This will make our numbers *look* worse and be *correct*. Do it before anything
is written up.

### 1.2 Wire `dataflow_taint` into the feature tiers · gap G4
`is_secret_source` and `is_transmitter` measure **0.0% nonzero on RISC-V**
(against 20.2% and 45.5% in training), because `base.json` gates both on
`when_mem_in:["INDEXED"]` and `riscv.json` makes INDEXED structurally
unmatchable — correctly, since RV64GC has no base+index addressing.

`spec/dataflow_taint.py` already solves this, but only inside
`SpecBackedPDGBuilder.build()`. `spec_features.py` and `candidate_features.py`
never call it, so the 69.70% result was computed with those columns identically
zero. Wiring it in is a contained change with a measurable prediction: those
four columns stop being dead on RISC-V.

### 1.3 Stop defining class semantics by x86 mnemonics · gap G2
`has_train_attack_signal` (`v54/build_dataset.py:143`) admits a training record
for MDS only if it contains `verw|movntdqa|clflush|clflushopt`, and for L1TF
only `clflush|clflushopt|rdtsc|rdtscp`. **None of those instructions exist on
RISC-V.** The learned concept of those classes is therefore unreachable on any
ISA that does not share x86's mnemonics — by construction, not by accident.

Fix: express the admission rule in the spec's canonical-op / flag vocabulary
(`CACHE_FLUSH`, `TIMER`, `CLEAR_BUF`, `NONTEMP_LOAD`) rather than in literal
mnemonics. This is the single highest-leverage code change available, and it
unblocks G7 (47 of 58 hand features dead on RISC-V).

### 1.4 Already done (2026-08-29)
`indirect_frac` read 0.0000 on all 496 RISC-V records; now spec-sourced and
reads 0.0612 with x86/ARM unchanged.

---

## Tier 2 — measure-first. Real bugs, but changing them moves everything

### 2.1 The category taxonomy is 51.3% `OTHER` on x86 · gap G5
`classify_opcode` puts **51.3% of x86** and 11.9% of ARM instructions into
`OTHER`, against **1.0% on RISC-V**. `STACK` receives 9 nodes out of 63,880 x86
instructions. The ISA with the least data has the cleanest categories, because
`riscv.json` was written from the manual while the x86 patterns were inherited
from `pdg_builder.py`'s regexes.

Worth fixing, but it rewrites every PDG node feature, so it needs the treatment
the x86 load/store fix got: measure GINE before and after on the same seeds.
That fix — which corrected 58.5% of x86 memory instructions — moved accuracy
by −0.26pp (ns). Expect the same here and be pleasantly surprised, rather than
assuming a correctness win is an accuracy win.

---

## Tier 3 — the data we actually need

Ordered by cost. The first two are nearly free and are being neglected.

### 3.1 Unlabeled RISC-V assembly, for encoder pre-training · gap G3 — CHEAP
The MLM was trained on `v54_train.jsonl`, which contains **zero riscv64
records**. The canonical-op vocabulary cut OOV from 78.8% to 12.6%, but that
did **not** fix transfer — mean-embedding cosine to the training manifold moved
only 0.48 → 0.53, and learned features still score 5.24% against hand-58's
6.25%. OOV was the loud symptom; the encoder has simply never seen the
distribution.

This needs no labels and no attacks. Compile a few thousand ordinary riscv64
binaries (Debian riscv64 packages, busybox, coreutils, SPEC-like workloads) and
add them to MLM pre-training. This is the only intervention that could plausibly
make the learned tier work cross-ISA, and it is a compile job.

### 3.2 RISC-V BENIGN code · gap G9 — CHEAP
The RISC-V slice has **no BENIGN class at all**, while the training pool is 51%
BENIGN — so the model spends 57 of 494 RISC-V predictions on a class that
cannot occur. That is pure, avoidable error, and RISC-V benign code is the
easiest data in the world to obtain (same compile job as 3.1).

### 3.3 Genuinely independent RISC-V attack samples · gap G1 — HARD, and the real blocker
Not transliterations. Written against RISC-V's own speculation behaviour, from
published RISC-V speculative-execution work and from RISC-V microarchitecture
that actually speculates (BOOM, XiangShan). 27 family templates is not a corpus;
it is 27 programs with variants.

Until this exists, "SpecDiscover generalises to a new ISA" cannot be claimed
beyond "it generalises to a syntactic translation of its own corpus."

### 3.4 An oracle for RISC-V · gap G10 — HARD
RISC-V labels are **filename substring matches** with no execution or symbolic
verification (`label_for_stem`). x86 has Spectector and Revizor; RISC-V has
nothing. Options worth scoping: gem5 RISC-V O3, or a BOOM/XiangShan RTL
simulation. Without this, RISC-V ground truth rests on filenames — and we
already found that 11.5% of the corpus are `-O2` stubs where the gadget was
optimised away but the label survived.

---

## What else is worth exploring

### A. Leave-one-ISA-out, on data we already have — cheapest high-value experiment
We have three ISAs and have only ever tested x86+ARM → RISC-V. Run the full
matrix: train on x86 only → test ARM; ARM only → test x86; each pair → the
third. This costs nothing (the data exists) and answers questions we are
currently guessing at:

- Is cross-ISA transfer **symmetric**, or is RISC-V specifically hard?
- Is ~70% the ceiling for spec-derived features, or an artefact of RISC-V?
- Does the coarse-beats-rich finding replicate on an ISA pair that is *not* a
  transliteration of the other?

That last one matters most: it would test the granularity hypothesis on
genuinely independent corpora, which the RISC-V slice cannot do.

### B. Where the granularity/generalisation frontier actually sits
Measured coverage on RISC-V: **1 of 19** spec categories dead, vs **54%** of
canonical-op columns and **63.6%** of bigram columns. Coarse survives because
it is coarse. But `spec-42` at 73.08% vs ops-only at 41.74% is a big gap, and
nobody has looked for the sweet spot between 19 categories and 50 ops. There is
probably a feature granularity that transfers *and* discriminates better than
either.

### C. Does the arch embedding help or hurt? · gap G11
`ARCH_VOCAB['riscv64']=3` indexes an embedding row that received **zero
gradient updates** (checkpoint row-3 norms across v50–v56 sit at init scale,
1.84–4.11). Eight random dimensions are concatenated into every RISC-V
prediction. Cheap experiment: zero that row, or drop the arch embedding
entirely, and re-measure. It may be free accuracy.

### D. Re-run the syntactic-validity baseline before touching the generator
The 91.25% `unrunnable` figure predates the `<fn>` fix by ~4 hours (verified:
the fix commit is not an ancestor of the run). Any generator work should start
from a re-measured number.

---

## Suggested order

1. **1.1 group-aware CIs** — because it changes what every other number means.
2. **1.3 spec-vocabulary class semantics** — highest-leverage code change.
3. **1.2 wire dataflow_taint** — contained, with a falsifiable prediction.
4. **A. leave-one-ISA-out** — cheap, and reframes whether RISC-V is special.
5. **3.1 + 3.2 compile a RISC-V benign/unlabeled corpus** — a compile job that
   unblocks the only plausible route to a working learned tier.
6. **2.1 category taxonomy**, measured before and after.
7. **3.3 / 3.4 real RISC-V attacks and an oracle** — the long pole, and the
   only path to a defensible "new ISA" claim.

Items 1–4 are days. Items 5–7 are the actual research programme.
