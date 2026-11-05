# Hypotheses behind the paper's weak results — local evaluation (2026-11-05)

Checks of the claims in `WEAKNESS_ROOTCAUSE_SWARM_2026-11-05.md` /
`RESEARCH_CLOSING_GAPS_2026-11-05.md` against the repo, plus two new findings.
Everything here ran locally on committed data; no GINE inference.

## 1. Why every existing model is always-attack or "fence ⇒ safe" (H0) — CONFIRMED, cause found

Every BENIGN record in the synthetic sets is **arm64**: `v54_train` 2820/2820,
`v54_test` 1031/1031, `v55h_train` 2820/2820. There are **0 x86 BENIGN**.

- B1 / b1_mech never saw an x86 safe program, so every real x86 gadget is an
  attack to them (cf leak-call rate 0.99–1.00, RESULTS §5).
- allhw / allhw2 get x86 BENIGN only from hardware-mitigated variants, and every
  one of those contains an lfence, so "fence ⇒ safe" is the only x86 BENIGN cue
  they can learn (0.00 on `cf_wrong_path`).
- allhw3 adds fenced-but-leaking variants (`cf_fencepass`, `cf_wrong_path`), which
  breaks "fence ⇒ safe", but its x86 BENIGN is still 100% fenced, so
  "no fence ⇒ attack" survives. That does not hurt H2 (every cf has a fence) but
  would show as false alarms on fence-free safe code. → `cf_nofence_*` (§6).

The in-distribution BENIGN recall (99%) is therefore an arm64 number; no x86
benign false-positive rate has ever been measured on the locked test set.

## 2. Synthetic labels are trigger-gated; real gadgets have no triggers — CONFIRMED

`v54/build_dataset.py` keeps a synthetic MDS record only if it has
verw/movntdqa/clflush, L1TF only with clflush/rdtsc, V4 with lfence/rdtsc
(or a nop-gap SSB pattern). x86 training share carrying the class trigger:
MDS 161/161, L1TF 160/160, V4 136/140, **V1 156/551 (0.28)**.
Real Revizor gadgets (`revizor_*_real.jsonl`, 725): verw, movntdqa, clflush,
rdtsc, lfence, mfence, prefetch all **0**. V1 is the only attack class mostly
learnable without a trigger, so trigger-free real input lands on V1.

## 3. MDS vs L1TF class is not readable from the code under one config — NEW

`eval/shared_config_identifiability.py` → `eval/shared_config_identifiability.md`.
Seed-grouped 5-fold CV ×5, balanced accuracy, LR and RF on: opcode bag, opcode
bigrams, structural counts (length, mem reads/writes, mem operand per opcode,
lock, operand size, registers), and all combined.

| | best bar | chance |
|---|---|---|
| MDS vs L1TF (66/64) | 0.421 (bag LR) | 0.50 |
| MDS vs L1TF vs V4 (66/64/7) | 0.275 (bag LR) | 0.33 |

Every bar is at or below chance (below = single-class held-out groups, no
signal). Under one instruction menu the generator draws MDS and L1TF programs
from the same distribution; the class is set by the contract and actor/page
configuration they were fuzzed under. **Implication:** on real gadgets, class
identity between MDS and L1TF is not a code property, so a code-only detector
cannot be faulted for missing it and cannot be credited for "finding" it under
per-class configs (that was the config, opcode bar 0.97). The defensible
real-gadget task is leak/safe (T1). Direct test (i5, §7): replay each program
under the other contract.

## 4. "L1TF vs V4 is the structure locus" — NOT SUPPORTED as stated

The 0.56 L1TF recall comes from the per-class-config corpus, whose menus nest
(V4 ⊂ L1TF), so the confusion is menu overlap. Under the shared config every
bar is at chance for MDS/L1TF/V4 and V4 has n = 7. The structure test is the
shared-config graph model (cluster step A) after the V4 top-up, not this pair.

## 5. V2 regression with learned features — VERIFIED, partner is BHI

Recomputed from the 40 logs in `eval/v56_multiseed/` (10 seeds, paired vs hand):

| arm | V2 recall Δ | t p | Wilcoxon p | missed V2 (of 154) |
|---|---|---|---|---|
| learned | −9.4pp | 0.031 | 0.039 | 22.7 → 37.4 |
| both | −13.7pp | 0.006 | 0.004 | → 44.0 |
| diff_gated_both | −12.7pp | 0.007 | 0.010 | → 42.5 |

The paper's −9.55pp (learned, 10-seed) stands; −9.4 is the 2-dp rounding in the
logs. The swarm's "unverifiable" flag is wrong. Where the lost V2 goes
(false positives into each class, from the full-precision reports; mean of 10):
BHI **14.3 → 32.0** (learned), 41.2 (both); INCEPTION 18.5 → 16.5 (flat);
RETBLEED 6.4 → 8.6. The learned features merge V2 into **BHI**, not INCEPTION.

## 6. `cf_nofence_*` — built (hardware-labelled, fence-free counterfactuals)

`oracle/revizor/scripts/hw_label_variants.py`: two opt-in variants (only when
named in `--variants`, so a resumed default run does not grow), each deleting
ONE body instruction so the edit itself carries no label:
- `cf_nofence_ess` — an instruction the minimized violation needs (memory op preferred)
- `cf_nofence_non` — one it does not, mid-sequence, neighbours non-essential (as `cf_nonleak`)

