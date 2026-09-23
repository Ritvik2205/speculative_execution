# SpecExec Generator Arm — Full Status & Findings (2026-09-18)

This is an onboarding-level status doc for the "generator arm" of SpecDiscover
(the next-gen roadmap layered on top of the classifier described in the main
`CLAUDE.md`). If you're new to this arm: the classifier (RF / GINE / etc.)
answers "is this assembly vulnerable?" The generator arm exists to answer a
harder question — **can we synthesize new gadgets that a real formal oracle
independently confirms actually leak**, so we get (a) more/better training
data than the ~21 runnable PoCs in `c_vulns/`, and (b) a discovery tool, not
just a classifier. Everything below happened in `gen/`, `oracle/`, and
`eval/` on the Edinburgh Teaching cluster (GPU pretraining, Apptainer for the
Spectector oracle).

Corpus reality check, load-bearing for everything downstream: `c_vulns/` has
only ~21 end-to-end runnable PoCs. The other ~1,406 `.s` / 530 variant `.c`
files are pattern-exemplar **fragments** — they look like the right vuln
class structurally but have no real secret→transmit dataflow. So the
generator arm is not "validate what's already there," it's "synthesize
complete gadgets from nothing," which is why so much of the work below is
about closing the gap between "syntactically plausible" and "a real oracle
says this leaks."

---

## Stage 1 — Base class+arch-conditioned token generator

**What:** `gen/generator.py`'s `CondTransformerLM` — a small decoder-only
causal transformer (d=128, 3 layers, 4 heads, max_len=64) over one shared
458-token vocabulary (opcodes + registers + control tokens, normalized
across x86_64/arm64/riscv64). Generation is conditioned by prepending two
discrete tokens: target vulnerability class and target ISA
(`model.sample(cls, arch, ...)`). Trained on the ~5,532 real gadget records
(`gen/train_generator.py`, 15 epochs, lm_loss 1.23→0.78).

**Why this design:** class-conditioning is the whole point — the generator
needs to be steerable per-class on demand, not just a generic asm language
model. A single shared vocabulary across ISAs was chosen for simplicity
(one model, one training run) rather than per-arch models; this decision is
exactly what caused the cross-ISA leakage bug fixed later in Stage 6.

**Result — conditioning works:** mean hit-rate 74% vs. a 10% class prior =
**7.4x lift** (40 samples/class, verified by embedding samples with the
Phase-1 MLM encoder and classifying with an RF trained on real data).
Per-class lift ranged from 23x (L1TF/MDS) down to 2x (BENIGN, high prior
anyway). Novelty 50–97.5% (not memorized). Arch-conditioning was added next
(`[<CLS_class>, <ARCH_arch>]` prefix) with an **ISA-purity** metric
(fraction of ISA-decisive opcodes native to the target arch): initial
reading was x86_64=97.6%, arm64=96.1%. **This number was later shown to be
over-optimistic** (Stage 5/6) — the underlying `_ARM_ONLY` opcode set the
metric checked against was missing common ARM load/store mnemonics
(`ldr`/`ldrsb`/`ldur`/`str`/`stur`), so it was structurally blind to exactly
the leak family that mattered most. Lesson: a purity metric is only as good
as its opcode set, and nobody had re-verified that set against real failures
until the syntactic-validity triage forced the question.

---

## Stage 2 — The splice convention (token sequence → compilable program)

