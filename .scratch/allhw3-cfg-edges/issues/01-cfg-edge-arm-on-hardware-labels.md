# 01 — Control-flow-edge arm on the hardware-label benchmark (allhw3_cfg)

Status: needs-triage
Blocked by: i5 step 4a (`eval/data/revizor_hwlabel_trainpool.jsonl`, expected ~2026-11-16)

## Question

Does giving the detector's graph real branch-target edges (`--cfg-control-edges`, step 5 of
`docs/NEXT_STEPS_2026-11-10.md`, commit f4954f53) change how well it separates
hardware-mitigated from hardware-leaking variants, at 5 paired seeds, against the plain
`allhw3` arm that `eval/cluster/submit_allhw3.sh` already trains?

## What exists

- `v54/train_gine_v38.py --cfg-control-edges` and `eval/score_hwlabel_variants.py
  --cfg-control-edges` (branch -> target CONTROL_FLOW edges; needs labels kept in the sequence).
- `oracle/revizor/recover_labels.py batch <jsonl ...>` writes `<name>_labels.jsonl`
  (labels recovered from objdump offsets, verified by re-assembly). Already done for the
  evaluation sets: `revizor_hwlabel_variants_labels.jsonl` (806),
  `revizor_hwlabel_cf_heldout_labels.jsonl`, `revizor_hwlabel_nofence_heldout_labels.jsonl`,
  and the per-class `revizor_<class>_trainpool_labels.jsonl`.
- `oracle/revizor/build_hw_joint.py --hw-labels-only <jsonl> --out <path>` builds the pool and
  raises if a training base gadget is shared with an evaluation set (checked: it does raise on
  the held-out set used as a stand-in).

## What is missing

1. `revizor_hwlabel_trainpool_labels.jsonl`: run `recover_labels.py batch` on the 4a output.
   It needs an assembler and objdump (clang on the Mac works; check the cluster before
   assuming). Commit the `_labels` file.
2. The pool builder adds two kinds of hardware records: the labelled variants (from the file
   passed in) and each class's confirmed positives (`v54/data/v55h_<class>hw_train.jsonl`,
   built by `prep_hw_transfer`). The second kind has no labels kept. Either add a labels-kept
   variant of `prep_hw_transfer` (source: `revizor_<class>_trainpool_labels.jsonl`) or accept
   that only the variant records get target edges and say so. Decide before training.
3. Scripts, additive so the other session's allhw3 arms are untouched:
   `eval/cluster/submit_allhw3_cfg.sh` (5 seeds, `TAG=allhw3_cfg`,
   `TRAIN=v54/data/v55h_allhw3L_train.jsonl`, `EXTRA=--cfg-control-edges`) and a scoring
   job that passes `--cfg-control-edges` and the `_labels` evaluation files, then adds the
   arm to the scoreboard next to `allhw3`.
4. The step-5 code is on `step1/gate-only-harness`; the cluster checkout is on `cluster`.
   Merge or cherry-pick f4954f53 there first.

## Known limits (from step 5)

- Only 28 of 821 path-only pairs get distinct graphs from target edges, so a large effect is
  not expected; the arm is a paired check, not a rescue.
- `flip_branch_polarity` augmentation is wrong when labels are kept (not fixed); keep it off
  for this arm.
- The synthetic base (`v54_train`) cannot be rebuilt with labels locally, so base records carry
  no target edges in either arm.

## Pass / fail

Paired over seeds on the held-out counterfactual and fence-free sets: report the difference
`allhw3_cfg − allhw3` in mitigated-vs-leaking separation with its interval. No difference is a
publishable answer ("branch targets do not help on this benchmark").

## Comments