Never deletes instrumentation, jumps, labels, or anything that would empty a
block or put code after a jump. `plan --min-from <old out>` reuses an earlier
run's `_min/` so the pass gets its own plan/runs without re-minimizing.
Labels come from `rvzr reproduce` like every other variant; Spectector is not
used (it models branch speculation only, so it cannot label MDS/L1TF). The
mechanism rule calls every fence-free program a leak, so this is also the first
held-out set where a learned model could beat the rule.

## 7. MDS "0/6 recorded violations do not replay" — the two harnesses differ

| | 0/6 (`REPRODUCE_RESULTS.md`, 2026-10-12) | 33/33 (`tab:hwlabel`) |
|---|---|---|
| dirs | 3 Aug-2026 dirs × SMT on/off (`rvzr_runs/{baseline,smt_off}/MDS`) | 33 Sep multiclass-campaign dirs |
| Revizor filters | **ON** (recorded `reproduce.yaml`) | **OFF** |

Paper L1183–1187 says MDS is absent from `tab:hwlabel` "for the same reason";
`tab:hwlabel` has MDS 33/33 stable. L129/572/1106 read 0/6 as recorded-input
fragility, but the filter setting is an untested alternative cause. Test:
`eval/data/revizor_mds_aug_replay.jsonl` (the 6 dirs) through the same harness
with filters off (§8).

## 8. i5 runs these add (after the training-pool run; never two at once)

```bash
# a. MDS replay, filters off (~15 min)
sudo bash oracle/revizor/scripts/run_hw_label_variants.sh --records eval/data/revizor_mds_aug_replay.jsonl \
  --classes MDS --stages "plan run" --variants fence_all --out ~/rvzr_mds_aug_replay
# b. fence-free counterfactuals, held-out dirs (reuses the 2026-11-02 minimize output)
sudo bash oracle/revizor/scripts/run_hw_label_variants.sh --stages "plan run" \
  --variants "cf_nofence_ess cf_nofence_non" --min-from ~/rvzr_hwlabel --out ~/rvzr_hwlabel_nofence
# c. same for the training pool (after its own emit)
sudo bash oracle/revizor/scripts/run_hw_label_variants.sh --records "$TP" --stages "plan run" \
  --variants "cf_nofence_ess cf_nofence_non" --min-from ~/rvzr_hwlabel_train --out ~/rvzr_hwlabel_train_nofence
```
Then `hw_label_variants.py emit --out <out> --jsonl eval/data/<name>.jsonl` per run, always an explicit `--jsonl`.

## 9. Shared-config cluster results (`33bd9332`, job 3700549) — T2 is a null

`eval/shared_config_report.md` reports shared_gine at **+0.174 [0.058, 0.256]
vs the opcode bar** (acc excl. V1). That number does not show class signal: the
opcode bar is itself below chance there (0.309), and a constant "everything is
MDS" scores 0.485 on the same 68 rows. shared_gine's 0.482 is that constant.
The report now adds balanced accuracy excl. V1 (chance 1/3) and a majority row.

| scorer (shared heldout, MDS 33 / L1TF 31 / V4 4) | acc excl. V1 | bal. acc excl. V1 |
|---|---|---|
| constant (train majority) | 0.485 | 0.333 |
| opcode LR (within shared) | 0.309 | 0.221 |
| shared_gine, 5 seeds | 0.482 ± 0.028 | **0.342 ± 0.022** |

Per seed, shared_gine collapses onto one class: s1/s7 call MDS 97% of MDS and
L1TF rows, s21/s42 call L1TF, s13 is mixed (MDS 0.33 / L1TF 0.81). V4 0/20.
Which class wins is the seed, not the program. V1 recall 216/220 comes from
the conditional branch, which only V1 has (branch tell 1.00 vs 0.00).

Cross-config arms on all 224 shared gadgets: allhw / allhw2 send MDS to L1TF
(bal. 0.31 / 0.30); b1 sends everything to SPECTRE_V1 or BENIGN (bal. 0.001)
and misses 22% of the leaks as BENIGN (one seed, s42, calls only 3% leaking).
Leak-call rate on this all-violation set: shared_gine / allhw / allhw2 ≈ 1.00.

**Reading.** With the instruction menu and program shape held fixed, a graph
model trained on 33+33 programs per class cannot tell MDS from L1TF on
held-out seeds, matching §3 (every feature bar at or below chance). The
in-distribution 0.97 opcode bar and the per-class-config transfer numbers were
the config. Class identity for MDS vs L1TF is a property of the contract and
actor setup, not of the code. V4 (n = 7) is untestable until the top-up.

**Paper consequence.** Drop any T2 class-transfer claim for MDS/L1TF. State
the shared-config null as a result (it explains the per-class 0.97) and keep
leak/safe (T1, H1/H2 on counterfactuals) as the transfer claim. Do not quote
+0.174.

## Paper consequences (not edited here)
- Say why H0 fails: no x86 BENIGN in synthetic training (§1), trigger-gated labels (§2).
- Reframe class transfer (T2) for MDS/L1TF as ill-posed for code-only detectors (§3); the shared-config GINE confirms it (bal. acc 0.342, chance 0.333, §9). Keep leak/safe (T1) as the claim.
- Keep −9.55pp; add that V2 merges into BHI (§5).
- Fix L1183–1187; qualify the 0/6 until run 8a is in (§7).