**What:** a raw generated token sequence isn't a program — it's a bag of
instructions with arbitrary register choices and no binding to a real
secret or a real memory operand an oracle can reason about.
`gen/realize.py`'s `Realizer` turns normalized tokens into concrete asm
(register pool, memory templates, immediate prefixes, spec-driven). Then
`gen/oracle_splice.py::splice()` literally grafts that realized sequence
into a known-good C harness function: it canonicalizes every register
across width aliases, seeds the sequence's first referenced register from
the harness's real secret-derived input via a fixed physical register
placed in the clobber list (so GCC can't collide it), remaps every other
register to a disjoint scratch pool, and appends a cache-line-shift +
probe-byte store so the tail of the gadget has something for a timing/SNI
oracle to key on. `_SPLICE_CONVENTION` (`gen/decode.py:42-59`) is a
per-class table saying whether the secret enters as a pointer or a plain
value, and which harness variable name to bind (Spectector and InvisiSpec
use different harness variable names, hence two conventions per class).

**Why:** without this, the realized asm has no relationship to a
speculation-exploitable secret, so no oracle (Spectector, InvisiSpec) could
ever say anything about it — realism is necessary for the oracle stage to
be meaningful at all, not just for compiling.

**Entry points:** `gen/decode.py` is the single-sample demo/`--validate`
CLI; `gen/generate_batch.py` is the bulk harvesting entry point (N samples
per class×arch, arch-purity mask on by default, writes to
`gen/synth/neural_out/`) — this is the one to use for scale, kept separate
from the hand-templated `gen/synth/` output so the two can be compared.

---

## Stage 3 — Wiring a real oracle (Spectector) into validation

**What:** `gen/decode.py --validate` runs a sample through the real
Spectector symbolic SNI oracle (not a self-referential classifier check).
First full 8-class × 10-sample run (`gen/ORACLE_VALIDATION_FINDINGS.md`):
80 real Spectector verdicts — 73 unrunnable (91.25%), 4 safe, 3 leak.

**Why do this before fixing anything:** you need ground truth before you
can meaningfully target a fix. This run also hit a real bug — BHI crashed
on every sample with a `KeyError` (the trained checkpoint's vocab uses
`BRANCH_HISTORY_INJECTION`, the splice table used the short form `BHI`) —
root-caused and fixed with a one-line alias, then re-run for real data.
**All 80 samples were 100% PDG-parseable by the generator's own internal
check** — the failure is real GCC compilation of the spliced asm inside the
oracle's container, not the generator's own grammar. This is the key
finding that motivated Stage 4: the gap is between "the generator's
internal notion of valid" and "a real assembler's notion of valid," and
closing it means going outside the generator to a truly independent tool.

---

## Stage 4 — Syntactic-validity triage: naming the failure

**What:** `gen/check_syntactic_validity.py` samples all 10 classes × 2 archs
× 100, realizes each, and checks every instruction against `llvm-mc`
(`spec/external_oracle.py`) — an independent assembler sharing no code with
generator/realizer/classifier. `categorize_failure()` buckets each llvm-mc
rejection into `unresolved_placeholder`, `operand_type_violation`, `other`.

**Why an independent assembler, not the generator's own PDG check:** the
Stage 3 result already showed the generator's internal "parseable" check
was 100% green while the real compiler rejected 91% of output — the
internal check was not measuring the thing that mattered. `llvm-mc` gives a
verdict nobody on this project's payroll wrote the rules for.

**Real n=100 result (2000 samples, 50,050 instructions):**

| | per-instruction valid | per-sequence valid |
|---|---|---|
| x86_64 | 75.3% | — |
| arm64 | 65.5% | — |
| overall | 71.1% | **1.1%** |

Failure split (14,447 malformed instructions): `unresolved_placeholder`
45.9%, `operand_type_violation` 1.8%, `other` 52.4% (majority in *both*
arches). A follow-up spot-check split `unresolved_placeholder` itself into
two distinct bugs: a literal never-substituted `<fn>` stub (~36% of all
malformed instructions) and `.L`-label tokens misused in non-branch-target
operand slots (~10%, a genuinely different generator operand-slot-selection
bug, not fixed by fixing `<fn>`).

**Why `other` (the majority bucket) needed its own investigation rather
than a guessed fix:** a random sample of 10 real `other` failures showed
three unrelated root causes tangled together — x86 register-width/mnemonic
mismatch, ARM `ldur`/`ldp` given a register offset instead of a required
immediate, and ARM64 mnemonics (`ldr`, `ldrsb`) leaking into x86_64-targeted
output. Picking one fix without this breakdown would have addressed a
minority of the bucket.

---

## Stage 5 — Root-causing and fixing the "other" bucket (register-width fix)

**Method:** `gen/triage_other_failures.py` re-samples and, for every `other`
failure, captures llvm-mc's *actual stderr* (not just the pattern-matched
guess) and clusters by normalized diagnostic, plus checks whether the
mnemonic is even real for that ISA (Realizer bug vs. generator vocabulary
bug). n=100, 6,468 `other` instructions.

