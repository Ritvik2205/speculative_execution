# Plan — improving attack generation, and folding it into one pipeline with the classifier

*2026-09-02. Grounded in this session's generator work: the width fix and
arch-purity mask (`gen/OTHER_BUCKET_TRIAGE.md`, `gen/arch_purity.py`), the oracle
wiring (`gen/decode.py`, `oracle/validators`), and the roadmap
([[specdiscover-roadmap]]: classifier → simulator-in-the-loop discovery).*

---

## 0. Frame: "accuracy" is four layers, not one

The generator's quality is a cascade, and each layer has a very different number.
Naming them separately is the point — most confusion about "why is accuracy low"
comes from conflating them.

| layer | question | current | measured by |
|---|---|---|---|
| L1 per-instruction | does each instruction assemble? | **88.7%** | `check_syntactic_validity.py` (llvm-mc, per-instr) |
| L2 per-sequence | do *all* instructions in the gadget assemble? | **24.2%** | same, ANDed over the sequence |
| L3 gadget compiles+runs | does the whole gadget build & run in the oracle harness? | **~9%** (7/80 unrunnable→runnable inverse) | `gen/decode.py` + `oracle/validators` |
| L4 gadget leaks | does it actually leak under a real oracle? | **~3.75%** (3/80) | Spectector / InvisiSpec / Revizor |

**Two measurement bugs to fix before trusting any of this:**
- **L2 is measured per-instruction, not per-sequence-as-a-unit.** llvm-mc assembles
  each line in isolation, so it tolerates undefined labels and branch targets
  (`jmp .L0`, `call fn_target` pass alone). Whole-sequence assembly is stricter and
  is what L3 actually needs. L2 as reported is therefore optimistic.
- **L3/L4 were once classifier-judged** (circular). Now anchored on the independent
  oracle ([[specdiscover-oracle-generator-validation]]) — keep it that way.

The plan attacks the layers bottom-up: fix L1/L2 bugs (Phase A), then research the
L3→L4 collapse which is the real accuracy problem (Phase B), then close the loop
with the classifier (Phase C).

---

## Phase A — fix the known syntactic bugs (L1/L2)

Raise per-instruction toward ~99% and make per-sequence a real whole-gadget number.
All no-retrain, Realizer/decoder-level.

**A1. Re-triage on the current generator.** The `other`-bucket triage
(`gen/triage_other_failures.py`) predates the arch-purity mask, so its composition
is stale. Re-run *with* `--arch-purity` and cluster by llvm-mc diagnostic. Deliver
the current ranked cause list. *This gates A2–A4 — fix what is actually there now.*

**A2. Upgrade the validity metric to whole-sequence assembly.** Add a mode to
`check_syntactic_validity.py` that assembles the entire realized gadget as one unit
(one llvm-mc call over the joined sequence), not line-by-line. Report L2' (whole-
sequence) alongside the old L2. Expect L2' < 24.2% — this is the honest number and
the one that predicts L3.

**A3. Fix the placeholder/label bugs (the 49.6% `unresolved_placeholder` share).**
`<fn>`→`fn_target` and `<sym>`→`.L0` are single undefined literals. Under whole-
sequence assembly these fail as undefined references and as labels used in data-
operand slots. Fixes, in order of leverage:
  - define referenced labels (emit a `.L0:` target the branches can resolve to), or
    rewrite branch targets to valid in-sequence offsets;
  - constrain `<sym>` to branch-target positions only — a symbol in a load/store
    data operand (`ldr x0,[x1,.L0]`) is never valid; repair or drop at realize time;
  - give `<fn>` a declared local stub target instead of a bare external name.

**A4. Extend operand-role checks (the ~4% `operand_type_violation`).** Reuse the
width-fix machinery (`spec/*.json` realize block): an immediate in a destination
slot, a register where a memory operand is required, etc. Spec-driven, per-arch.

**Phase A exit:** per-instruction ≥ ~97%, whole-sequence L2' materially up, and a
current ranked residual list. Each fix ships with a before/after A/B and a
regression test (as the width fix and arch-purity mask did).

---

## Phase B — research why semantic accuracy is low (the L3→L4 collapse)

Even syntactically valid gadgets almost never leak (L2 24% → L4 3.75%). Fixing
Phase A will not fix this; it is a different problem. This phase is investigation,
not implementation, and its output is a written findings doc + a decision on which
Phase-C lever to build.

**B1. Characterise the collapse.** For a fresh oracle run, cross-tabulate every
gadget's oracle verdict (leak / safe / unrunnable) against its structure (canonical-
op histogram, presence of the class's defining primitive: bounds-check for V1,
indirect branch for V2, RSB manipulation for RSB, flush+reload probe for the
transmit). Question: are "safe" gadgets missing the *trigger* (speculation window),
the *secret→transmit dataflow*, or the *probe*?

**B2. Does class-conditioning produce class STRUCTURE or just local n-grams?**
Conditioning gives a 7.4× lift ([[specdiscover-phase2-generator]]) — but on what?
Measure, per class, whether generated gadgets contain the class's defining
primitive at above-base rate. If not, the generator has learned surface statistics,
not gadget semantics — which explains L4.

