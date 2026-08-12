# Close L1TF's RISC-V Holdout Coverage Gap — Design

**Status:** Approved by user 2026-08-12, ready for implementation planning.

## Problem

`eval/split_riscv_holdout.py`'s `build_riscv_split()` does a pure random 77/23 group
shuffle (`np.random.default_rng(0)`) over `riscv_labeled.jsonl`'s family groups. Under
this seed, L1TF — the largest RISC-V vulnerable class (162/430 records, 6 family
groups, tied for the most groups of any class) — had all 6 of its groups land on the
train side, leaving it with **zero** examples in `riscv_eval_holdout.jsonl`. Per
[[specdiscover-riscv-corpus-training-integration]], L1TF is one of 4 classes currently
UNMEASURABLE in the trained model's RISC-V holdout report (`RISCV_INTEGRATION_RESULTS.md`),
and it's the most consequential one: the largest class, and historically the worst
zero-shot performer (9.38% recall pre-integration).

Every other multi-group class already has some holdout representation under the
current seed — this is specifically a coverage bug for L1TF (and the two
structurally-forced classes below), not a general split failure.

## Non-goals

- Not attempting to get holdout coverage for `SPECTRE_V4` (1 group) — pulling its
  only group to eval would leave it with zero *training* examples, which is worse
  than zero eval examples. Stays forced to train, documented as a known limitation.
- Not attempting to get any coverage for `SPECTRE_V1` (0 groups — it doesn't exist
  anywhere in `riscv_corpus`). No split strategy fixes an absent class; that needs
  new source data, out of scope here.
- Not sourcing new RISC-V compilation data. This design only re-splits and re-labels
  the corpus that already exists (`riscv_corpus/`, unchanged).
- Not changing `eval/train_riscv_augmented.py` or `eval/evaluate_riscv_augmented.py` —
  both are reused exactly as they are, just re-run against new input data.

## Design

### 1. Re-run `eval/build_riscv_labeled.py` (no code change)

Its BENIGN filter (`if label == "BENIGN": continue`) was added and merged last
session but never applied retroactively — regenerating `riscv_labeled.jsonl` wasn't
worth an 87-minute retrain for 2 stray records at the time. Since this design already
requires a fresh retrain for the L1TF fix, re-running this script first is free and
finally removes those 2 records (494 records, 0 BENIGN, down from 496/2).

### 2. Stratified group-holdout in `eval/split_riscv_holdout.py` (code change)

Replace the pure-random group shuffle with a single deterministic stratified pass —
no ratio-matching machinery, coverage is the actual goal, not hitting exactly 23%:

1. Group `riscv_labeled.jsonl`'s groups by label.
2. For each label with **≥2 groups**: seeded-shuffle its groups (`np.random.default_rng(0)`,
   consistent with the existing convention), assign the first shuffled group to eval.
3. For each label with **exactly 1 group**: force it to train (can't stratify without
   zeroing its training data).
4. All remaining unassigned groups: seeded-shuffle, assign to train. (No top-up pass
   to hit a target eval fraction — with the current corpus, the guarantee-only
   assignment already lands around 26% eval, close enough to the prior 23% that
   forcing an exact ratio would add complexity for no real benefit. If future corpus
   growth ever makes the guarantee-only fraction land far outside a usable holdout
   size, that's a reason to revisit this — not something to build defensively now.)
5. Assert zero group overlap between sides (existing check), extended to also assert
   every ≥2-group label appears on **both** sides — this is the actual coverage
   guarantee, so it should be enforced structurally, not just hoped for.

### 3. Re-run the existing pipeline, unmodified

- `eval/train_riscv_augmented.py` — same recipe, same 5 seeds `[42,1,7,13,21]`, same
  hyperparameters as every prior run in this lineage (comparability requirement
  carries over from the original design). ~87 minutes, same as before.
- `eval/evaluate_riscv_augmented.py` — regenerates `RISCV_INTEGRATION_RESULTS.md`
  from the new checkpoints. The old (pre-stratification) per-class numbers should be
  kept in the new report as an explicit "before" comparison — silently overwriting a
  real prior measurement would erase useful signal about how much the split itself
  (versus the underlying data) affects L1TF's measured recall.

## Expected outcome

Unmeasurable-class count drops from 4 (L1TF, SPECTRE_V4, BENIGN, SPECTRE_V1) to 2
(SPECTRE_V4, SPECTRE_V1) — both genuinely unfixable without new source data, not
split artifacts. L1TF gets a real, trustworthy recall number for the first time
since RISC-V training data was integrated.

## Testing

- Unit tests on the new `build_riscv_split()`: every label with ≥2 groups appears on
  both sides; every label with exactly 1 group appears only in train; zero group
  overlap; deterministic (same output across repeated calls with the same input).
  Same style as the existing split tests in `tests/eval/test_split_riscv_holdout.py`.
- Real-scale run: confirm the regenerated `riscv_eval_holdout.jsonl` actually
  contains L1TF records, and that the full pipeline (label → split → merge/retrain →
  evaluate) produces a real, honestly-reported L1TF recall number, not necessarily a
  *good* one — this design fixes measurability, not accuracy. A bad-but-real L1TF
  number is a valid, reportable outcome.