**Finding:** 70.4% of the bucket was one bug: x86's register pool
(`spec/x86_64.json`) is all 64-bit, and the Realizer picked from it
regardless of the opcode's AT&T size suffix — `movl (%rsi), %rcx` needs
`%ecx`, not `%rcx`. Confirmed directly: substituting the width-matched
register made llvm-mc accept every case.

**Fix:** spec-driven, no retrain — `spec/x86_64.json`'s `realize` block
gained a `register_widths` table + `suffix_width_index`; the Realizer maps
each register operand to the size-suffix-matched width when the opcode
carries one. arm64/riscv64 realization is byte-for-byte unchanged
(regression-checked as the control arm).

**Measured (A/B, n=50, 1000 sequences × 2 archs):**

| metric | before | after | delta |
|---|---|---|---|
| per-instruction (x86_64) | 82.9% | 94.5% | +11.6pp |
| per-instruction (arm64, control) | 78.5% | 78.6% | +0.1pp (noise) |
| **per-sequence** | **3.5%** | **21.5%** | **+18pp, 6.1x** |

Per-sequence needing every one of ~25 instructions to be valid is why one
dominant per-instruction cause compounds into a 6x sequence-level gain.

---

## Stage 6 — Arch-purity mask (killing cross-ISA leakage)

