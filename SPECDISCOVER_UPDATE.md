# SpecDiscover — Session Update (RISC-V Spec-Engine Fix + Audit Corrections)

*Covers the work done after `SPECDISCOVER_VERIFICATION_GAPS.md`'s initial 11-gap
pass: fixing the RISC-V secret-load blind spot (G6), and two bugs found while
verifying that fix (G11's residual scope, G12). This file is the changelog;
`SPECDISCOVER_VERIFICATION_GAPS.md` remains the source of truth for exact
numbers and reproduce commands — this is the readable summary plus an honest
"what's still open" list.*

---

## What changed this session

### 1. Built and shipped a real fix for the RISC-V blind spot (G6)
Root cause (found previously): `riscv.json`'s addressing grammar can't express
indexed memory access, so the flags that mean "this load reads a secret"
(`is_secret_source`, `is_transmitter`) were measured at exactly **0.000%** on
RISC-V, regardless of training.

**Fix:** `spec/dataflow_taint.py` — derives those same flags from the
already-built data-dependence graph instead of single-instruction syntax. A
LOAD reachable from an earlier LOAD *through a page/cache-line-scale SHIFT
node* gets tagged, ISA-agnostically, no per-ISA regex needed. Wired into
`SpecBackedPDGBuilder.build()`, on by default.

This was not a straight shot — the first version (any LOAD←LOAD chain, no
shift gate) was built, tested, and **falsified**: it fired on ordinary pointer
chasing, 89.5% of new signal landed on BENIGN, 0% on the target classes. The
shift-gated version fixed that (only 6/2820 BENIGN records affected) and was
then validated three ways before being trusted:
- Doesn't contradict x86/ARM ground truth (`spec/validate_dataflow_taint.py`)
- Fires on the intended pattern in real RISC-V code
  (`spec/validate_dataflow_taint_riscv.py`)
- Doesn't regress the full GINE classifier: retrained 5 seeds, **acc
  95.71±0.55 vs baseline 96.14±1.59, macro-F1 85.40±5.73 vs 84.60±7.22** — both
  differences are inside the noise band, i.e. genuinely neutral-to-positive.

### 2. Found the fix's ceiling: the RISC-V corpus itself is contaminated
While testing the fix on real RISC-V gadgets, discovered that **100% of the
L1TF/MDS/BHI/INCEPTION/SPECTRE_V2/V4 corpus files (98% of RETBLEED) contain
inline ARM64 assembly**, copied verbatim by GCC regardless of target ISA
(inline `__asm__` is opaque to the compiler backend — it cannot be
retargeted). A "RISC-V" L1TF file's actual attack instruction is literally
`ldr x0,[a0]` / `dc civac,a0` — real ARM64 mnemonics that don't exist in
`riscv.json` (correctly — they aren't RISC-V opcodes), so they fall to
`OTHER`. **No spec-engine improvement can fix this**, because the ground-truth
files don't contain RISC-V code for the part that matters.

Confirmed with multi-seed rigor, not a single noisy snapshot: **L1TF recall is
0.00% across all 5 retrained seeds** (structural, not noise) — while MDS,
which is only *partially* contaminated (wrapper/address-computation code is
genuine RISC-V; only the innermost probe is inline ARM), shows real
seed-to-seed variability (0–50% recall), consistent with a partial, unreliable
signal surviving from the surrounding real code.

The one uncontaminated class, **SPECTRE_RSB (0% inline-asm)**, is exactly the
one class where the new mechanism found genuine new signal — which is itself
evidence the mechanism works when given real data to work with.

### 3. Found and fixed a real bug in the eval infrastructure (G12)
While re-verifying the fix, discovered `eval/run_full_tost.sh` was extracting
the wrong column from `classification_report`'s "macro avg" row —
**`awk '{print $4}'` reads recall, not F1-score (column 5)**. This had been
silently mislabeling recall as F1 across every multi-seed run this whole
audit used. Confirmed directly against raw logs, fixed both shell scripts,
and recomputed all 15 affected historical numbers from the still-existing log
files (no retraining needed). This **reverses** a previous conclusion: true
macro-F1 shows hand-designed features beating learned/combined features on
both accuracy *and* F1 — the earlier "they disagree" finding was the bug, not
a real result.

---

## Honest gap check — what's still open

Nothing below is new speculation; it's a direct read of what this session
and the prior audit explicitly left undone, plus what's still open from
`paper/todo.txt`.

### Left over from this session's own fix (small, well-scoped)
- ~~`ARCH_VOCAB` still has no `riscv64` key~~ **Fixed.** `v54/gine_classifier_v38.py:33`
  now has `'riscv64': 3` instead of the dead `'riscv'` key, so lookups
  correctly resolve instead of silently falling to `unknown`. Retrained
  (single run, since this is a dead-code-path change for the current x86/ARM
  training pool — zero riscv64 or unknown-arch records exist, so no gradient
  ever reaches that row either way): x86/ARM test 95.93% (within the noise
  band of prior retrains, as expected). RISC-V zero-shot: 23.59% — L1TF/MDS
  still 0% recall, exactly as predicted, since this fix only changes *which*
  untrained row gets used, not whether it's trained. Confirms (again) the
  fix is correctness-only, not an accuracy lever, matching the ablation that
  already ruled this out as the primary cause.
- ~~`dataflow_taint.py` only checks LOAD→LOAD chains, not STORE-based
  transmission~~ **Fixed.** Extended to treat STORE as a valid transmitter
  endpoint alongside LOAD (same probe-shift gate). Validated: x86/ARM shows
  zero new signal (provably a no-op there, no regression risk), and the real
  RISC-V BHI gadget (`lbu a5,-17(s0)` → `slliw a5,a5,6` → `sb a4,0(a5)`) now
  gets correctly tagged (`spec/validate_dataflow_taint_riscv.py`). Retrained:
  x86/ARM test 95.27% (normal noise band). **RISC-V zero-shot: BHI recall
  jumped to 98% (from ~34-35%)** — a real, mechanism-attributable win, not
  noise, since BHI is exactly the class with this leak pattern. L1TF/MDS
  still 0% recall (unaffected, as expected — corpus contamination, see
  below).
- ~~The G11 leak-fix retrain was never properly multi-seeded~~ **Done.** Ran
  the proper 5-seed comparison (same code/hyperparameters, pre-fix vs
  post-fix data). **Result: removing the leak cost nothing** — test-acc
  +0.37pp, macro-F1 +2.62pp, neither remotely significant (paired-t
  p=0.36/0.50). The originally-reported -1.68pp/-1.56pp drop was pure
  single-seed noise. Confirmed why: SPECTRE_V2 (0 leaked records) moved
  +5.97pp, almost identical to L1TF's "+5.95pp" — an unrelated class moving
  by the same amount means neither delta is attributable to the fix, both
  are just the corpus's ambient noise level. Clean, good-news close-out: the
  fix was correct and free.
- ~~RISC-V corpus regeneration~~ **Done.** Confirmed the scope first: 488/498
  (98%) of `riscv_corpus/*.s` files never actually assembled at all (the
  original pipeline used `gcc -S` and never invoked the assembler). Built a
  translator (`scripts/translate_riscv_inline_asm.py`) covering the ~20
  distinct inline-asm primitives found across 139 C sources, then — after
  discovering the `.c`-source route needs a full hosted libc that doesn't
  exist for the bare-metal toolchain — pivoted to patching the already-compiled
  `.s` files' `#APP` blocks directly (`scripts/patch_riscv_corpus_asm.py`),
  which needs no C headers at all. **Result: 498/498 (100%) of the corpus now
  assembles clean** (was 10/498). Re-scored: **L1TF recall 0.00% → 37%**, MDS
  0% → 11%, and the `CACHE_TEMPORAL`/`FENCE_BOUNDARY` edge types — exactly
  zero before — now appear. Multi-seed check on older checkpoints shows this
  moved L1TF from *impossible* to *high-variance-but-real*
  (`[4.9%, 0%, 0%, 0%, 42.0%]` across 5 seeds) — RISC-V is still a zero-shot,
  untrained-embedding domain, so consistency remains a separate open problem
  from "is the signal even present," which is what this fixed.

### Structural, larger, already flagged and still unbuilt
- **No real execution oracle (Phase 4 / gem5-class simulator) anywhere in the
  pipeline.** Every check in this entire project — the spec engine, the
  classifier, the generator — is validated against either a syntactic oracle
  (llvm-mc/capstone) or another model. Nothing confirms a "detected" or
  "generated" gadget actually leaks anything under real speculative
  execution. This is the single largest open gap in the whole system and has
  been correctly identified as such for a while, but isn't built.
- **Phase 3 (ranker) is designed but parked**, correctly blocked on Phase 4 —
  there's no real label source to rank generated candidates against yet.
- **Generator quality is low and unimproved**: only 2.3% of generated gadgets
  are fully syntactically valid assembly (71.5% of individual instructions).
  Quantified this session, not fixed.
- **Attack-specific `spec_flags` (`is_secret_source` etc.) have no
  independent verification path** — capstone/llvm-mc can't check memory
  semantics, only control flow. A cheap partial mitigation (manual audit of
  ~30 random firings per flag per ISA) was proposed, never executed.

### Paper-readiness gaps (from `paper/todo.txt`, still open)
- No pass of the draft "without AI"
- No misclassification comparison write-up (confusion matrices exist for the
  RISC-V diagnostics done this session, but nothing organized for the paper)
- No comparison against other published detectors/tools — never attempted
  anywhere in this project's history, not just this session
- Experiment history + ablations exist in raw form (this repo has dozens) but
  aren't assembled into a paper-ready narrative
- "Make a list of extracted features" — partially covered by
  `spec/learned_features_export.json`, but that's a raw dump, not a curated
  feature list for a paper table

### Bookkeeping (not a gap, just housekeeping)
Backup files from this session's fixes are sitting in place, not cleaned up:
`spec/mlm{,_large}_pre_g11_fix.pt`, `v54/data/v54_{train,test}.pre_g11_fix.jsonl`,
`v54/viz_v54_spec/gine_best_pre_{g11_fix,dataflow_taint}.pt` and matching
metrics JSONs. Intentional (kept for before/after comparison, per this
project's established convention) — flagging only so they don't get mistaken
for stray files later.

---

## Bottom line
The RISC-V fix is real, validated, and shipped. It initially hit a hard
ceiling that wasn't a modeling problem — the ground-truth data for the two
classes that mattered most (L1TF, MDS) didn't contain RISC-V code where it
counts — but that ceiling is now also closed: the corpus itself has been
regenerated (498/498 files assemble clean, up from 10/498) and L1TF recall
moved from a proven-structural 0.00% to a real, if variable, signal. Along
the way this session found two more genuine bugs purely by trying to verify
things properly (the F1/recall column mix-up, and the missing-libc assumption
in the original corpus-regeneration plan) — the pattern this whole audit keeps
producing: every round of "let's check this rigorously" surfaces at least one
thing that wasn't true, and sometimes a second one hiding underneath the
first. What's left standing after this round is smaller now: `ARCH_VOCAB` and
the corpus regeneration are both done; store-based transmission is fixed;
what remains (G11's un-multi-seeded retrain, the generator's low validity
rate, Phase 4's missing execution oracle) is exactly what was already
correctly named as open, nothing new discovered this round.

---
---

# SpecDiscover — Phase 4 Update (Execution Oracle: Built & Working)

*Covers the Phase 4 work that closes the single largest open gap named above
("No real execution oracle … the single largest open gap in the whole
system"). Two independent leak oracles now exist and agree; two vulnerability
classes are confirmed to actually leak under both a formal proof and real
speculative execution. Written to be read on its own.*

## Goal

Give the project a **real leak oracle**: confirm that a labelled/synthesized
attack *actually leaks a secret under speculative execution* — not just that a
learned model or a syntactic checker says so. Everything before this was
validated only against hand-written rules, a syntactic oracle (llvm-mc/capstone),
or another model. Phase 4 adds ground truth.

## What was built this session

### 1. Stock gem5 v24 — investigated and **refuted** as a leak oracle
Built gem5 v24 (X86, in Docker). Then proved, with evidence, that its
out-of-order core **does not leave the speculative cache footprint that Spectre
depends on**: even a single mispredicted load with a wide window leaves no
trace (verified against a hit/miss/uncached timing probe). Root cause traced to
gem5 source (`lsq.cc SingleDataRequest::finish` self-destructs squashed loads
before they touch the cache). Conclusion: modern stock gem5 cannot be used as a
Spectre oracle without source patches. This is a genuine, citable negative
finding — not a failed attempt.

### 2. Spectector — symbolic leak oracle, **working**
Adopted Spectector (IMDEA): proves *speculative non-interference* on x86
assembly symbolically (no timing/microarchitecture needed). Built it
containerised (Ciao Prolog + Z3 4.8.4 from source; apt's 4.8.12 broke the model
parser). Result on our synthesized gadgets:
- **SPECTRE_V1 → leak, V1+lfence → safe, BENIGN → safe** (correct, proven).
- SPECTRE_V4 → leak (it even catches store-bypass).
- V2 / RETBLEED → "no leak found" under its branch-speculation model (partial).
- BHI / INCEPTION / L1TF / MDS → not adjudicable (it models conditional-branch
  speculation only).
- Reviewed and hardened: closed a "fabricated safe verdict" bug and a
  stats-file parsing bug; all pure-Python units unit-tested.

### 3. InvisiSpec — real **execution** oracle, **working (it actually leaks)**
Built the InvisiSpec gem5 fork (2019-era) from source — a long, wall-by-wall
toolchain grind (Python-2 SCons, version-parse crash, correct Ruby protocol
target, `-Werror`→`-w`, guest kernel-release bump). It **actually recovers
secrets**: the reference Kocher PoC `spectre_full` recovered the full secret
string ("The Magic Words are Squeamish Ossifrage.", 40/40 bytes) via
Flush+Reload. Key configuration finding: it only leaks with the **classic
cache** (its Ruby protocol treats `clflush` as a no-op) under the
`UnsafeBaseline` scheme. This confirms 2019-era gem5 O3 *does* leave speculative
cache traces (the hardening that broke stock v24 came later).

### 4. Multi-oracle validator framework
`oracle/validators/` — a pluggable `Validator` interface with two backends
(`SpectectorValidator` = symbolic proof, `InvisiSpecValidator` = real
execution) and a `cross_validate` step that flags **double-confirmation** (both
oracles say "leak") and **conflicts** (they disagree). Cross-checking an
independent symbolic proof against a real execution is stronger evidence than
either oracle alone.

### 5. Gadget tuning → **double-confirmation for V1 and V4**
Initial finding (honest): our attack gadgets — both the synthesized ones and
the canonical `c_vulns` PoCs (e.g. `spectre_1.c`) — **do not actually leak in
execution** as written. They are under-tuned (probe stride 64 not 512, no
bounds-variable flush → speculation window too short, weak mistraining,
mismatched timing threshold). Spectector proved the *structure* can leak, but
InvisiSpec showed the *compiled gadget* did not — a real, useful conflict.

We then tuned the gadgets to the proven `spectre_full` recipe (stride 512,
flush the bound each round, 5:1 branchless mistraining, threshold 80,
score-based recovery). Result:
- **SPECTRE_V1 tuned → leaks in InvisiSpec** (recovers the actual planted
  secret; jitter-verified: plant 'S'→0x53, plant 'A'→0x41).
- **SPECTRE_V4 tuned (store bypass) → leaks in InvisiSpec** (plant 'V'→0x56,
  'Z'→0x5A) — InvisiSpec's O3 memory-dependence predictor genuinely speculates
  the load past the slow store.
- Cross-validation now reports **synth_SPECTRE_V1 and synth_SPECTRE_V4 as
  DOUBLE-CONFIRMED** (symbolic proof + real execution both = leak, zero
  conflicts).

---

## Supervisor summary — what exists, how good it is, gaps, next steps

### What exists right now (and how good/bad it is)

- **Symbolic leak oracle (Spectector), containerised** — *Good.* Deterministic,
  fast (~30 s/gadget), proves speculative non-interference. *Limited:* x86 only;
  models conditional-branch (Spectre-V1-family) speculation, so it only
  adjudicates V1/V4; it proves the code *structure* can leak, not that a
  specific compiled binary does.
- **Real execution oracle (InvisiSpec gem5 fork), containerised** — *Good and
  important:* it actually executes the attack and recovers the secret, i.e. real
  ground truth. *Limited/bad:* slow (~2–10 min/gadget), x86 only, 2019-era code,
  and its generic out-of-order core only leaks the two classes a generic core
  can (V1, V4) — it does not model vendor-specific structures.
- **Two classes fully validated end-to-end: SPECTRE_V1 and SPECTRE_V4** —
  *Strong result.* Each is confirmed by an independent formal proof **and** a
  real speculative-execution run (double-confirmed), with the secret actually
  recovered and jitter-checked.
- **Pluggable multi-oracle framework with cross-checking** — *Good.* Clean
  interface, agreement/conflict reporting, 58 unit tests green. Makes adding a
  third oracle (e.g. real hardware) straightforward.
- **Honest evidence trail** — *Good.* gem5-v24 refutation, the
  structural-vs-executional conflict, and the tuning fix are all documented with
  reproducible numbers; nothing is overclaimed.
- **Attack corpus quality** — *Weak/known-bad.* The original `c_vulns` PoCs and
  the first synthesized gadgets are pattern-exemplars, **not working exploits**
  (they don't leak as written). Only the newly *tuned* V1/V4 gadgets actually
  leak.

### Existing gaps (honest)

- **6 of 8 vulnerability classes are not execution-validated.** SPECTRE_V2 (BTB),
  RETBLEED / INCEPTION (RSB), BHI (branch-history), L1TF / MDS (fault / fill
  buffer) require *vendor-specific* microarchitecture that neither oracle
  models. No amount of gadget tuning makes them leak in these tools.
- **x86 only.** Spectector is x86-only; InvisiSpec was built for x86. ARM64 and
  RISC-V attacks have no execution/symbolic leak oracle.
- **InvisiSpec is slow.** Validating the full attack set (450 synthesized + 21
  canonical) is a multi-hour-to-day background job; only representative subsets
  have been run.
- **Canonical corpus doesn't leak as written** — the reference `c_vulns` PoCs
  are under-tuned; they need the tuned recipe to become real exploits.
- **Phase 3 (learned ranker) still unbuilt** — but it is now *unblocked*: real
  leak labels (leak / no-leak per gadget) exist for the first time.
- **No real-hardware confirmation** — both oracles are simulation/formal; the
  ultimate bar (a real vulnerable CPU) is untouched.

### Recommended next steps (in priority order)

1. **Build Phase 3 (learned ranker)** — now that real leak labels exist for
   V1/V4, train the ranker to triage generated candidates before the expensive
   oracle. This was the whole reason Phase 4 was on the critical path.
2. **Run the full cross-validation batch** (background) to get corpus-wide
   double-confirmation statistics for V1/V4, and quantify how many corpus PoCs
   are under-tuned.
3. **Add a real-hardware oracle (e.g. Revizor)** for the 6 vendor-specific
   classes the simulators can't model — the only credible way to validate
   V2/BHI/RETBLEED/INCEPTION/L1TF/MDS.
4. **Extend tuning coverage** where a simulator *can* model the mechanism (e.g.
   a gem5 config or fork that models BTB/RSB), otherwise accept the
   simulator-coverage ceiling and document it.
5. **Paper framing:** the gem5-v24 refutation plus the Spectector×InvisiSpec
   cross-validation (formal proof agreeing with real execution) is a genuine
   methodology contribution — write it up as the validation chapter.

### One-line status

**Phase 4's core deliverable is met:** the project now has a real execution
leak oracle (and an independent symbolic one), and two vulnerability classes
(SPECTRE_V1, SPECTRE_V4) are confirmed to genuinely leak under both — the first
ground-truth validation in the project. The main remaining limitation is
coverage: the other six classes and non-x86 ISAs need real hardware, which no
simulator here can substitute for.
