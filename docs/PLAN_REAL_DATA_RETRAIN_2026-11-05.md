# Plan: real-data retrain (fix #1) — recipe

Scopes the top evidence-backed fix from `RESEARCH_CLOSING_GAPS_2026-11-05.md`:
train the detector on real oracle-labelled gadgets, with the data hygiene the
swarm (`WEAKNESS_ROOTCAUSE_SWARM_2026-11-05.md`) and the literature require, so
the trigger-opcode shortcut cannot re-form. Root cause being fixed: synthetic
labels = trigger-opcode/config-menu (verw/clflush/rdtsc) absent from real
gadgets → transfer collapses to V1; `allhw` with real data already → 97.8%
(our number), matching Chakraborty TSE'21 retrain-on-real +128% recall.

## Coordinate with allhw3 (parallel session — do NOT duplicate)
`allhw3` (hardware-labels-only training; `v54/data/v55h_allhw3_train.jsonl`,
`eval/cluster/train.sbatch TAG=allhw3`, scored by
`eval/score_hwlabel_variants_multiseed.sbatch`) is in flight. That IS the
real-data retrain for the mitigation-label task. This plan adds the two things
allhw3 does not fix and that the swarm proved are confounds:
1. the **benign counterfactual rebuild** (allhw/allhw3 benign = attack+lfence),
2. the **acceptance gates** (must beat the opcode bar AND the lfence rule),
and keeps allhw3 as the model it extends. Hand this to whoever owns allhw3;
it is a data-recipe + eval-protocol change, not a second training track.

## Data
- **Real attack (725, 4 classes):** `eval/data/revizor_{spectre_v1,mds,l1tf,spectre_v4}_real.jsonl`
  (220/160/229/116). No real V2/RETBLEED/INCEPTION/BHI/BENIGN — those stay
  synthetic-only and are reported separately (do not claim real transfer for them).
- **Trainpool (i5, 2026-11-02):** `eval/data/revizor_*_trainpool.jsonl` — the
  allhw3 source pool.
- **Benign — REBUILD (the key new work).** Current `eval/data/revizor_*_benign.jsonl`
  are mitigated twins = attack **+ lfence**, which makes "lfence⇒benign" an
  F1-0.99 rule (swarm H6; Arp'22 P6). Replace with counterfactually-balanced
  benign (Kaushik ICLR'20 — balanced counterfactuals remove single-cue
  dependence):
  - (i) **mitigated-without-lfence**: break the leak by a non-fence edit the
    oracle confirms SAFE — reorder so the transmit no longer depends on the
    speculative load, or remove the secret→transmit dataflow edge — via
    `oracle/revizor/synth_v4_benign.py` extended, relabelled by Spectector-SNI
    (oracle already wired).
  - (ii) **attack-with-non-covering-lfence**: keep the leak, add an lfence that
    does NOT dominate the transmit (an interior fence the violation survives) —
    these are already the hardware `cf_fencepass` variants
    (`eval/data/revizor_hwlabel_cf_heldout.jsonl`), labelled LEAK on silicon.
  Together (i)+(ii) decorrelate lfence-presence from the benign label, so the
  F1-0.99 fence rule dies by construction.
- **Shared-config (confound control):** prefer `eval/data/revizor_*_shared.jsonl`
  (one instruction menu across classes; opcode bar there is 0.41 vs 0.97
  per-config) for the class-separation claim, so class⟂opcode-menu.

## Split (trustworthy protocol — already in repo)
Group-holdout by base violation `group` (`eval/splits.py`, `eval/group_holdout_full.py`):
no base gadget on both sides (leak arms / augmentations share a `group`). NOT a
random record split — the random split leaks augmentation groups. Report the
random→group accuracy drop as the leakage measure.

## Confound controls (must all be on)
1. **Benign counterfactual rebuild** (above) — else the lfence rule wins.
2. **Always report the bag-of-opcodes baseline** next to the model (Arp'22 P1);
   on shared-config it is 0.41, so a model clearing it is real signal.
3. **Always report the 1-line lfence-rule and interior-fence-rule bars**; the
   model must beat them, not tie them.
4. **Length control for cross-ISA** (riscv): SizeShiftReg (Buffelli NeurIPS'22,
   training-data-only coarsening regularizer; +up to 30% on size-shift splits)
   OR length-stratified eval; do NOT use an ISA embedding (size-shift, not ISA).

## Acceptance gates (what "it worked" means — multi-seed, never single)
- Group-held-out real per-class recall ≥ the current `allhw` numbers AND the
  model **beats both** the opcode bar and the lfence/interior-fence rule on the
  SAME held-out set (if it only ties them, the result is the confound, not the
  model).
- 5-seed minimum, report mean±sd; use TOST (`eval/equivalence_tost`) for any
  equivalence/non-inferiority claim (single-seed parity is a documented trap).
- The structure claim is made ONLY where opcodes fail: **L1TF-vs-V4** (swarm H3:
  opcode-only L1TF recall 0.56, 85/229 L1TF→V4). Show GINE > opcode bar on that
  pair specifically, or do not claim structure.

## Steps
1. **Rebuild benign** (i)+(ii) → `eval/data/revizor_*_benign_cf.jsonl`,
   Spectector-SNI relabelled. Local/CPU; the oracle is wired.
2. **Assemble the pool**: real attack (725) + counterfactual benign, group-tagged.
   (If extending allhw3: swap its benign for the CF benign; keep its attack pool.)
3. **Train** on the cluster, 5 seeds: `eval/cluster/train.sbatch` with
   `TAG=allhw_cf`, `TRAIN=<cf pool>` (mirrors the allhw3 invocation).
4. **Score** group-held-out real + the three non-learned bars + L1TF-vs-V4, all
   multi-seed; fold only numbers that clear the gates.
5. (riscv, separate) add SizeShiftReg to the trainer + real idiomatic riscv for
   the n≈2 coverage holes; re-measure length-stratified.

## Explicitly NOT doing
- Not chasing in-distribution F1 (FastSpec trap).
- Not DANN as a first resort (the domain correlates with the label here —
  secondary at best).
- Not out-modelling the lfence rule — fixing the data instead.
- Not touching paper/, eval/mechanism/, b1_mech_* (parallel session).

## Source of each choice
Retrain-on-real: Chakraborty TSE'21 (+128% recall) + our allhw 97.8%.
Counterfactual benign: Kaushik ICLR'20 + Arp'22 P6. Opcode/shared-config bar:
Arp'22 P1 + our 0.97→0.41. SizeShiftReg: Buffelli NeurIPS'22. L1TF-vs-V4 as the
structure locus: swarm H3 + Kasper access/transmit dataflow. All in
`RESEARCH_CLOSING_GAPS_2026-11-05.md`.