**Method:** after the width fix, the residual `other` bucket was dominated
by the generator drawing ARM opcodes while generating for x86 (and vice
versa), plus 41 vocab tokens whose "opcode" is actually a symbol name
(`l1tf_read_secret_byte`) or a bare number. Root cause: the shared 458-token
vocab (Stage 1's design choice) meant nothing at sampling time constrained
the opcode to the target ISA — `sample()` only masked control tokens.

**Fix (`gen/arch_purity.py`), no retrain:** at each sampling step, allow a
token only if the target arch's spec engine recognizes its opcode
(`canonical_op != OTHER`) — one rule masks both wrong-ISA opcodes and
symbol/number tokens, using the same spec vocabulary the rest of the
pipeline already trusts. Verified 0 cross-ISA leaks / 0 symbol opcodes
across 1600+ sampled instructions (was nonzero). Default-on in
`generate_batch.py`.

**Measured (A/B, n=40, post-width-fix baseline):** per-instruction 88.0%→
88.7% (x86 94.4%→95.7%), **per-sequence 21.1%→24.2% (+3.1pp)**, `other`
share of malformed 66.8%→46.1%. Modest overall gain because
`unresolved_placeholder` (the `<fn>`/`.L` bug) was now the binding
constraint — correctly predicted as "the next generator target."

---

## Stage 7 — `<fn>` placeholder fix

The stub in `gen/realize.py` (`if kind == "<fn>": return "<fn>"`) never
substituted a real identifier, so the literal string `<fn>` landed in
emitted instructions and llvm-mc rejected it outright. Fixed to realize
`<fn>` as a valid identifier. This was flagged in Stage 4 as the single
largest identifiable cheap win, independent of any bigger `other`-bucket
decision.

**Cumulative validity trajectory (x86_64, per-sequence):** 2.3% (original
baseline) → 3.5%→21.5% (width fix, 6.1x) → 21.1%→24.2% (arch-purity, +3.1pp)
→ `<fn>` fix stacked on top. Still nowhere near the ~99% a raw-sampling
"usable" generator would need — which is exactly why the next stage doesn't
try to push per-sequence validity to ~100% directly, and instead treats
occasional valid+leaking output as a training signal to amplify.

---

## Stage 8 — Oracle-in-the-loop RL rejection sampling (headline result)

**Method:** AlphaCode-style rejection-sampling fine-tuning
(`gen/rl_from_oracle.py`). Sample candidates → realize → splice → validate
against Spectector → keep the ones that leak → fine-tune the generator on
those → repeat. `oracle_reward` maps verdicts (LEAK +1.0 / SAFE 0.0 /
UNRUNNABLE −0.2). This directly reuses the invalidity from Stages 4–7 as
free negative signal rather than needing it eliminated first.

**Result:** validated-leak yield **~0.50 → ~0.97 in a single round**, then
plateaus (SPECTRE_V1, x86_64). Reproduced across seeds: round-0 yield
0.500±0.026, overall 0.824±0.065.

**Is this real discovery or mode collapse?** Audited
(`gen/analyze_rl_diversity.py`): 172 leaking samples on a representative run
→ **117 distinct** leaking token-sequences, median pairwise similarity 0.32
(0=disjoint, 1=identical; a collapsed generator would show ~1 distinct
sequence at similarity ≈1.0). Genuine discovery, not degenerate repetition.

This is the generator arm's headline, standalone contribution.

---

## Stage 9 — Self-supervised pretraining (HELPS, once the fine-tune LR is right)

**Question:** does pretraining the generator's `CondTransformerLM` on a
large corpus of real compiler-emitted function bodies before RL fine-tuning
help?

**Setup:** 200k self-contained compilable C functions from AnghaBench,
compiled to x86_64/arm64, tokenized (`gen/build_pretrain_corpus_from_c.py`,
replacing an earlier the-stack whole-file source that was 84.5%
unknown-arch with low compile yield). **A real bug was found and fixed as a
prerequisite:** pretrain originally used a canonical-op tokenizer
(`VECTOR`/`ADD`/`BRANCH_COND`) while the generator uses raw-mnemonic
`AsmTokenizer` — disjoint vocabularies meant only ~4 special tokens
transferred (init-from overlap 4/460). Fixed to align tokenizers; verified
transfer jumped to 322/460 (318 content tokens, 37 tensors copied), making
the ablation a fair test rather than a broken pipe.

**A first pass looked NULL — then turned out to be a learning-rate
artifact.** With the fine-tune learning rate at `3e-3` (the from-scratch
default, `gen/generator.py` `train()`), a 3-seed comparison showed every
metric's CI overlapping and point estimates leaning *against* pretraining.
A supervisor flagged the likely cause: **3e-3 is high enough to overwrite
the pretrained weights within the first few steps** — so the model was
effectively retraining from scratch and the pretrain was wasted.

**Re-run at `--lr 1e-4` (`gen/finetune.sbatch`), the result flips —
pretraining significantly reduces mode collapse and improves gadget
diversity.** Two independent lines of evidence:

- **Pre-RL A/B (`gen/generator_ab.md`, `gen/compare_generators.py`, before
  any RL so RL's saturation can't explain it):** low-LR pretrained beats
  base on every axis — unique-rate 0.85→**1.00**, mean pairwise similarity
  0.25→**0.15**, realize-rate 0.95→**1.00**, mean length 22.7→33.6.
- **Powered RL (5 seeds/arm, `gen/rl_multiseed.md`):** baseline vs. low-LR
  pretrained — mean ± 95% CI, "separate" = the two arms' CIs do not overlap:

  | metric | baseline | pretrained | verdict |
  |---|---|---|---|
  | **top-1 template multiplicity** | 28.8±6.3 | **3.0±1.1** | **CIs SEPARATE** |
  | **unique leaking gadgets** | 102.4±18.0 | **134.8±5.9** | **CIs SEPARATE** |
  | **unique-rate** | 0.674±0.083 | 0.971±0.021 | **CIs SEPARATE** |
  | round-0 yield | 0.540±0.048 | 0.545±0.072 | tied |
  | overall yield (raw leak rate) | **0.839±0.078** | 0.703±0.030 | **SEPARATE — baseline higher** |

  The dominant-template count dropping 28.8→**3.0** (significant) is the
  headline: pretraining stops the generator collapsing onto one winning
  shape. At n=5 the two other diversity metrics also clear significance
  (unique leaking gadgets 102→135, unique-rate 0.67→0.97) — not just top-1.
  Contrast the SAME comparison at 3e-3, where top-1 was 30 vs. 35 (favoring
  baseline) — **confirming the LR-overwrite explanation.**

**The honest trade-off (both directions now significant at n=5):**
pretraining buys **diversity / anti-collapse at a cost in raw leak yield** —
overall yield is significantly *lower* for the pretrained arm (0.70 vs.
**0.84**, CIs separate): it spreads probability mass over many distinct
shapes instead of exploiting the one high-yield template. **round-0 yield is
genuinely tied** (0.540 vs. 0.545) — no faster-start advantage; the earlier
single-run +0.08 was noise. For a *discovery* tool (the goal is many
distinct leaking gadgets, not ~29 copies of one) the diversity win is the
right thing to optimize, but the paper must state the yield cost plainly.

**Caveats:** scope SPECTRE_V1/x86_64. Adding BENIGN to the RL fine-tune
(`--finetune-with-benign`, `gen/rl_benign.sbatch`) is a single exploratory
run so far (unique-rate 0.955, 154 distinct leaking gadgets) — promising but
not yet multi-seed.

**Supersedes** the earlier "pretraining is a null ablation" conclusion
(`docs/GENERATOR_ARM_STATUS_2026-09-18.md` original Stage 9): that was the
3e-3 learning-rate artifact.

---

## Parallel track A — Real-C cross-ISA synthesis (`generate_c.py`, `gen/synth/`)

Separate from the token-level neural generator above, there are two
template-based tracks that generate real C and compile it with real
cross-compilers, so output is valid by construction:

- **`gen/synth/`** (older): hand-authored per-class C templates
  (`templates.py`, `spectector_gadgets.py`, `tuned_gadgets.py` +
  `tuning_grid.py`) — a human wrote each class's structural shape once, and
  scripts vary knobs (secret width, stride, register spread) to produce N
  distinct instances.
- **`gen/generate_c.py`** (newer, `compile_multi_isa`): `generate_c()`
  template-slots from `c_vulns/` families into freestanding (no libc) C
  gadget bodies for all 9 classes, and `compile_multi_isa()` compiles the
  *same one source* to x86_64/arm64/riscv64 with real cross-compilers,
  skipping (never fabricating) any arch whose toolchain is absent. This is
  what closes the corpus-reality gap noted at the top of this doc — since
  `c_vulns/` only has ~21 runnable PoCs, this track builds new complete
  gadgets from scratch rather than trying to validate the ~1,400 structural
  fragments. One nonobvious finding along the way: probe/leak arrays must
  be marked `volatile`, or clang at `-O2` proves the array is never written
  and constant-folds the whole gadget to a no-op.

Both tracks feed the same downstream oracles (Spectector/InvisiSpec) as the
neural generator's spliced output, and both are meant to be cross-checked
against each other and against the neural generator's discoveries, not
treated as a replacement for it.

---

## Parallel track B — V4 oracle-labeled twin pipeline (`gen/v4_family`)

**Method:** `gen_v4_family.py` emits matched *pairs* of runnable
speculative-store-bypass (SPECTRE_V4) PoCs, structurally identical except
for one bit — fenced vs. not (8 base structures × fence on/off, varying
stride/indirection/dead-op padding — a labeled family, not 16 clones).
`run_oracle_family.py` compiles+runs both members of each pair through
Spectector; `build_v4_family_records.py` extracts each victim function from
the compiled `.s`, neutralizes it with the same functions
`v54/build_dataset.py` uses for name-leakage removal, and — this is the
point — **labels the record from the oracle verdict, not from which arm of
the pair it came from**: leak→SPECTRE_V4, safe→BENIGN. The statically
visible fence becomes the learnable discriminator, and the label is
oracle-grounded rather than guessed.

**A real gotcha, found and fixed:** at `-O0`, the compiler intrinsic
`_mm_lfence()` is emitted as an out-of-line `call`, not an inline `lfence`
instruction — this hides the fence from the PDG builder entirely (it only
ever sees `CALL`, never `LFENCE`). Fixed by hand-writing the barrier as raw
inline asm (`__asm__ __volatile__("lfence" ::: "memory")` on x86; `dsb
sy`/`isb` on arm64), which survives `-O0` intact.

`3cc010e` generalized this fenced/unfenced twin generator from V4-only to
V1/L1TF/MDS (each class gets its own class-appropriate fencing rule — after
conditional branches for V1, before the read for L1TF/MDS). **Important
caveat:** only V4's twins are hardware/oracle-verified end-to-end; the
V1/L1TF/MDS twins are `source=synth_mitigated_twin` — structural-only,
generalized by analogy, not independently verified the way V4 was.

---

## Parallel track C — B1 oracle-structure diagnostic

**Question it answers:** the pipeline shows a steep accuracy cliff between
"syntactically valid" and "actually leaks" (Stage 8's yield numbers show
this directly). `gen/b1_oracle_structure.py` (named for Phase B1 of the
generation plan) asks *where* in that cliff a given failure sits, by
cross-tabbing the oracle verdict (leak/safe/unrunnable) against whether the
gadget's instruction window actually contains the class's defining
structural primitive (a per-class canonical-op table — e.g. SPECTRE_V1
needs `BRANCH_COND`+`LOAD`+`SHL`). This separates two very different
failure modes that a bare leak-rate number conflates: "the generator didn't
even produce the right shape" vs. "right shape, but no leak" (missing
dataflow / speculation window / probe write). Currently 60 records in
`eval/b1_oracle_structure_records.jsonl`, generated standalone (no Docker
needed unless `--validate` runs the real Spectector half) — **not yet
joined with a full real-oracle run**, so the cross-tab is presently
one-sided.

