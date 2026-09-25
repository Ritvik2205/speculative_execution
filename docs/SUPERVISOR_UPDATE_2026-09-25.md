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
- **Real-silicon transfer (headline arc).** Synthetically-trained model detects
  real hardware gadgets at **0%** for the microarchitectural classes; the
  hand-designed structural edge alone is also **0%**. Folding real gadgets into
  training: held-out recall **0% → 100%** (SPECTRE_V4), false-positive rate on
  fenced/mitigated V4 **100% → 16%**. Across four classes: V4 0→100%, MDS
  0→0.80, L1TF 0.70→1.00, SPECTRE_V1 0.40→1.00.

**Honest caveats:**
- **Real-HW held-out is tiny (1–5 gadgets/class)** — directionally consistent
  across four classes, not per-class powered. Being scaled now (Revizor
  fresh-seed campaign on the i5 box).
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
