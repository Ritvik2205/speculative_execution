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