---

## Parallel track D — RISC-V idiomatic attack corpus + idiomaticity gate

Earlier work (see project memory, `specdiscover-isa-independence-gate`)
found the original RISC-V corpus was arm64-*transliterated* rather than
independently idiomatic — a bigram test on canonical-op sequences detected
this (6/6 classes, p=0.016), where a naive pooled-frequency comparison
detected nothing (0.97x). This matters for the generator arm specifically
because any generator or gadget-harvesting pipeline trained/validated on a
transliterated corpus is really just learning arm64 dressed in RISC-V
mnemonics.

**Idiomaticity gate methodology (`eval/isa_independence_check.py`):**
transliteration rewrites opcodes one at a time but can't change instruction
*ordering*, so it compares canonical-op **bigram** distributions
(Jensen-Shannon divergence, bootstrapped over source-file families, not
individual records). The yardstick is x86_64-vs-arm64 (two corpora built
genuinely independently) — a candidate's divergence-from-suspected-source
divided by that yardstick gives a ratio: `<0.6` → transliteration-like,
`≥0.9` → not detected, in between → ambiguous. Critical calibration
finding baked into the script itself: the **pooled** comparison alone is
insufficient (0.97x on the known-bad corpus, i.e. a false negative) because
differing class-mix across corpora moves the bigram distribution enough to
mask provenance. What actually works is a **per-class** table plus a
one-sided **sign test** on direction (is RISC-V closer to arm64 — its real
transliteration source — than arm64 is to x86; same corpus: 6/6 classes
closer, p=0.016). Below 5 shared classes the sign test is mathematically
underpowered (floor 0.5^n ≥ 0.05) and must be reported as "underpowered,"
never as "independent."

