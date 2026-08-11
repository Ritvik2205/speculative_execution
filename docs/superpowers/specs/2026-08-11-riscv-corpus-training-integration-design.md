# RISC-V Corpus Training Integration — Design

**Status:** Approved by user 2026-08-11, ready for implementation planning.

## Problem

RISC-V zero-shot accuracy is ~29-34%, far below x86/ARM's 96.14% ± 1.59%. The
dominant, evidence-backed root cause (this project's own prior work, see
memory `specdiscover-riscv-current-status`) is graph-size domain shift: the
model has **never seen a single real RISC-V training example**. A real,
already-bug-fixed, cross-compiled RISC-V corpus already exists —
`riscv_corpus/` (498 `.s` files, real `riscv64-linux-gnu-gcc` output from
`c_vulns` sources, ARM-inline-asm contamination already patched via
`scripts/patch_riscv_corpus_asm.py`) — but it is currently used **only** for
zero-shot evaluation (`spec/eval_riscv_real.py`, `spec/validate_riscv_corpus.py`,
various `eval/riscv_h*.py` hypothesis scripts), never mixed into training data.

This design integrates `riscv_corpus` into the training pipeline properly —
with a leakage-safe held-out RISC-V eval split, not just "add it all to
train and hope" — and retrains the flagship GINE spec-builder model
(`train_gine_v38.py --use-spec-builder`, the model behind the cited
"96.14% ± 1.59" number) to measure whether real RISC-V training exposure
actually closes the gap.

## Non-goals

- **No new compilation.** `riscv_corpus` already exists and is real
  (cross-compiled, bug-patched). This design only integrates it into
  training — it does not expand the corpus.
- **No emulators.** The corpus was built by cross-compilation
  (`riscv64-linux-gnu-gcc -S`), not QEMU/Spike/emulation. Emulator-based
  execution validation (a RISC-V analog of the Revizor hardware oracle) is a
  materially different, separable problem — not addressed here.
- **RISC-V BENIGN class — explicitly deferred.** `riscv_corpus` contains
  only vulnerable-class sources (`c_vulns`); zero BENIGN examples. Compiling
  benign GitHub repo sources to riscv64 needs both raw source (not present
  in this checkout — `githubCrawl/repos_benign` is empty, would need
  re-cloning) and the riscv64 cross-toolchain, on the Ubuntu dual-boot box.
  User explicitly chose to defer this rather than block on it. Training
  keeps using existing x86/arm64 BENIGN examples unchanged; this design adds
  real riscv64 examples for the 8 vulnerable classes only.
- **No change to the spec engine, PDG builder, or feature extraction.** This
  is a training-data-composition change, not a `spec/*.json` or
  `pdg_builder.py` change — the Feature/Spec Change Gate
  (`./scripts/run_feature_gate.sh`) does not apply here. Multi-seed rigor
  (below) is this design's own equivalent safeguard.

## Design

### 1. Label + family-group extraction (extends existing code, doesn't reinvent it)

`spec/eval_riscv_real.py::build_riscv_records()` already does most of this
correctly for zero-shot eval: it walks `riscv_corpus/*.s`, strips the
`.O<n>.riscv64.s` suffix, maps filename keywords to real labels via
`KEYWORD_TO_LABEL` (cross-referenced against actual v54 x86/ARM labels —
e.g. any file with `"bhi"` in its name gets `BRANCH_HISTORY_INJECTION`),
excludes `"downfall"` (no cross-referenced label in real v54 data), and skips
files under 3 instructions. Reuse this labeling logic as-is — it's already
correct and already battle-tested by the existing eval scripts.

**One deliberate change**: `build_riscv_records()`'s current `group` field is
the opt-suffix-stripped stem only — `O0`/`O2` variants of the same file share
a group, but distinct `_gen_N` mutation variants of the same base template
do **not**. That's fine for a pure zero-shot eval (no train/eval split
happens within the corpus at all today), but it is exactly the kind of
near-duplicate leakage this project already got burned by once this session
(the spec-vs-hand-features locked-split sign-reversal). For a real
train/eval split, reuse the stricter family regex already established in
`eval/riscv_h1_l1tf_family_scan.py`:

```python
FAMILY_RE = re.compile(r'^(.*?)(_arm64|_x86_64)?_gen_\d+')
```

Collapse `_gen_N` variants into one shared group (falling back to the
opt-stripped stem when no `_gen_N` suffix is present). This means every
`O0`/`O2` × `_gen_0..N` variant of one base template lands entirely on one
side of the split — no near-duplicate leakage.

Output: `riscv_labeled.jsonl` — every `riscv_corpus` record with real label,
`arch: "riscv64"`, and the family-level `group`.

### 2. Group-holdout split (reuses `eval/group_holdout_full.py`'s exact mechanics)

