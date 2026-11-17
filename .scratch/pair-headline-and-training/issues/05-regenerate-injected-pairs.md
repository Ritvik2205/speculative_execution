# 05 — Injected pairs, version 2: split by host and core, two length-neutral kinds

Status: resolved
Type: task
Blocked by: nothing

## Question

Can the generator produce pairs on which length, barrier count, single-token presence and opcode counts are all at chance, with hosts and cores disjoint across train, validation and test?

## Steps

1. Re-run the audit's leakage and shortcut checks on the current data (scripts to be copied from the audit into the repo) and confirm its numbers.
2. Move `eval/pairs/data/pairs_injected.jsonl` aside as version 1 (the builder overwrites it).
3. Build the two new kinds: barrier outside the core against inside it; same-mnemonic decoy with the data dependency broken. Oracle-label both sides.
4. Split hosts and cores 60/20/20 by hash.
5. Re-run every shortcut bar on the new data, train on train and test on test.

## Done when

Version 2 files with a report showing every bar near 0.5 on the test part, sizes near 1,500–2,000 train, 300 validation, 400 or more per test part.

Spec: `../spec.md`.

## Comments

### 2026-11-13 — audit re-run, generator built, stage 1 running (Claude)

Audit re-run (`eval/pairs/audit/q2_leakage.py`): reproduced. Zero exact or near-duplicate
overlap between injected and hardware pairs, and between `v57` training data and every pair
set; the three version-1 kinds share 258–355 leaking sides; 158 hardware programs; 180 host
clusters and 72 core templates over 656 hosts and 111 cores.

Built in `eval/pairs/build.py` (target `injected2`, 11 new tests):
- `barrier`: one `lfence` per side; core before it (leaking) or after it (safe). Positions are
  balanced so that "core earlier" and "fence later" are each right in half the pairs. The safe
  side must leak again once its fence is removed, or the pair is dropped.
- `decoy`: one address register in the core renamed, breaking the link from the first load to
  a later address; mnemonics and length unchanged; the new register is one the host already uses.
- `reorder`: as in version 1, test part only.
- Hosts are split by near-duplicate cluster and cores by template, 60/20/20 by hash of the
  cluster's or template's name. Parts: hosts 401 / 130 / 125, cores 71 / 23 / 17.

Change from the plan: version 1 is not moved. Version 2 goes to `eval/pairs/data/v2/`, outside
the `pairs_*.jsonl` files the reports read, so nothing overwrites version 1 and existing
reports are unchanged.

Known limit: only 7 of the 17 test cores have a breakable link, so the test `decoy` set rests
on few cores. 81 of all 111 cores have one.

Trial against the real oracle: 28 attempts gave 23 `barrier`, 12 `decoy` and 5 `reorder` pairs
(of 7 test attempts); about 6.75 oracle calls per attempt and 3.9 s per call (the container is
emulated on this laptop). Length, barrier count and the interior-fence rule score 0.500 on
every kind by construction.

Stage 1 started: 300 train, 80 val, 200 test attempts (about 4 hours), log in
`eval/pairs/data/v2/build_stage1.log`. Resumable; attempt i of a part is the same whatever the
counts, so the run can be extended. Next: `python3 -m eval.pairs.check_v2` on the result
(length, barriers, positions, best single token, boosted opcode and token models, all fitted
on train). Extend to full size only if those bars are near 0.5.

### 2026-11-14 — stage 1 checked; decoy fixed; stage 1 rerun (Claude)

Stage 1 (580 attempts; train 442, val 116, test 264 pairs): no host cluster or core template
shared across parts; no sequence on both a leaking and a safe side; length, barrier count,
memory operands and opcode counts at 0.5. Two cells investigated:
- Decoy: the safe side had more distinct register names in 13 of 60 test pairs, the leaking side
  in 0 (token model 0.658 test, 0.604 val). Cause: `decoy()` only *preferred* registers the host
  uses and fell back to a new one. Fixed: the new register must already be named in the
  sequence, and both sides must name the same register set, else no decoy pair
  (`build.register_names`; test `test_v2_decoy_names_the_same_registers_on_both_sides`).
  Replayed on the stage-1 decoy pairs without the oracle: 285 of 306 still form.