**`gen/build_riscv_attack_corpus.py`** (commit `94b8c88`) is the
one-command driver: it runs `gen/harvest_riscv_from_cvulns.py` (real
riscv64-elf-gcc compilation of `c_vulns/` sources, not transliteration) and
`eval/isa_independence_check.py` as subprocesses and prints a consolidated
per-class report — kept counts vs. the 37-record baseline, PASS/FAIL/
AMBIGUOUS per class, and which `c_vulns/c_code/*.c` files aren't mapped in
`FILE_CLASS` so a human can extend coverage. Dry-run by default,
`--apply` writes the corpus and runs the gate for real. A real run on this
machine reproduced the 37-record baseline exactly and passed/ambiguous-
passed all 5 populated classes with no FAILs.

**A real bug this surfaced:** `FILE_CLASS`'s `"spectre_2.c": "SPECTRE_V2"`
entry had been accidentally swallowed into a trailing comment on the same
line, silently dropping it — the actual reason RISC-V SPECTRE_V2 attack
records = 0. The effect was harmless (spectre_2.c is an x86-only inline-asm
harness — `callq`/`mfence`/`_mm_lfence` — and can't compile to riscv64
anyway), but the cause was completely invisible until the driver's
uncovered-files report pointed at it. Now made explicit and documented
(commit `e5c3774`), with the real gap recorded honestly: **RISC-V still has
no SPECTRE_V2 attack sample and needs a hand-authored *portable* V2 gadget
to ever get one** — the same authoring gap applies to L1TF and MDS on
RISC-V.

---

## Why things didn't work — hypotheses, consolidated