Apply the same split procedure `eval/group_holdout_full.py` already uses for
the x86/ARM group-holdout check — `np.random.default_rng(0)`, shuffle
groups, cut at the same 77% ratio — but scoped to `riscv_labeled.jsonl`'s
groups only (RISC-V groups are already disjoint from the existing x86/ARM
group namespace, since they're derived from different filenames).

Output: `riscv_train_slice.jsonl` (77% of groups) / `riscv_eval_holdout.jsonl`
(23% of groups, never touched by training).

**Known limitation, reported honestly rather than hidden**: several classes
in `riscv_corpus` have very few real examples (some subfamilies sit at 2-16
files total). Their held-out slice will be too small to draw a confident
per-class conclusion from — report those numbers with an explicit low-
confidence flag rather than suppressing them.

### 3. Merge into the training pool

**Base on the group-holdout x86/ARM split, not the original locked split.**
The cited "96.14% ± 1.59" flagship number comes from the original locked
`v54_train.jsonl`/`v54_test.jsonl` split. This project already learned,
the hard way, that locked-split numbers can mislead (the spec-vs-hand-
features sign reversal) and that `eval/group_holdout_full.py` exists
specifically to re-validate the flagship model under a leakage-controlled
group-holdout of the same pool. Comparing a riscv-augmented run against the
locked-split number would silently mix two different, non-comparable
baselines. Instead:

Concatenate `riscv_train_slice.jsonl` onto
`eval/data/group_holdout_train.jsonl` (the x86/ARM group-holdout train pool
`group_holdout_full.py` already produces) to form the new combined training
set. `eval/data/group_holdout_test.jsonl` stays completely unchanged — it is
the regression check.

**Prerequisite**: if `group_holdout_full.py` has not already been run (or
its result isn't already recorded), run it first to get the real x86/ARM
group-holdout baseline number. Without that, there is nothing valid to
compare the riscv-augmented run against.

### 4. Retrain — same flagship hyperparameters, same seeds

Run `train_gine_v38.py --use-spec-builder` with the exact hyperparameters
`eval/run_full_tost.sh` and `group_holdout_full.py` already use for the cited
"96.14% ± 1.59" number: `epochs=60, patience=10, hidden=128, layers=3,
jk=cat, batch=32, lr=1e-3`, across the same 5 seeds `[42, 1, 7, 13, 21]`.
Reusing the exact same hyperparameters and seeds as the existing flagship
number is what makes the before/after comparison meaningful — a different
hyperparameter set would confound "did real RISC-V data help" with "did a
different training recipe help."

### 5. Evaluate on two axes

- **Regression check**: test accuracy on the untouched
  `eval/data/group_holdout_test.jsonl`, compared against the group-holdout
  baseline (from the prerequisite `group_holdout_full.py` run above — not
  the locked-split "96.14%" number, which is a different split). Any
  material drop means adding RISC-V data hurt the existing classes — must be
  reported even if the RISC-V number improves.
- **The actual measurement**: accuracy and per-class recall on
  `riscv_eval_holdout.jsonl`, mean ± CI over the 5 seeds, reported next to
  the old zero-shot 29-34% baseline. This is the number that answers the
  actual question: does real RISC-V training exposure close the domain-shift
  gap.

## Testing / Success Criteria

- `riscv_labeled.jsonl` group extraction is unit-testable in isolation
  (known filenames → known family groups, matching `FAMILY_RE`'s existing
  behavior in `riscv_h1_l1tf_family_scan.py`).
- Split script must assert zero group overlap between
  `riscv_train_slice.jsonl` and `riscv_eval_holdout.jsonl` (mirrors the
  existing assertion in `group_holdout_full.py`).
- Full pipeline run (label → split → merge → retrain × 5 seeds → evaluate
  both axes) with real, reported numbers — not a smoke-scale stand-in. Given
  training cost, one full run is the target; if wall-clock makes 5 full
  seeds impractical, fall back to 3 seeds minimum and say so explicitly in
  the report (never silently drop to fewer seeds without stating it).
- Report must show: riscv holdout accuracy before (29-34% zero-shot baseline,
  cited) vs after (this design's measured number), x86/ARM regression check
  pass/fail, and per-class riscv breakdown with low-confidence classes
  flagged.

## Deferred follow-up (explicitly out of scope, tracked for later)

RISC-V BENIGN class: re-clone/verify `githubCrawl/repos_benign` source
availability on the Ubuntu dual-boot box, install `riscv64-linux-gnu-gcc`
there, cross-compile a benign source subset via the existing
`compile_to_asm.py` (already has a commented-out riscv64 target row ready),
then repeat this same label/group/split/merge/retrain procedure for the
BENIGN class specifically.