- Barrier, "index of first use of %r15" (0.588 test): no leaking side has its fence before the
  first `%r15` use, 35% of safe sides do. Not an artefact: all 108 cores use `%r15` (the victim's
  tainted pointer) and in this victim any fence before the core protects it, so the condition
  is the leak condition itself; a leaking side with such a fence cannot exist (my first reading,
  told to the owner, called it a shortcut and proposed a fix that cannot work; corrected).
  Remaining risk is the fixed name `%r15`: ticket 06 should rename the pointer consistently on
  both sides at training time. Reorder's 22-of-74 one-way `%r15` shift is the reordering.

Stage-1 files kept in `eval/pairs/data/v2_stage1_superseded/`; stage 1 rerun with the fix into
`eval/pairs/data/v2/` (same counts and seed; `jobs_v2` is stable, so a later extension reuses it).

### 2026-11-14 — stage 1 rerun checked; stage 2 started (Claude)

Rerun with the decoy fix (580 attempts, 3 h 37 min on the laptop, 8 workers): train 421, val
109, test 266 pairs. No host cluster or core template across parts; no sequence on both sides.
"Distinct registers" and "best single token" are now 0.500 in every column (were 0.608 / 0.528 on
decoy). Largest val/test cell 0.147 from 0.5: all-tokens boosted model on test decoy 0.607 (61
pairs), but 0.435 on val decoy, the other direction, so no consistent signal at these sizes;
bigram model 0.600 on test reorder (75). `%r15` row as explained in the 2026-11-14 entry above.
Report kept as `eval/pairs/data/v2/CHECKS_stage1.md`.

Limit that more attempts will not fix: test decoy pairs come from 4 core templates (7 cores, up
to 15 pairs from one core). The test part has 17 cores in all; decoy needs a core with an
address register defined inside it. Test-decoy rows should be read as 4 templates, not 61
independent pairs, unless more test cores are added.

Stage 2 started: `--n-train 1300 --n-val 230 --n-test 330` (reuses the 580 done attempts),
about 8 h, log `build_stage2.log`. Expected from stage-1 yield: about 1,800 train, 310 val,
440 test pairs.

### 2026-11-15 — stage 2 finished and checked (Claude)

Build ended 15:00 (`build_stage2.log`); `python3 -m eval.pairs.check_v2` report is
`eval/pairs/data/v2/CHECKS.md`. Sizes: train 1,792 (barrier 1,064, decoy 728), val 311 (183, 128),
test 453 (barrier 219, decoy 105, reorder 129). Against the "Done when" sizes: train and val
met; test parts are 219 / 105 / 129, below 400 each.

No host cluster or core template shared across parts; no sequence on both a leaking and a safe
side. Length, barrier count, memory operands, distinct registers, best single token and opcode
counts: 0.500 in every val and test cell. Largest distance from 0.5 on val or test: 0.151
(opcode counts plus adjacent pairs, val barrier 0.650; the same bar is 0.525 on test barrier).
All tokens plus adjacent pairs: 0.589 test barrier, 0.595 test decoy, 0.596 val barrier, 0.453
val decoy. Sampling alone moves a 100-pair cell by about ±0.10, so decoy cells are inside
noise; the two barrier cells near 0.59 (219 and 183 pairs) are at its edge. The `%r15` row is
the leak condition, as explained on 2026-11-14.

Still true: test decoy rests on 4 core templates (7 cores).

Open for the owner: accept the test sizes, or add test cores before ticket 06.

### 2026-11-15 — owner accepted the sizes

Test sizes accepted as built. Test `decoy` is reported as 4 core templates.
