# Shared-config Revizor campaign (runbook D, paper sec:detector T2)

i5-8300H, 2026-11-04 17:23 -> 2026-11-05 03:36, SMT on (restored after the V4
SMT-off control). `run_multiclass_campaign.sh --shared-config --n-seeds 10`,
n=1000, inputs=100, timeout 900 s. Run root `~/rvzr_runs/mcshared_261104_172321`,
log `~/rvzr_runs/campaign_261104_172321.log`.

## Config

Every class: the same instruction categories (union of the four demo configs =
detect-foreshadow's: BINARY BITBYTE CMOV CONVERT DATAXFER LOGICAL MISC NOP POP
PUSH SETCC), DIV/IDIV blocklisted, program_size 24, avg_mem_accesses 12,
default basic-block shape. Per class only: contract, actors/page properties,
executor knobs (`class_config.shared_overlay`). COND_BR is V1-only: rvzr
cannot combine `cond` with the MDS (seq-assist) or L1TF (DEH) contracts, so
branches there would file V1 leaks under MDS/L1TF.

## Violations (10 fresh seeds per class)

| class | violation dirs | per seed | unique gadgets (all new vs corpus) |
|---|---|---|---|
| SPECTRE_V4 | 7 | 0-2 | 7 |
| MDS | 66 | 6-7 | 66 |
| L1TF | 64 | 6-7 | 64 |
| SPECTRE_V1 | 87 | 8-9 | 87 |

Controls (V4): SSBP on -> 0 on all 10 seeds; SMT off -> 7 (same per-seed
counts as SMT on). V1 again yields a near-constant 8-9 per seed (cf. 9/seed in
the per-class campaign; still unexplained, likely the 900 s timeout bounding a
steady discovery rate).

Corpus: `eval/data/revizor_<class>_shared.jsonl` (224 records; the input `eval/shared_config.py` reads), kept
OUT of `eval/data/revizor_*_real.jsonl` so the confound test stays clean.
Median length 42-44 instructions in every class (per-class configs: 16-47);
conditional branches only in V1 (83/87).

## Preliminary confound check (local, not the paper number)

Standard-scaled bag-of-opcodes logistic regression, stratified 5-fold
(random, not group-split), balanced accuracy (chance 0.25):

| corpus | all opcodes | jcc removed |
|---|---|---|
| per-class configs (741) | 0.994 | 0.812 |
| shared config (224) | 0.411 | 0.304 |

Opcode identity no longer gives the class away once the instruction set and
shape are shared, i.e. the earlier 0.97 opcode bar was the config. The paper
number needs the cluster: graph model vs the same bar, multi-seed, on these
records (V4 has only 7, so class-balanced metrics there are noisy).

## V4 top-up (2026-11-05, `mcshared_261105_145700`)

`run_multiclass_campaign.sh --shared-config --classes SPECTRE_V4 --n-seeds 30`
(14:57-21:53), same shared overlay as above.

- Unmitigated: 22 violations over 30 fresh seeds (16 seeds with >= 1); all
  22 new (no sequence match anywhere in `eval/data/`), appended to
  `eval/data/revizor_spectre_v4_shared.jsonl` -> V4 7 -> 29, corpus 224 -> 246.
- SSBP-on control: 0/30 seeds violate.
- SMT-off re-test: 24 violations (per-seed within +-1 of SMT-on; 2 seeds
  0 -> 1, 1 seed 2 -> 1, 1 seed 1 -> 2), so the leak is not cross-thread noise.
  Control dirs stay out of the corpus.
- `eval/shared_config.py` seed split: 125 train / 121 held-out, 13 V4 held out.
