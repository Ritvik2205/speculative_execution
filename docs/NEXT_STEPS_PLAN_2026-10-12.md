# SpecExec — Next-steps plan (2026-10-12)

Synthesises the 12 Oct supervisor call and the i5-8300H hardware-reproduction
results into an actionable plan. Priority order follows the supervisor's
explicit guidance: **paper draft first, then type/length diversity, then
ranking; hardware runs in parallel and is gated on a machine.** Minimality and
RL are deferred by his instruction.

Owner tags: **[R]** Ritvik, **[P]** Paul (hardware), **[S]** supervisor input.

---

## 0. Status snapshot — what is verified today

| Class | Symbolic (Spectector) | Hardware (i5-8300H) | Net |
|---|---|---|---|
| SPECTRE_V1 | ✅ 82% adjudicable | ✅ replay 3/3 | verified |
| SPECTRE_V4 | ✅ 87% adjudicable | ✅ replay 14/14 (both SSBP masks) | verified |
| L1TF | — (fault model) | ✅ replay 6/6 (SMT-independent) | verified |
| MDS | — | ⚠️ replay **0/6** (fast-path discard) | **unverified** |
| SPECTRE_V2 | ✅ 82.2% adjudicable (Combined `-v 2`) | ⬜ PoC campaign pending | symbolic only |
| RETBLEED | ⚠️ ~0.2% upstream; Combined return model TBD | ⬜ PoC campaign pending (i5 = Coffee Lake, in scope for Intel RETBLEED) | pending |
| INCEPTION | — | ❌ needs AMD Zen | blocked |
| BHI | — | ❌ needs enhanced-IBRS silicon | blocked |

Generator: oracle-in-the-loop yield 0.50→0.97 (V1), 0.15→0.6–1.0 (V4),
~1,600 distinct leaking gadgets. Synthetic V2 yield <1% (negative result —
synthesis is not a V2 data engine).

---

## A. Paper draft — **P0, this week** (supervisor's #1)

Standard-venue shape is now in place (Methodology / Experiments / Results /
Discussion / Conclusion; Development History + Inline Features in an appendix;
bibliography in `references.bib`). Remaining:

- [ ] **[R] Trim 22 pp → ~10 pp.** Biggest levers: tighten the appendix
  (Development History, Inline Features — keep or cut), compress the Oracles
  methodology prose, and fold repeated caveats into single statements. Target
  the ~10 pp the supervisor named; two-column already set.
- [ ] **[R] Reconcile the RL narrative.** The call framed the loop as "SFT only,
  rolled back RL." The real method is *oracle-in-the-loop rejection sampling*
  (0.50→0.97); what was rolled back was *classifier-as-reward* RL (correctly
  dropped as circular). State this explicitly so the paper matches the verbal
  update, and note GRPO-with-oracle-reward as the principled RL path **[S]**.
- [ ] **[R] Fill the compute-environment subsection** with exact resources
  (cluster partition/GPU model, i5-8300H spec, container/toolchain versions).
- [ ] **[R] Share the Overleaf link + ping the group in chat** so they can
  course-correct early (supervisor offered live feedback). Overleaf already set
  up.
- [ ] **[R] Resolve remaining `\todo{}` markers** (ranker + minimality results)
  — either fill from current data or mark explicitly as in-progress.

**Acceptance:** ~10-page two-column draft on Overleaf, link shared, no stale
claims (MDS demoted everywhere, RL framing consistent).

---

## B. Type / length diversity — **P1** (supervisor ranked this *above* minimality)

Supervisor: *"generate attacks of different lengths / execution-graph sizes →
broader diversity; prioritise that over minimising length."* The prompt today is
only `(class, arch)`; add a size/length axis and measure that it widens coverage.

- [ ] **[R] Add a length / graph-size control to generation.** Options: (a)
  condition on a length bucket token, (b) sample with a length-targeted decoding
  constraint, (c) post-hoc bucket + rejection. Start with the cheapest that
  produces distinct buckets (short / medium / long by instruction count and by
  PDG node count).
- [ ] **[R] Diversity metric.** Report within-class diversity vs length bucket
  (e.g. distinct opcode-bag / PDG-shape clusters, pairwise edit distance) and
  show coverage broadens with the new axis vs the `(class, arch)`-only baseline.
- [ ] **[R] Oracle-validate the diverse batches** on the verified x86 classes
  (V1, V4; L1TF via hardware where possible) — confirm diversity does not cost
  leak yield.
- [ ] **[R] Figure + table** for the Results section (diversity vs length;
  yield held constant).

**Acceptance:** a measured plot showing the length axis increases within-class
diversity at ~constant confirmed-leak rate; written into Results.

**Note (deferred by supervisor):** minimality / shortest-attack is explicitly
*below* this. Keep the Revizor-minimize stub; do not invest now.

