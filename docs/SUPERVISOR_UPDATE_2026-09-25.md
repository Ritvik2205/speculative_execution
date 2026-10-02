# SpecExec — supervisor update (2026-09-25)

Honest status of both arms. Every number is multi-seed with 95% CIs, or is
explicitly flagged as tiny-n / single-seed / preliminary. Negative results
included.

---

## Classifier (detector) — publishable, with caveats

**Core model:** GINE spec-builder graph model, **96.14% ± 1.59 accuracy over 5
seeds** (the 97.07 figure was a single top run — the multi-seed number is the
one to cite). New baseline is the ISA-independent `embed, no-handcrafted` config.

**Confirmed:**
- **Opcode shortcut removed.** Trigger-masking gap 27.4pp → **1.1pp** (masked
  macro-F1 0.503 → 0.805): keys on structure, not class-defining opcodes.
- **Hand features were an x86 crutch.** Dropping them improves every axis; arm64
  **+13.4pp** (0.618 → 0.752), locked 0.869, x86 0.910. The DANN arch-adversary
  was tried and **retired** (backfired: arm64 0.752 → 0.456).
- **Real-silicon transfer.** *[Corrected 2026-10-02: retrained on current
  code, 5 seeds, at the full held-out sizes, plus a cross-class check. See
  `eval/cluster_out/real_transfer.md`.]* A detector trained only on synthetic
  data **does not recognise real hardware gadgets**. Held-out recall
  (mean ± 95% CI):

  | class | held-out n (real HW) | synthetic-trained recall |
  |---|---|---|
  | SPECTRE_V4 | 22 | 0.00 ± 0.00 |
  | MDS | 33 | 0.10 ± 0.19 |
  | L1TF | 64 | 0.26 ± 0.28 |
  | SPECTRE_V1 | 54 | 0.69 ± 0.26 |

  Models with real gadgets folded in score 1.00 recall. **That does not show
  transfer.** Each per-class model saw real gadgets of only its own class. A
  cross-class check shows each one labels real gadgets of *every* class as its
  own (e.g. the L1TF model calls 100% of real MDS, V1 and V4 gadgets L1TF). It
  learned "Revizor-generated program → my class". The fenced negatives are
  synthetic (`lfence` at the speculation boundary). Only the fence mechanism is
  hardware-validated (SSBP on: 15 leaks → 0). The valid follow-up is built and
  queued: one joint model trained on all four classes' real gadgets, scored as
  a 4×4 confusion matrix, plus a misplaced-fence control.

**Honest caveats:**
- **Held-out is 22–64 real gadgets per class.** Leakage is ruled out: no
  duplicates, low nearest-neighbour similarity, disjoint generator seeds. It is
  still one CPU (i5-8300H) and one fuzzer (Revizor).
- **The "structural edge alone is 0%" claim is not re-verified.** `real_v4.md`
  still scores pre-09-24 W4 checkpoints, so it is withdrawn until W4 is
  retrained on current code.
- **Cross-ISA is mixed.** RISC-V held-out: **77% accuracy but attack macro-F1 ≈
  15** — benign transfers, attacks don't (corpus ~90% benign). Inference-time
  windowing **hurt** x86↔arm64 (a failed ablation, reported as such).
- **Learned/candidate features give no lift (clean negative):** SPECTRE_V2
  regresses −9.55pp (p=0.029), L1TF lift exactly 0.00; a differentiable-gated
  fusion is *worse* than plain fusion (macro-F1 0.788 vs 0.801 over 10 seeds,
  one seed collapsing).
- **High per-class variance** — L1TF recall 0.59–0.92, V2 0.63–0.94 across seeds;
  only multi-seed numbers are cited.

---

## Generation model — working oracle-verified discovery loop for x86

**Confirmed:**
- **Oracle-in-the-loop RL** (Spectector symbolic oracle, SPECTRE_V1/x86_64):
  validated-leak yield **~0.50 → ~0.97 in one round**, then plateaus. Audited as
  **genuine discovery, not mode collapse** — ~117–135 distinct leaking gadgets
  from ~172 leaks, median pairwise similarity ≈ 0.32.
- **Self-supervised pretraining helps diversity (powered, n=5).** After fixing a
  tokenizer mismatch (embedding transfer 4/460 → **322/460**) and a fine-tune
  learning rate that was overwriting the pretrained weights (3e-3 → **1e-4**),
  pretraining **significantly** reduces mode collapse and improves diversity:
  dominant-template count **28.8 → 3.0**, distinct leaking gadgets **102 → 135**,
  unique-rate **0.67 → 0.97** (all CIs non-overlapping). Significant cost: raw
  leak yield **0.84 → 0.70**. Round-0 yield tied. For a discovery tool (many
  distinct gadgets > repeated copies of one) that is the right trade — the yield
  cost is stated plainly.
- The earlier **"pretraining is null"** reading was a learning-rate artifact,
  now confirmed and corrected — matches the diagnosis raised last meeting.

**Honest caveats:**
- **Verified scope is one class (SPECTRE_V1), one ISA (x86).**
- **Multi-arch: the model generates x86/arm/riscv, but verification is x86-only**
  — every oracle (Spectector/InvisiSpec/Revizor) is x86. arm/riscv output is
  generation-only / unverified. An ARM speculation oracle is the gating
  dependency for a second verified ISA (spike plan drafted).
- **Benign-in-RL** (teaching the generator what *not* to generate, per your
  suggestion) is implemented but single-seed so far (unique-rate 0.955, 154
  distinct gadgets) — promising, not yet powered.

---

## In flight
- **i5 box:** Revizor multiclass fuzzing with fresh seeds — grows the real-HW
  held-out set into a powered per-class benchmark with a false-positive metric.
- **Cluster:** RISC-V is now a generation target; the powered per-class RISC-V
  transfer eval (recall + FP + CIs) is wired and ready.

## Decisions I'd like your steer on
1. **Assembly-direct vs generate-C-then-compile.** We generate assembly directly
   (faithful attacker model, precise gadget control) at the cost of only
   targeting known architectures. Right call for a uarch-gadget discovery tool?
2. **Which ISA to make *verified* next** — ARM is highest value (most data,
   ubiquitous, already generated) but needs an ARM oracle (symbolic AArch64
   checker, or a Revizor ARM port). A direction you'd support?

---
*Backing detail: classifier in `docs/PIPELINE_STATUS_2026-09-15.md`; generation
in `docs/GENERATION_MODEL_2026-09-24.md` + `docs/GENERATOR_ARM_STATUS_2026-09-18.md`;
ARM oracle in `docs/ARM_ORACLE_SPIKE_PLAN.md`.*
