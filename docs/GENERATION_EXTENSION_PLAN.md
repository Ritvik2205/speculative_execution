# Extending the generation model — more attack classes and more ISAs

**Where we are:** the generator conditions on and emits **10 classes**
(BENIGN, SPECTRE_V1/V2/V4, L1TF, MDS, RETBLEED, INCEPTION, BHI, SPECTRE_RSB)
across **3 ISAs** (x86_64, arm64, riscv64). The **verified discovery loop**
(oracle-in-the-loop RL) has only been run for **SPECTRE_V1 / x86_64**.

**The single gating fact:** extension is bounded by the **oracle**, not the
generator. The generator can already emit any (class, ISA); the question is
whether a verifier can return a LEAK/SAFE verdict for that cell.

## Coverage matrix (what verifies what)

Symbolic oracle = Spectector (fast, in-loop). Hardware = Revizor (x86 Intel,
slow, batch only, i5 box). "gen-only" = no oracle exists.

| class | x86 oracle | arm64 oracle | riscv64 oracle |
|---|---|---|---|
| SPECTRE_V1 | **symbolic (full)** | none (spike) | none |
| SPECTRE_V2 / V4 / RETBLEED | **symbolic (partial)** + hardware | none (spike) | none |
| L1TF / MDS / BHI / INCEPTION | **hardware only** | none | none |
| SPECTRE_RSB | hardware (if reproducible) | none | none |

(x86 symbolic adjudicability from `gen/synth/params.py::ADJUDICABLE`; realizer
splice conventions already cover every class in `gen/decode.py::_SPLICE_CONVENTION`.)

---

## Phase 1 — More attack classes on x86, symbolic oracle (cheapest, do first)

The RL loop already takes `--class`; the realizer + splice already cover these.
Just run it for the symbolically-adjudicable classes beyond V1.

- **1.1** Run the RL loop for **SPECTRE_V2, SPECTRE_V4, RETBLEED** (x86_64), each
  multi-seed, with the diversity audit — same machinery as V1. A small sbatch
  array over `--class`.
- **1.2** Report a **per-class verified-leak yield + diversity table**. For the
  "partial" classes, also report the *adjudicable fraction* (samples Spectector
  can rule on vs UNSUPPORTED) — do not hide UNSUPPORTED in the denominator.
- **Deliverable:** x86 per-class yield/diversity for {V1, V2, V4, RETBLEED}.
- **Effort:** low — cluster runs only. **Dependency:** none.
- **Risk:** "partial" classes may yield mostly UNSUPPORTED; if so, report that
  honestly and move them to Phase 2 (hardware).

## Phase 2 — Hardware-only classes on x86 (generate → Revizor batch-label)

L1TF/MDS/BHI/INCEPTION have **no symbolic oracle**, so a tight per-sample RL
loop is infeasible (hardware round-trip too slow). Use a two-stage pipeline
instead of the tight loop.

- **2.1** Generate a large candidate batch per class (the generator already
  emits them).
- **2.2** Cheap pre-filter — the classifier (or a structural check) to drop
  obvious non-gadgets before spending hardware time.
- **2.3** Batch-verify survivors on **Revizor (i5 box)**; keep hardware-confirmed
  leaks. Feed them back as training augmentation (a slow, batched analogue of
  the RL loop's fine-tune step) and/or into the detector's real-HW transfer set.
- **Deliverable:** hardware-verified *generated* gadgets for L1TF/MDS/BHI, and a
  per-class hardware-verified yield.
- **Effort:** medium — needs a `generate → prefilter → Revizor` harness on the i5
  (reuse `run_multiclass_campaign.sh`'s executor path to score externally-
  supplied gadgets, not just Revizor-fuzzed ones).
- **Dependency:** Phase 1 (proves the generate+diversity path per class first).

## Phase 3 — Second VERIFIED ISA: ARM (highest strategic value)

arm64 is already generated and has the most training data (3434 gadgets); the
only missing piece is an oracle.

- **3.1** Run the **ARM oracle spike** (`docs/ARM_ORACLE_SPIKE_PLAN.md`) —
  pick symbolic-AArch64 vs Revizor-ARM via a one-gadget LEAK/SAFE probe.
- **3.2** *(GREEN only)* Add an **arch → validator factory** to
  `gen/rl_from_oracle.py` so `--arch arm64` selects the ARM oracle (it already
  accepts `arm64`; today it always builds `SpectectorValidator`).
- **3.3** Generalize the **realizer + splice** (`gen/realize.py`,
  `_SPLICE_CONVENTION`) to emit arm64 concrete asm + harness — the shared
  prerequisite for any non-x86 verified loop.
- **3.4** Run the RL loop for arm64 × {classes the ARM oracle adjudicates};
  report per-class yield/diversity as in Phase 1.
- **Deliverable:** verified arm64 generation for the ARM-adjudicable classes.
- **Effort:** high — gated on 3.1's outcome; 3.3 is real work.
- **Dependency:** ARM oracle spike GREEN.

## Phase 4 — RISC-V and other generation-only ISAs

No riscv speculation oracle exists.

- **4.1** Generate riscv64 (already wired: `--extra-train` + `ARCHS`); validate
  **structurally + by provenance + classifier as a weak proxy** (never claim
  oracle-verified).
- **4.2** If a riscv oracle later appears (symbolic SNI or hardware), promote
  riscv from generation-only to verified via the same arch→validator factory
  from 3.2.
- **Deliverable:** riscv64 generated gadgets, explicitly labeled unverified.
- **Effort:** low (generation) + open-ended (oracle = research).

---

## Cross-cutting infrastructure (enables Phases 2–4)

1. **Per-(class, ISA) data bootstrap.** Where the generator lacks data for a
   cell, compile that class's portable C to that ISA (the
   `harvest_riscv_from_cvulns.py` / `build_pretrain_corpus_from_c.py` machinery).
   Cheap; the same path that grew the riscv attack corpus.
2. **Per-ISA realizer.** `gen/realize.py` + `_SPLICE_CONVENTION` are x86-centric;
   a per-ISA realizer is the shared prerequisite for Phases 3–4 verification and
   for turning generated tokens into runnable programs.
3. **Coverage-matrix dashboard.** Maintain the (class × ISA) matrix above with,
   per cell: oracle type (symbolic / hardware / none), verified-leak yield,
   diversity, and (for the detector) held-out recall. This is the roadmap's
   single source of truth and the paper's multi-arch/multi-class table.

## Priority / sequencing
1. **Phase 1 now** — cheapest, turns "one class" into a multi-class x86 result.
2. **Phase 3.1 (ARM oracle spike) in parallel** — decides whether verified
   multi-arch is reachable at all; highest strategic value.
3. **Phase 2** — after Phase 1, gives the hardware-only classes real verified
   gadgets (uses the i5).
4. **Phase 4** — opportunistic; riscv generation is free, its oracle is future
   work.

## Honesty rules (carry into every phase)
- A (class, ISA) cell is "**verified**" only if an oracle returned LEAK/SAFE on
  it; otherwise it is "**generation-only**" and labeled so.
- Report the adjudicable fraction for "partial" symbolic classes; never fold
  UNSUPPORTED into the yield denominator silently.
- L1TF/MDS are Intel-microarchitecture-specific: a non-x86 "L1TF" gadget is a
  structural analog, not a claim that the ISA is vulnerable.