---

## C. Ranking as success-prediction — **P2, stretch / second stage**

Supervisor's framing: the ranker should let the generator *know in advance which
candidates will leak on the given spec*, so only the promising ones hit the
expensive oracle. We already have the core: `rank/eval_v4_filter.py` — a head on
the frozen classifier embedding that beats the length bar (within-round AUC
0.656 vs 0.587, prospective 0.772).

- [ ] **[R] Reframe the existing frozen-embedding head as the ranker** in the
  paper (it is already a success-predictor, not the classifier output).
- [ ] **[R] Add a pairwise / order-aware variant.** Supervisor's caveat: a
  decision/ranking model is not inherently order-aware over choices — pose it as
  pairwise preference (which of two candidates is more likely to leak) rather
  than pointwise probability. Compare pairwise vs the current pointwise head.
- [ ] **[R] Wire the ranker into the loop** (currently measured offline only):
  rank candidates, send the top-k to the oracle, measure leaks-per-oracle-call
  uplift vs random / length ordering.
- [ ] **[S] Optional help offered** on the decision-model formulation — take it
  up if the pairwise framing stalls.
- [ ] Keep as the **basis for a later GRPO stage** (ranker reward signal).

**Acceptance:** leaks-per-oracle-call improves over the length bar when the
ranker is in the loop; pairwise variant reported alongside pointwise.

---

## D. Hardware campaign — **parallel, gated on a machine [P]**

Runs alongside A–C whenever a box is available. The i5 is the only silicon we
have; AMD Zen is the critical missing piece.

- [ ] **[P/S] Laptop / spare desktop for AMD Zen.** Supervisor will remind Paul
  on the next call. Unlocks **INCEPTION** and **AMD-variant RETBLEED** — no
  emulator or Apple-Silicon substitute exists.
- [ ] **[R] Published-PoC V2 campaign on the i5** (SafeSide V2): mitigation
  OFF vs ON (IBRS/retpoline), byte-match recovery. We ship **no exploit** — run
  the published PoC only. Gives real V2 positives synthesis cannot.
- [ ] **[R] Published-PoC RETBLEED on the i5** (ETH RETBLEED, **Intel variant** —
  i5-8300H Coffee Lake is in scope): mitigation OFF/ON, byte-match. No AMD needed
  for the Intel variant.
- [ ] **[R] Fresh MDS re-fuzz** (new seeds, `rvzr fuzz` MDS config) to resolve
  the 0/6: decide stale-recording vs channel-closed-on-this-box. Report either
  way; keep MDS demoted until resolved.
- [ ] **[R] Fenced-variant replay** of the L1TF/V1/V4 dirs (reuse recorded
  inputs): baseline reproduces, fenced should go to 0 → turns the mitigation
  labels into a *silicon-confirmed* result cheaply.
- [ ] **[R] Validate the externally-sourced dataset gadgets** on hardware once a
  box supports the class — supervisor wants this to catch mislabels in data we
  could not validate.

**Acceptance:** ≥1 real V2 and ≥1 real RETBLEED hardware positive (byte-matched,
mitigation-controlled); MDS 0/6 resolved; fenced replay confirms the mitigation
bar on silicon.

---

## E. Deferred (explicit supervisor guidance)

- **Minimality** — below diversity; keep the stub, do not invest now.
- **RL (DPO/GRPO)** — only as a *second stage* after the ranker; if revisited,
  use **GRPO with the oracle verdict as reward**, never the classifier
  (classifier-reward RL already hurt and was rolled back).
- **Patch/mitigation-state conditioning** of the generator prompt — supervisor
  noted the prompt can't currently tell if an attack is patched; "leave it for
  now."

---

## Sequencing

```
Week 1:  A (paper trim + Overleaf share)            ── draft out for feedback
         └─ B started in parallel (diversity sweep runs while drafting)
Week 2:  B finished + written into Results
         C (ranker reframe + pairwise + wire-in)
Parallel: D whenever a box frees up (i5 now; AMD when Paul delivers)
Later:   E (GRPO second stage) once C lands
```

Supervisor's bar for "good enough to qualify": 97% generator leak-rate holds,
generations are **diverse**, and **coverage spans many classes**. A and B are the
critical path to that bar; D widens class coverage; C strengthens evaluation.

## Open asks (next call)

1. **[P]** AMD Zen box — status of the spare laptop/desktop.
2. **[S]** Confirm scope to run published V2/RETBLEED PoCs on the i5
   (mitigation-controlled, byte-matched, no exploit shipped).
3. **[S]** Agree to scope INCEPTION + BHI *out* of verification claims
   (hardware-blocked), rather than leave them looking unfinished.
4. **[S]** MDS: fresh re-fuzz before finalising, or report as unverified and
   move on?