- **Shared vocabulary across ISAs (Stage 1 design choice) is the root
  cause of most early "other"-bucket failures.** A single 458-token
  vocabulary made cross-ISA leakage structurally possible with nothing to
  prevent it at sampling time; the arch-purity fix (Stage 6) treats the
  symptom at inference without retraining, but the underlying model still
  "knows" both ISAs' opcodes as one space.
- **The generator's own internal validity check (PDG-parseability) measures
  something different from "a real compiler accepts this."** 100%
  PDG-parseable + 91% GCC-rejected (Stage 3) means the generator's grammar
  is far looser than any real ISA's operand-type rules — width, addressing
  mode, and register-class constraints simply aren't represented in what
  the model was trained to get right.
- **Per-sequence validity compounds against you.** Every fix (width,
  arch-purity, `<fn>`) delivers a real, measured per-instruction gain, but
  because a whole gadget needs every one of ~25 instructions to be valid,
  per-sequence validity stayed low (24% even after three real fixes) — this
  is inherent to autoregressive token-level generation of a program, not a
  bug to patch away, which is why Stage 8 works *around* it via rejection
  sampling instead of chasing near-100% validity.
- **General code-LM pretraining doesn't transfer to a narrow, already-well-
  covered task.** The pretraining ablation's most likely explanation isn't
  "pretraining doesn't work" in general — it's that the RL rejection loop
  starting from a 15-epoch fine-tune on 5,532 targeted records already
  captures the leaking-gadget structure tightly, so broad C-function
  knowledge (loops, arithmetic, arbitrary control flow) has little
  incremental signal to add, and may even dilute the sharper starting
  distribution slightly (every non-tied estimate leaned against it).
- **RISC-V's earlier corpus problems were a data-provenance bug, not a
  model or oracle bug** — the corpus was arm64 dressed in RISC-V mnemonics,
  which is why fixing the harvesting method (compile real C with a real
  riscv64 compiler) rather than tuning any generator or classifier is what
  actually closed the gap, and why the bigram/sign-test gate exists as a
  standing check against it recurring silently.
- **Silent-but-harmless bugs hide behind correct-looking zero counts.** The
  SPECTRE_V2 RISC-V bug (a `#` comment eating a dict entry) produced
  `0` records — indistinguishable from "there's genuinely no way to compile
  this to RISC-V" until someone built a report that listed *uncovered*
  files explicitly rather than just totals.

---

## Open gaps / questions left

1. **RISC-V has zero SPECTRE_V2/L1TF/MDS attack samples** — needs
   hand-authored portable gadgets (no x86-only inline-asm harness); this is
   an authoring task, not a pipeline fix.
2. **Stage 8's RL result (yield 0.50→0.97) is SPECTRE_V1/x86_64 only.**
   Unknown whether the same rejection-sampling dynamic (and the same
   diversity-not-collapse result) holds for the other 8 classes or for
   arm64/riscv64 — not yet run.
3. **The pretraining ablation is n=3 seeds, underpowered by its own
   admission.** Estimates consistently lean against pretraining, so more
   seeds probably won't flip the verdict, but a formal "pretraining
   definitively doesn't help" claim would want more power.
4. **The `other`-bucket residual after Stages 5–7 is still not fully
   closed** — symbol tokens in mnemonic position and ARM
   `ldur`/`ldp` register-offset-vs-immediate addressing remain unfixed;
   only the single largest cause (register width) was addressed.
5. **Per-sequence syntactic validity (~24% even post-fixes) is far below
   what a "sample directly and use it" generator would need** — currently
   only tractable because Stage 8's RL loop turns invalidity into free
   negative reward rather than needing it fixed first. Whether that's a
   durable strategy at scale (all classes/arches) or specific to
   SPECTRE_V1/x86_64's relatively simple structural shape is untested.
6. **V1/L1TF/MDS "twin" mitigated-gadget pairs (`gen/v4_family` generalized
   by `3cc010e`) are structural-only, not oracle-verified** like the
   original V4 twins — the fencing rule was generalized by analogy to each
   class's known mitigation point, but nobody has run these through
   Spectector/Revizor to confirm the fence actually blocks a real leak the
   unfenced twin has.
7. **B1 oracle-structure records (60 total) haven't been joined with a
   full real-oracle run** — the "wrong shape vs. right-shape-no-leak"
   cross-tab this diagnostic exists to produce is not yet populated on
   both axes.
