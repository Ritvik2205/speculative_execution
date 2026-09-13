# The locked test set was screened by a label-conditioned rule

*Written 2026-08-30. Found while investigating why `has_train_attack_signal` could
not port to a new ISA. The portability problem turned out to be the symptom; this is
the disease.*

---

## The finding

`v53/build_dataset.py` applies `has_train_attack_signal(label, lines)` to **both**
pools:

```python
# ── 6. Training specificity filter (RF3: strengthened, NOT applied to test) ─
...
print("\nApplying specificity filter to BOTH pools (removes mislabeled harness code):")
train_pool = apply_specificity(train_pool, "train_pool")
test_pool  = apply_specificity(test_pool,  "test_pool")
```

The section header says **"NOT applied to test"**. The code three lines later applies
it to test. `v54_test` is LOCKED from v53, so the current 1670-record evaluation set
carries this.

The filter is label-conditioned. For example:

```python
if label == 'MDS':
    return 'verw' in opset or 'movntdqa' in opset or 'clflush' in opset or 'clflushopt' in opset
if label == 'L1TF':
    return 'clflush' in opset or 'clflushopt' in opset or 'rdtsc' in opset or 'rdtscp' in opset
```

So a record is admitted to the **test set** only if it already satisfies a
hand-written rule keyed on its own label.

## Verification

Measured directly against the locked test set:

```
v54_test: 1670 records — the filter would now drop 0 (0.0%)

MDS   n=45  containing verw/movntdqa/clflush : 45  (100.0%)
L1TF  n=37  containing clflush/rdtsc         : 37  (100.0%)
```

100% conformance, and nothing left to drop, because the set was screened by the rule.

## How large is the distortion?

RISC-V records were never passed through this filter, so they are a natural control.
Conformance to each class's own rule:

| class | v54_test (screened) | riscv64 (never screened) |
|---|---|---|
| MDS | 100.0% (n=45) | 0.0% (n=36) |
| L1TF | 100.0% (n=37) | 0.0% (n=162) |
| SPECTRE_V2 | 100.0% (n=154) | 0.0% (n=14) |
| SPECTRE_V4 | 100.0% (n=124) | 0.0% (n=12) |
| **RETBLEED** | **100.0% (n=75)** | **41.2% (n=102)** |
| **INCEPTION** | **100.0% (n=94)** | **68.8% (n=48)** |

**Read the last two rows, not the first four.** MDS/L1TF/SPECTRE_V2/V4 sit at 0% on
RISC-V largely because their rules name x86 mnemonics (`verw`, `clflush`, `rdtsc`)
that do not exist on RISC-V at all — that is the portability bug, tangled up with
the screening effect, and the two cannot be separated from these numbers.

RETBLEED and INCEPTION are the clean evidence. Their criteria are structural and
ISA-neutral (maximum NOP-run length, `ret` versus `call` counts), so they *can* fire
on RISC-V — and they do, on 41.2% and 68.8% of records. Yet the test set is at 100%
for both. That gap is screening, not an ISA artifact.

## Why this matters — naming it properly

Arp et al., *Dos and Don'ts of Machine Learning in Computer Security* (USENIX Sec
2022, arXiv 2010.09470) — a paper this repo already follows for its group-holdout
discipline — names three pitfalls that apply here:

- **P3 Data Snooping**, specifically *selective* snooping: *"A learning model is
  trained with data that is typically not available in practice."* We filtered the
  evaluation set using the label. At deployment you do not know an incoming gadget's
  class, so you cannot apply this rule — the information used to build the test set
  is not available in practice. Its recommendation: *"Test data should be split early
  during data collection and stored separately until final evaluation."* Filtering
  after the split, using labels, is the violation.
- **P4 Spurious Correlations**: *"Artifacts unrelated to the security problem create
  shortcut patterns for separating classes."* The screening **guarantees** a shortcut
  exists and is **always correct on this test set**: on `v54_test`, `verw ∨ movntdqa ∨
  clflush ⟹ MDS` holds for 100% of MDS records by construction.
- **P1 Sampling Bias**: *"The collected data does not sufficiently represent the true
  data distribution."*

## What it means for reported numbers

A model that learns nothing but the hand-rule scores **100% recall on MDS and L1TF**
on this test set. It would score far lower on unscreened data — the RETBLEED and
INCEPTION control suggests real gadgets satisfy these rules only 41–69% of the time.

So the flagship figures (96.14% / 96.01%) are measured on a set constructed to
satisfy the hypothesis under test. **This does not make them fabricated** — the model
may well have learned more than the rule — but it does mean they cannot be read as
generalization estimates, and the per-class recalls for the tightly-pinned classes are
the least trustworthy numbers in the repo.

It also plausibly explains a standing oddity: MDS test recall sits at 94–100% across
every configuration measured this week, moving barely at all under interventions that
shift other classes by several points. A class whose test set is defined by a rule is
a class with little left to get wrong.

## The root fix