**B3. Literature pass** (`mattpocock-skills:research`, primary sources), scoped to
three candidate mechanisms, each judged against our constraints (small corpus, a
real but slow oracle, x86+arm):
  - **Grammar/constrained decoding** — mask the sampler to an assembly grammar +
    dataflow constraints so *only* well-formed, secret-carrying gadgets are emitted
    (raises L2/L3 by construction). Prior art: grammar-constrained LLM decoding,
    program-synthesis-with-types.
  - **Verifier-in-the-loop training** — oracle verdict as reward: rejection
    sampling / best-of-n first (cheap, no RL), then RL fine-tuning (RLHF-style,
    or GFlowNets for *diverse* valid samples rather than mode collapse).
  - **Retrieval / templated backbone + learned fill** — the roadmap already leans on
    `gen/synth/` templates for the oracle; quantify how far a template backbone with
    a learned parameter-filler gets vs the free generator.

**Phase B exit:** a findings doc that (a) names where the L3→L4 gadgets die, (b)
says whether conditioning learned structure, and (c) recommends ONE Phase-C lever
with evidence. No lever is built before this gate.

---

## Phase C — one pipeline: generator + classifier + oracle (hypothesis)

**Hypothesis.** The generator and classifier should not be two disconnected models.
Close them into an **oracle-in-the-loop flywheel** that makes each better where it
is currently weakest:

```
   generator ──proposes──▶ candidate gadgets
        ▲                        │
        │                        ▼
   reward / fine-tune     INDEPENDENT ORACLE  (Spectector / InvisiSpec / Revizor)
        │                  leak? safe? unrunnable?      ← GROUND TRUTH
        │                        │
        │              verified leakers (+ verified benign)
        │                        │
        └──────────────┐         ▼
                        │   augment CLASSIFIER training
                        │   (rare classes, new ISAs)
                        ▼         │
                shared spec-backed encoder ◀── both models read the same graphs
```

**Why it helps — the two directions:**
1. **Oracle-verified gadgets → classifier.** The classifier is starved exactly where
   it fails: SPECTRE_V1/V4/RSB on RISC-V, x86 benign (now partly fixed). A generator
   that produces *oracle-verified* positives manufactures the rare training data no
   corpus contains — the roadmap's whole premise.
2. **Oracle + classifier signal → generator.** The oracle gives a leak/safe reward;
   the classifier's confidence gives a dense, cheap *ranking* signal between oracle
   calls (the oracle is slow). Together they steer the generator toward gadgets that
   are both valid and leaky.

Plus a **shared spec-backed graph encoder** (`v54/gine_classifier_v38.py` encoder,
the Phase-3 ranker already attaches at its `combined` fusion vector): one
representation aligns what the generator produces with what the classifier reads.

**The rigor guardrail — the one thing that must not break.** Ground truth is the
*independent oracle*, never the classifier. The classifier may RANK, FILTER, or
PRIORITISE candidates; it may never LABEL them for its own training. The moment
classifier-labelled gadgets re-enter classifier training, the loop amplifies the
classifier's own biases — the circularity we already removed once
([[specdiscover-oracle-generator-validation]]). Every gadget added to training
carries an oracle verdict, or it does not go in.

**Build order (smallest testable first):**
- **C1 — rejection-sampling MVP, no RL, no new training loop.** Generate N per
  (class, arch); keep only oracle-verified leakers; add them to the classifier's
  train set; retrain; measure lift on the held-out *real* gadgets
  (`spec/data/riscv_real_validation.jsonl`, and the x86/arm real PoCs). This tests
  direction (1) alone and is the cheapest possible version of the hypothesis.
  **Success:** classifier recall on held-out real gadgets rises, with locked-test
  held — the same bar as every retrain (`LINUX_BOX_RUNBOOK.md`).
- **C2 — classifier as ranker between oracle calls.** Use classifier confidence to
  prioritise which candidates to spend oracle time on (the oracle is the bottleneck
  at ~seconds/gadget). Measure verified-leakers-per-oracle-hour vs random order.
- **C3 — generator reward from the oracle** (only if B recommends it): best-of-n /
  rejection-sampling fine-tune, then RL if warranted. Guard against mode collapse
  (diversity metric = the independence gate's bigram divergence, already built).

**Phase C exit:** C1 shows a measurable classifier lift from oracle-verified
generated data, or the hypothesis is recorded as refuted with the number that
refuted it. Either is a result.

---

## Sequencing & risks

- **A → B → C**, but A1 (re-triage) and B1 (characterise the collapse) can run in
  parallel — both are measurement, no shared state.
- **Biggest risk:** Phase A raises L2 but L4 stays ~4% because the collapse is
  semantic, not syntactic. That is *why B precedes any C build* — do not pour
  engineering into a generator loop until B says the generator can, in principle,
  produce leakers at a useful rate.
- **Oracle cost** is the real throughput limit for C; C2 (ranking) exists to
  mitigate it. Revizor (hardware) is slowest — reserve it for final confirmation,
  use Spectector (symbolic, fast, x86) for the loop.
- **x86-only oracle** (Spectector) means the loop is x86-first; arm64/riscv leak
  verification is thinner (InvisiSpec/Revizor scope). State this limit in any claim.

## First actions (this week)

1. A1 — re-run `gen/triage_other_failures.py --arch-purity` (n≥100); commit the
   current ranked cause list.
2. A2 — add whole-sequence assembly mode to `check_syntactic_validity.py`; report L2'.
3. B1 — cross-tab the latest oracle verdicts against gadget structure; start the
   findings doc.
