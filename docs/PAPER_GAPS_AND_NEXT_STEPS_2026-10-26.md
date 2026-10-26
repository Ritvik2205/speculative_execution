# SpecExec — Paper Gaps & Next Steps (2026-10-26)

Full critical pass over `paper/specexec_methodology.tex` and the expansion
plans, written to track every gap a reviewer could call thin and what closes
it. Ranked by reviewer-risk. Supersedes the gaps portion of
`docs/PIPELINE_GAPS_AND_EXPANSION_2026-10-15.md` where they overlap (noted
inline).

Status legend:
- **[FIXED]** done in this pass (commit on branch `cluster`).
- **[LOCAL]** closeable with no hardware/cluster — analysis or writing only.
- **[CLUSTER]** needs a cluster run (Spectector `.sif`, GINE training).
- **[HARDWARE]** needs silicon we have (i5-8300H) or do not have (Zen, eIBRS).

---

## Tier 1 — Breadth (the sharpest reviewer target)

The advertised scope (3 ISAs × 9 classes) vs what is actually *verified*:

1. **Verified generation = 2 classes (V1, V4), 1 ISA (x86).**
   `sec:genyield`. GENERATION_EXTENSION_PLAN Phase 1 promised a
   `{V1, V2, V4, RETBLEED}` yield table; only V4 is new. V2 synthesis is a
   published **negative** (<1% yield; "generator, not oracle, is the V2
   bottleneck", `sec` ~635). RETBLEED never entered a loop.
   - Closes with: **[CLUSTER]** Spectector-Combined build → V2 adjudicability +
     yield (largest single coverage gain, build-time only); then a V2/RETBLEED
     data path that is *not* pure synthesis (hardware campaign).

2. **Zero verified leaks off x86, ever.** arm64 = assembles 0.95 / executes
   0.84 (runnability only, no leak oracle); riscv64 executes **0.02** (dead;
   realiser emits faulting loads). `tab:isavalid`.
   - Closes with: **[HARDWARE]** ARM oracle spike (`docs/ARM_ORACLE_SPIKE_PLAN.md`,
     unexecuted) → first verified arm64 loop; **[LOCAL]** riscv realiser
     semantics fix (sandbox addresses like x86/ARM) to lift executes off 0.02.

3. **Leak-conditioning steering is single-class** (V4 0.80 vs 0.04; V1
   template-confounded — both arms leak ≈0.95 by construction). `sec:hwlabel`.
   - **[FIXED]** contribution bullet now states the single-class scope and why.
   - Closes fully with: **[CLUSTER]** a class whose template routes the leak
     through the body besides V4.

4. **4 of 9 classes (V2, RETBLEED, INCEPTION, BHI) have no leak oracle on any
   ISA** → half the class axis is detection-only. Tooling limit (Revizor
   contract clauses + Spectector PHT-only). `COVERAGE_AND_NEXT_STEPS §2.1`.
   - Closes with: **[CLUSTER]** Spectector-Combined (V2); **[HARDWARE]** Zen for
     INCEPTION + AMD-RETBLEED, eIBRS part for BHI (all without an existing
     automated oracle — CPU alone is not enough for BHI).

**Pre-empt framing (abstract/intro):** "generation verifies leaks for 2 of 9
classes on 1 of 3 ISAs; the sole steering result is single-class." Stated
plainly it is a scoping choice, not a hole a reviewer finds.

---

## Tier 2 — Load-bearing negative results (honest, but read as thin)

5. **Learned features lose to hand features** (−1.66pp acc, −9.55pp V2 recall,
   L1TF lift 0.00; `sec:learned`). "Spec beats hand" already withdrawn. The
   learned-instruction-feature contribution nets negative — value reduced to
   portability, not accuracy.
   - Not a bug to fix; frame the contribution as the *measurement* (what the
     spec buys is ISA-portability with no accuracy cost), not a lift claim.

6. **Detector has no mitigation awareness** (flip 0.20±0.14, below fence-count
   floor 0.351, strict 0/154) **and a 1-line non-learned rule (interior-fence,
   0.991) beats every learned model** (`tab:hwscore`). Reviewer: "why the ML
   model?"
   - Closes with: **[CLUSTER/HARDWARE]** `allhw3` trained on hardware-labels-only
     *including the mid-sequence counterexamples*, scored against the opcode,
     adjacency and interior-fence bars. This is the one result that can rebut
     the 1-line rule. **Blocked on** hardware-labelling the counterexamples +
     training pool (in progress on the i5).

7. **Synthetic→real transfer fails** (`sec:hw-transfer`): synthetic-trained
   calls everything V1; per-class real models only "learn style" (recall
   withdrawn); joint real model ≈ scaled-opcode bar (0.97). Class/config
   confounded.
   - Closes with: **[HARDWARE]** a shared-instruction-set Revizor campaign to
     break the class–config confound.

---

## Tier 3 — Empty / unverified cells (results that do not exist yet)

8. **Minimality `tab:min` entirely `\tbd`.** The only generated-leak result is
   self-defeating (all 80 minimise to the 1 scaffold instruction = template,
   not learned code). `sec:min`.
   - **NOT a local cheap win** (checked 2026-10-26): local `rvzr_runs/*/
     minimize.yaml` are V4 *config* files, not per-violation essential-
     instruction results, and only V4 exists locally. Needs the Revizor
     instruction-removal pass collected across L1TF/MDS/V1/V4.
   - Closes with: **[HARDWARE]** run + collect the 4-class minimize pass, parse
     body-vs-essential medians.

9. **`allhw3` row `\tbd`** — see item 6. The mitigation-awareness thesis rests
   on this empty cell.

10. **MDS unverified** (0/6 hardware replay, ⚠️) — 1 of only 4 HW-verified
    classes. `abstract` already says "leave MDS unconfirmed."
    - Closes with: **[HARDWARE]** MDS re-fuzz / replay on the i5 to settle it.

11. **Speculative emulator: whole oracle stage, 0/806 labels, UNVALIDATED**
    (`sec:specemu`). Textbook-correct only; Revizor masks every address even
    speculatively.
    - Closes with: **[LOCAL/HARDWARE]** re-pose as a contract check (many inputs
      grouped by model-contract trace) — the paper's Next Steps item 3; gates
      any emulator-based mechanism extension.

12. **Diversity vs minimality tension:** 1600 "distinct" gadgets that all leak
    via the same scaffold instruction. Reviewer: "discovery or filler?"
    - **[LOCAL]** address head-on in `sec:min`/`sec:genyield`: the distinct
      bodies are speculation-window fillers; the informative minimality
      question is the smallest *complete* program (already flagged, but the
      tension should be named where the diversity number is quoted).

---

## Tier 4 — Planned, not done

13. **Pairwise / order-aware ranker** the supervisor asked for — only pointwise
    done (`NEXT_STEPS_PLAN_2026-10-12 C`). The in-loop pointwise gate *is* now
    in the paper (`tab:gateloop`), closing old T6.
    - **[LOCAL/CLUSTER]** retarget the frozen-embedding head to a pairwise loss.

14. **Gen Phase 2** (generate→Revizor batch-label L1TF/MDS/BHI) and **Phase 3**
    (ARM oracle spike → verified arm64 loop) — planned, no result.

15. **Spectector-Combined image unbuilt** → V2 adjudicability is in-principle
    only. Paper Next Steps item 1; largest coverage gain for build-time.

16. **Hardware-blocked:** INCEPTION (Zen), BHI (eIBRS); V2/RETBLEED PoC
    campaign blocked on user-supplied PoC binaries.

---

## Tier 5 — Wording / stale (cheap; do before submission)

17. **[FIXED] "RL" misnomer.** The loop is rejection-sampled fine-tuning, not
    reinforcement learning (no policy gradient / reward backprop; `sec:genyield`
    already says "rejection-sampled fine-tuning"). Renamed all 9 method-name
    uses to "rejection-sampling / the loop"; left the two real filenames
    (`gen/rl_lencond.md`, `gen/rl_multiclass.md`).

18. **[FIXED] Breadth overclaim in stages table** ("three ISAs generated") →
    now "leaks oracle-verified on x86 only (V1/V4); ARM64 runnability-only;
    riscv64 barely executes (0.02)."

19. **[FIXED] Leak-conditioning contribution bullet** now names the single-class
    scope.

20. **[LOCAL] Open `\todo{}` still in the paper** (5): stages-table
    ranker+minimality (~171), shared-config Revizor number (~1198), `allhw3`
    vs interior-fence (~1245), riscv64 executes rate (~1359), fenced-variant
    counterexample HW-labels (~1617). Each maps to a Tier-1/2/3 item above.

21. **[LOCAL] Stale plan doc:** `PIPELINE_GAPS_AND_EXPANSION_2026-10-15.md`
    stage table says "Filter/ranker: not in loop" — it now IS (`tab:gateloop`).
    Minimality row still accurate (empty).

---

## Supersessions (for the record)

- Phase-3 ranker design (`docs/superpowers/specs/2026-07-22-phase3-ranker-design.md`)
  targeted a gem5 SNR severity signal → superseded: ranker retargeted to binary
  leak-vs-safe on the frozen embedding; `trace_length ≠ severity`.
- Several dated `NEXT_STEPS_*` (09-09/10/11) → superseded by the 10-15 gaps map,
  now by this doc for the paper-facing view.

---

## Recommended order of attack (value per effort)

1. **[CLUSTER] Spectector-Combined build** — unlocks V2 adjudicability (Tier 1.1,
   1.4; items 4, 15). Biggest coverage gain, build-time only.
2. **[HARDWARE] allhw3 + counterexample HW-labels** — fills the one cell the
   mitigation thesis depends on and the only shot at beating the 1-line rule
   (items 6, 9).
3. **[HARDWARE] 4-class minimize pass** — kills the vacuous-minimality read
   (item 8).
4. **[HARDWARE] MDS re-fuzz** — settles the ⚠️ (item 10).
5. **[LOCAL] riscv realiser semantics** — lifts executes off 0.02 (item 2).
6. **[HARDWARE] shared-config Revizor campaign** — breaks the class/config
   confound (item 7).