Not "translate the mnemonics to canonical ops" — that was the original plan and it
would have preserved the circularity while making it portable.

**Separate the filter by whether it conditions on the label:**

1. **Label-independent quality criteria** — minimum length, must contain real
   instructions, not a degenerate stub. These do not use the label and are legitimate
   on both splits. The existing `len(seq) >= 8` / `>= 4` length filters are already of
   this kind and are fine.
2. **Label-conditioned criteria** — everything in `has_train_attack_signal`. These may
   be applied to **train only**, as data curation, and must be structurally prevented
   from touching test. A comment saying "not applied to test" was not sufficient; the
   code did the opposite for three model generations.

Then rebuild an unscreened evaluation set and re-measure, so the inflation is
quantified rather than argued about.

## Honest limits of this finding

- The **intent** was legitimate: the comment says *"removes mislabeled harness code"*,
  and mislabeled records demonstrably exist (11.5% of the RISC-V corpus are `-O2`
  stubs whose gadget the compiler deleted). The goal was right; conditioning on the
  label was the wrong instrument.
- I have **not** rebuilt an unscreened test set, so the size of the inflation on
  x86/ARM is not yet measured. The 41–69% control is suggestive, not a measurement of
  it.
## The shortcut is load-bearing — measured, not inferred

The section above originally closed by saying this was untested. It has now been
tested. Each class's trigger opcodes were replaced with `nop` in the test set —
same sequence length, same every other instruction, only the shortcut removed
(`eval/shortcut_ablation_results.txt`; 442/1670 records altered):

| | intact | triggers -> nop | drop |
|---|---|---|---|
| **spec-42 overall** | 97.19% | 85.27% | **-11.92pp** |
| MDS | 100.0% | **8.9%** | -91.1pp |
| SPECTRE_V4 | 99.2% | **1.6%** | -97.6pp |
| L1TF | 64.9% | **2.7%** | -62.2pp |
| **hand-58 overall** | 95.15% | 78.44% | **-16.71pp** |
| MDS | 97.8% | **0.0%** | -97.8pp |
| SPECTRE_V4 | 99.2% | **0.0%** | -99.2pp |
| L1TF | 67.6% | **0.0%** | -67.6pp |

For MDS, L1TF and SPECTRE_V4 the classifier is, functionally, the hand-rule. Remove
a handful of opcodes and those classes collapse to between 0% and 9%. There is no
fallback representation underneath.

**The controls say the ablation is not simply breaking everything.** BENIGN is
unchanged (100.0% -> 100.0%), SPECTRE_RSB unchanged, and SPECTRE_V1 is unchanged
(100.0% -> 100.0%) — precisely because SPECTRE_V1's rule is an OR that includes
structural conditions (NOP-run length, compare-then-branch proximity), so no single
opcode is necessary for it. That is what a class looks like when the shortcut is
*not* load-bearing, and it is the contrast that makes the other three interpretable.

**The fair caveat, stated plainly.** `clflush`, `verw` and `movntdqa` are genuine
MDS/L1TF primitives, not arbitrary artifacts. Any honest detector should degrade when
they are removed — a cache-timing attack without the flush is a different program. So
a drop is expected. What is not expected is a drop *to zero*: it means the model
carries no representation of these classes beyond the presence of one opcode.

Combined with the screening, this closes a circle:
screening guarantees every test MDS record contains the trigger; the model therefore
never has to learn anything else; and the test set is structurally incapable of
revealing that it did not. A real MDS gadget that avoids those instructions would be
missed, and no measurement in this repo would show it.

---

## Rebuild: how much did the screening actually inflate the numbers?

`v50/data/v50_test.jsonl` survives, and v53's own comment says it was chosen
*because* it is the **pre-specificity-filter** pool (1132 records, vs v52_test's
1050 post-filter). So the pipeline deliberately sourced unfiltered records to avoid
this bias — and then filtered them anyway at step 6. That makes the rebuild possible.

Method: take the pre-filter pool, drop records whose sequence hash appears in
`v54_train` (115, never score on training data), apply only the label-INDEPENDENT
length floor, then partition by the label-conditioned rule. Train on `v54_train`,
score both partitions, 5 seeds. Full output: `eval/unscreened_rebuild_results.txt`.

```
eligible pool 1017   SCREENED-IN 928   SCREENED-OUT 89   (screen removed 8.8%)
screened-OUT by class: BHI 21, SPECTRE_V4 42, SPECTRE_V1 8, RETBLEED 7,
                       INCEPTION 5, MDS 5, L1TF 1
```

**BHI lost 51% of its eligible test records** (21 deleted vs 20 kept).

| | screened-IN (= what `v54_test` is) | screened-OUT (deleted) |
|---|---|---|
| hand-58 | 98.81% | **0.22%** |
| spec-42 | 98.62% | **36.40%** |

Every class drops to 0.0% recall on the deleted records under hand-58. spec-42
salvages only SPECTRE_V4 (73.8%) and INCEPTION (40.0%).