8. **The old `isa_purity()` metric (`gen/train_generator.py:61`) was never
   reconciled with the newer `arch_purity.py` sampling-time fix** — it's
   unclear whether `isa_purity()`'s reported numbers (97.6%/96.1%, known to
   be over-optimistic) have been re-measured post-fix, or whether the two
   mechanisms should be merged into one source of truth.
9. **Idiomaticity-gate verdicts on any corpus with fewer than 5 shared
   classes are mathematically underpowered** and must be caveated as such
   — worth checking whether any downstream doc or paper draft has already
   over-claimed a PASS from a small-class-count run.
10. **No successful path yet to scaling the base generator beyond a
    small from-scratch model on 5.5k sequences** — the one attempt to buy
    a head start via pretraining was a clean negative; LoRA on a pretrained
    code LLM (the other scale path noted back in the Phase-2 memory) has
    not been tried.

---

## Key files

| File | Role |
|---|---|
| `gen/generator.py` | `CondTransformerLM` — class+arch-conditioned token LM |
| `gen/train_generator.py` | Trains + verifies conditioning; `isa_purity()` |
| `gen/realize.py` | Token sequence → concrete asm (spec-driven, best-effort) |
| `gen/oracle_splice.py` | Grafts realized asm into a real C harness function |
| `gen/decode.py` | Single-sample sample→realize→(validate) CLI; `_SPLICE_CONVENTION` |
| `gen/generate_batch.py` | Bulk harvesting entry point, arch-purity on by default |
| `gen/arch_purity.py` | Sampling-time cross-ISA/symbol-token mask |
| `gen/check_syntactic_validity.py` | llvm-mc-based independent validity check |
| `gen/triage_other_failures.py` | Real llvm-mc-diagnostic clustering for the `other` bucket |
| `gen/rl_from_oracle.py` | Oracle-in-the-loop rejection-sampling RL loop |
| `gen/analyze_rl_diversity.py` | Discovery-vs-mode-collapse audit |
| `gen/rl_multiseed.sbatch` / `aggregate_rl_multiseed.py` | Powered multi-seed comparison |
| `gen/build_pretrain_corpus_from_c.py`, `pretrain_encoder.py` | AnghaBench pretrain corpus + tokenizer-aligned pretraining |
| `gen/generate_c.py` | Real-C template → real cross-compile (`compile_multi_isa`) |
| `gen/synth/` | Older hand-templated per-class C gadgets |
| `gen/v4_family/` | Oracle-labeled fenced/unfenced twin gadget pipeline |
| `gen/b1_oracle_structure.py` | Wrong-shape vs. right-shape-no-leak diagnostic |
| `gen/harvest_riscv_from_cvulns.py`, `build_riscv_attack_corpus.py` | RISC-V idiomatic attack corpus + gate driver |
| `eval/isa_independence_check.py` | Bigram/JS-divergence + sign-test idiomaticity gate |
| `oracle/spectector_oracle.py`, `oracle/apptainer/` | Spectector oracle wiring on the cluster |

## Reproduce

```
# base generator
python3 gen/train_generator.py                       # trains + verifies conditioning

# validity triage
python3 gen/check_syntactic_validity.py --n 100       # llvm-mc-based, no Docker
python3 gen/triage_other_failures.py --n 100          # real llvm-mc diagnostics

# oracle validation (needs Docker/Apptainer + Spectector)
python3 gen/decode.py --class SPECTRE_V1 --arch x86_64 --n 10 --validate

# RL loop
sbatch gen/build_corpus.sbatch                        # AnghaBench -> jsonl
sbatch gen/pretrain.sbatch                            # -> gen/pretrained_angha.pt
python3 gen/train_generator.py --init-from gen/pretrained_angha.pt --save gen/generator_pretrained.pt
sbatch gen/rl_multiseed.sbatch                        # {baseline,pretrained} x 3 seeds
python3 gen/aggregate_rl_multiseed.py                 # -> gen/rl_multiseed.md

# RISC-V idiomatic attack corpus + gate
python3 gen/build_riscv_attack_corpus.py              # dry-run report
python3 gen/build_riscv_attack_corpus.py --apply      # writes corpus + runs gate for real
```
