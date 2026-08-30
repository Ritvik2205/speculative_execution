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
that can tell us whether generated gadgets are realistic. Independence is enforced by
measurement, not honour: comparing the generated samples' canonical-op bigram
distribution against the transliterated corpus, before generating at volume.

Priority classes: those with no usable evidence at all (SPECTRE_V1 is **absent
entirely**; SPECTRE_V4, SPECTRE_RSB, BENIGN have one family each), then L1TF and BHI,
which look well-populated at 162 and 116 records but carry effective n of 1.55 and
1.04. BENIGN is the cheapest by a wide margin — it is any compiled RISC-V code,
requires no attack design, and the classifier currently spends ~11.5% of its RISC-V
predictions on a class the test set cannot contain.

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
| RISC-V data survey | `SPECDISCOVER_RISCV_DATA_SOURCES.md` |