### The number to actually quote

**Do not quote the 62–98pp subset gap as "the inflation".** That is the gap between
the kept and deleted subsets, and the deleted subset is defined as "records the rule
fails on", so a low score there is partly circular by construction.

The population-level effect is the pooled unscreened estimate, weighting the two
partitions by their real proportions (928 : 89):

| | screened (reported) | **unscreened pool** | inflation |
|---|---|---|---|
| hand-58 | 98.81% | **90.18%** | **+8.63pp** |
| spec-42 | 98.62% | **93.17%** | **+5.45pp** |

**Screening inflates reported accuracy by roughly 5–9pp on this pool.** That is the
honest correction — large enough to matter for every headline in the repo, far
smaller than the subset gap suggests.

### Limits

- 89 screened-out records; per class the counts are tiny (L1TF n=1, MDS n=5). The
  pooled estimate is dominated by SPECTRE_V4 (42) and BHI (21).
- The screened-out set is *not* a random sample of hard cases — it is exactly the
  set the rule rejects. Real-world data contains such records at an unknown rate, so
  8.8% is this pool's rate, not a claim about deployment.
- This is measured on the RF harness (hand-58, spec-42), not GINE. The GINE flagship
  is trained and evaluated on the same screened split, so it is subject to the same
  bias, but the magnitude for GINE is unmeasured.

---

## Root fix implemented, and the inflation re-measured on a real unscreened split

### The fix

1. **`passes_quality_filter(lines)`** — label-independent. Length floor over real
   instructions only. Safe on every split; a test asserts its signature cannot even
   accept a label.
2. **`has_train_attack_signal(label, lines, *, split)`** — label-conditioned, with
   `split` **keyword-only and required**. Anything other than `"train"` raises
   `LabelConditionedFilterOnTestSplit`. A comment failed to prevent this for three
   model generations; a raise does not.
3. **`v53/build_dataset.py`'s call site is fixed** — test now receives only the
   label-independent quality filter.
4. 12 regression tests (`tests/v54/test_split_safety.py`), including that positional
   or omitted `split` raises `TypeError`, and that case/whitespace variants of
   `"train"` are rejected rather than coerced.

`v54/build_unscreened_test.py` rebuilds the evaluation split from the pre-filter pool
using only label-independent screening. **1017 records.** The locked
`v54_test.jsonl` is left byte-identical so every prior number stays reproducible.

### The result, and it revises my own earlier estimate

| model | locked (screened) | unscreened | delta |
|---|---|---|---|
| hand-58 (RF) | 95.15% | 90.19% | **−4.96pp** |
| spec-42 (RF) | 96.90% | 93.18% | **−3.72pp** |
| **GINE (`viz_v54_spec`)** | **92.75%** | **92.43%** | **−0.32pp** |

**The flat feature tiers lose 4–5pp. The graph model loses essentially nothing.**

That is consistent with the trigger-neutralisation ablation: hand-58 collapsed to 0%
and spec-42 to 8.9% on MDS when the trigger opcodes were removed, because a flat
histogram has nothing else to fall back on. GINE carries the same 58 hand features
*plus* PDG structure, and the structure survives the screening.

So the earlier pooled estimate of "5–9pp inflation" was **an RF-harness number that I
should not have generalised to the flagship**. The correct statement is: screening
inflates the flat feature tiers by 4–5pp and the GINE flagship by ~0.3pp.

### Per-class, the movement is not uniform

GINE, locked → unscreened recall:

| class | locked | unscreened |
|---|---|---|
| BRANCH_HISTORY_INJECTION | 0.209 | **0.488** (better) |
| SPECTRE_V2 | 0.779 | **1.000** (better) |
| L1TF | 0.838 | **0.906** (better) |
| SPECTRE_RSB | 0.000 (n=1) | **1.000** (n=63) |
| SPECTRE_V1 | 1.000 | **0.474** (worse) |
| SPECTRE_V4 | 0.984 | 0.883 (worse) |
| MDS | 0.867 | 0.846 |

Macro-F1 *rises* 0.742 → 0.860, but most of that is the `SPECTRE_RSB` n=1 artifact
disappearing (1 record → 63). Do not read it as the model improving.

### What must be stated alongside these numbers

- The unscreened set is **not the same population** as the locked set. Class mix
  differs substantially (BENIGN 43% vs 62%; SPECTRE_RSB 63 vs 1; SPECTRE_V4 197 vs
  124), because `v54_test` reached its final form through v52/v53 template splits and
  augmentation, not from `v50_test` alone. Accuracy across the two is therefore not a
  clean paired comparison; per-class recall is the more comparable view.
- The GINE figure is **one checkpoint** (`viz_v54_spec`, 92.75% on the locked set),
  not the 96.01% ± 0.55 ten-seed `hand` mean from `eval/v56_postfix`. Those are
  different models and must not be conflated. A multi-seed GINE run against the
  unscreened split is not yet done.
