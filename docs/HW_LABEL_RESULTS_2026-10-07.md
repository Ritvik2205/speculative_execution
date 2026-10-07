# Hardware labels for fenced variants: results and recalibration (2026-10-07)

Source: `oracle/revizor/results/hw_label_261007/` (`plan.jsonl`, `runs.jsonl` = 3,024
`rvzr reproduce` calls, `summary.md`). i5-8300H, SMT on, kernel mitigations as in
`env.json`. 3 reps per variant; Revizor's speculation/observation filters OFF.
Rule: vulnerable = violation in 3/3, mitigated = 0/3, original must reproduce 3/3.
Records: `eval/data/revizor_hwlabel_variants.jsonl` (806, emitted on the Mac with clang + llvm-objdump).

## Results

| class | dirs (stable / total) | twin | fence_all | shifted | after_load | entry | tail | v1_fallthrough |
|---|---|---|---|---|---|---|---|---|
| L1TF | 63 / 64 | **0/63 vuln** | 0/63 | — | 0/63 | 63/63 vuln | 62/63 (1 flaky) | — |
| MDS | 33 / 33 | **0/33** | 0/33 | — | 0/33 | 32/33 | 32/33 | — |
| SPECTRE_V1 | 45 / 54 | **0/41** | 0/45 | **0/41** | — | 31/41 (3 mit, 7 flaky) | 31/41 (10 flaky) | 32/41 (9 flaky) |
| SPECTRE_V4 | 21 / 22 | **0/21** | 0/21 | **0/21** | — | 17/21 (2 mit, 2 flaky) | 21/21 | — |

Cells are "vulnerable / stable dirs"; 0 means the fence mitigated in every stable dir.

1. **All four twins mitigate on hardware.** The class-boundary lfence kills the leak in every
   stable dir: L1TF and MDS (fence before each load), V1 (fence at the start of the taken block,
   the 2026-10-03 placement), and V4 (fence after each store). For V4 this is the first evidence
   that an lfence, not just the SSBD MSR, removes these leaks.
2. **Fences far from the leak do not mitigate.** Entry and tail stay vulnerable in 289/316
   stable cases, so the misplaced-fence controls were correctly labelled as attacks.
3. **The old V1 twin was wrong.** A fence on the jcc's exit path (`v1_fallthrough`) leaves the
   leak in 32/32 non-flaky dirs. Every V1 "twin → BENIGN" number before 2026-10-03 was scored
   against a wrong label.
4. **The `shifted` controls were labelled wrong.** An lfence just *before* the jcc (V1) or
   before each store (V4) mitigates (41/41, 21/21). allhw2 was trained to call these attacks,
   and its shift rows (attack 1.00) are 100% wrong against hardware. allhw, which never saw
   them, called them BENIGN (0.996 / 1.000), and hardware agrees.
   Likely mechanism (a hypothesis we did not test): in Revizor's programs the jcc condition and
   the store address are both computed from loads. A fence just before the jcc or store waits
   for those loads, so the branch resolves, or the store address is known, before anything can
   speculate past it.
5. **A fence right after each load also mitigates MDS and L1TF** (33/33, 63/63).
6. **Noise.** 9/54 V1 originals do not reproduce 3/3. V1 misplaced variants are flaky in 7–10
   of 41 dirs. MDS, L1TF and V4 are clean.

## Is "the fence is next to the leaking op" enough? (non-learned bar)

Rule: BENIGN iff an lfence sits directly next to the class's boundary op (jcc for V1, any
memory op otherwise). It matches **702/806** labels (87%). The 104 mismatches:
- 41 are the V1 twins (the fence sits after the jmp, not next to the jcc). This is a limit
  of how narrowly the rule is written, not of adjacency itself.
- **53 are tail fences directly after the last load that still leak** (L1TF 29, MDS 15,
  V4 9). An adjacent fence that does not mitigate is the real evidence that position relative
  to the *leaking* op matters, not just "fence next to a load".
- A handful are entry exceptions.

This rule is now the bar a model must beat on these labels, alongside the scaled opcode-bag
LR (0.97 for class identity). Section 4 of `eval/cluster_out/real_transfer_confusion.md` reports
it per cell (added to `eval/cluster/aggregate_results.py`).

## What this changes

- **Can now claim (data, not model):** on the i5, a single lfence at the speculation
  boundary removes all four leak classes in Revizor's programs, and fences far from the
  boundary do not.
- **Withdraw:** allhw2's shift-control result, and any V1 twin FP or "twin → BENIGN"
  number built on pre-10-03 twins.
- **Code:** `build_hw_joint.py` no longer adds `shifted` variants by default (`--with-shifted`
  is diagnostic and mislabelled).

## Recalibrated next steps (in order)

1. **Cluster, no retrain:** run the aggregate (`sbatch eval/cluster/aggregate.sbatch` or the
   usual aggregate job) to score allhw/allhw2 on the hardware labels (section 4). Expected:
   allhw2 wrong on shifted, allhw wrong on entry/tail. This gives each model a scorecard
   against hardware truth instead of synthetic labels.
2. **i5: label the training pool** (`--records eval/data/revizor_{spectre_v1,spectre_v4,mds,l1tf}_real.jsonl`,
   ~250 more dirs). Then allhw3 trains only on hardware labels: no synthetic twins, no
   synthetic misfenced variants.
3. **i5: adjacency-breaking counterfactuals.** Where hardware disagrees with "fence next to a
   memory op or branch". Use `rvzr minimize` to find which instructions actually leak, then
   place a fence (a) next to a *non-leaking* load or store, (b) on the wrong path of the jcc
   in its own block (`jcc; .bb_new: lfence; jmp`), (c) after the bypassing load for V4.
   Without these, a model can match hardware with an adjacency rule and still not show it
   understands the structure.
4. **allhw3 claim gate.** Group-split held-out with hardware labels. Report against both bars
   (opcode-bag LR, adjacency rule), with emphasis on the counterexample cells (tail-after-load,
   adjacency-breaking set). Run `audit_hw_split.py` first.
5. **Generator tie-in (unchanged plan, new oracle):** `hw_label_variants.py` is effectively a
   batch Revizor oracle. Have the generator emit Revizor-format programs for MDS and L1TF and
   label them by reproduce or fuzz, in the same way Spectector labels V1 and V4.
6. **Still open:** the class and Revizor config remain entangled (a shared-instruction-set
   campaign is needed), the ranker retarget on V4, minimality, and an arm64 oracle.
