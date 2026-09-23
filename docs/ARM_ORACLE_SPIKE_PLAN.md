# ARM speculation oracle — spike plan

**Why this is the pivotal multi-arch step.** The generator is already
arch-conditioned and (as of db7259c) emits x86_64 / arm64 / riscv64. But every
leak VERIFIER in the repo is x86-only — Spectector (symbolic x86 muasm),
InvisiSpec/gem5 (x86), Revizor (x86 Intel/AMD hardware). So non-x86 output is
generation-only / unverified. **arm64 is the highest-value arch to make
verified:** it's ubiquitous, and we already have the most training data for it
(3434 arm64 gadgets in v54, and the generator emits it today). The only missing
piece for a closed arm discovery loop is an ARM speculation oracle.

This is a time-boxed SPIKE (decide feasibility + pick a path), not a build.

## Goal of the spike
Answer one question with evidence: **which ARM leak oracle can we stand up, at
what cost, to give arm64-generated gadgets a real LEAK/SAFE verdict** — the same
role `SpectectorValidator` plays for x86 in `gen/rl_from_oracle.py`.

## Candidate oracles (investigate in this order)

### A. Symbolic / static — an ARM speculative-non-interference checker
- **Spectector for ARM?** Spectector's model is x86 muasm; check whether an
  AArch64 front-end or a maintained fork exists. If a muasm-style lifter for
  AArch64 exists, this is the lowest-friction path (mirrors our x86 Spectector
  container, no hardware).
- **Other symbolic tools:** `Binsec/Haunted`, `KLEESpectre`, `Pitchfork`
  (angr-based, taint/symbolic speculative execution) — check AArch64 support.
  Pitchfork/angr is arch-flexible (VEX supports ARM), so a Pitchfork-style
  SNI check on AArch64 is plausible.
- **Deliverable of this sub-spike:** does any of these emit a per-gadget
  LEAK/SAFE verdict on an AArch64 assembly gadget, and can it be containerized
  (Apptainer) like our Spectector image? Y/N + rough effort.

### B. Real-hardware — Revizor on ARM
- Revizor's executor is an x86 kernel module (`rvzr_executor`); check for an
  **AArch64 executor port** (upstream branch, paper artifact, or fork). Recent
  Revizor work has targeted ARM — verify current status.
- Needs a real ARM Linux box with root + PMU access (Apple Silicon under Asahi,
  a Raspberry Pi / Ampere / Graviton bare-metal, or an ARM server). We have an
  Apple-Silicon Mac (arm64) — check whether Asahi Linux + PMU makes it viable,
  or whether a cloud ARM bare-metal instance is needed.
- **Deliverable:** is there a usable AArch64 Revizor executor, and a host we can
  run it on with root+PMU? Y/N + which host.

### C. Simulator — gem5 ARM speculative model
- gem5 has an ARM model; but our x86 gem5/InvisiSpec V4 grounding was retracted
  as noise (see [[specdiscover-phase4-oracle]]). Treat as last resort — only if
  A and B both fail — and only with the same "does it show a real speculative
  cache-leave, not noise" validation gate that retired the x86 gem5 path.

## Method (time-box: ~2-3 days)
1. **Literature/artifact scan** (0.5 day): for each candidate, find the tool,
   its ARM/AArch64 support status, and whether an artifact/container exists.
   Record findings in `docs/arm_oracle_findings.md` (primary sources only).
2. **One-gadget end-to-end probe** (1 day) on the most promising candidate:
   take ONE known arm64 gadget (we have 3434; pick a clear SPECTRE_V1 bounds-
   check-bypass), feed it to the tool, and confirm it returns a LEAK verdict;
   feed its fenced/mitigated twin and confirm SAFE. If it can't distinguish
   those two, the tool is not usable as an oracle — stop and try the next.
3. **Interface fit** (0.5 day): sketch how it plugs in as an
   `oracle/validators/arm_*_validator.py` implementing the same
   `validate(gadget) -> ValidationResult` contract as
   `SpectectorValidator` — including containerization (Apptainer for the
   cluster) or which hardware host it must run on.

## Decision / exit criteria
Pick exactly one path and record the ruling in `docs/arm_oracle_findings.md`:
- **GREEN** — a candidate returns correct LEAK/SAFE on the one-gadget probe and
  has a clear integration path. Next: build the validator + wire arm64 into
  `rl_from_oracle.py`'s oracle selection (it already accepts `--arch arm64`),
  then run the arm64 RL loop like x86.
- **AMBER** — a candidate is promising but needs non-trivial work (a fork, a
  new host, a lifter). Scope it as its own project with the estimate from the
  spike.
- **RED** — no viable ARM oracle. Then arm64 stays **generation-only /
  unverified** and the paper says so explicitly; revisit when tooling matures.

## Integration notes (for a GREEN outcome)
- `gen/rl_from_oracle.py` already takes `--arch {x86_64, arm64}`; the missing
  piece is oracle SELECTION by arch (today it always builds a
  `SpectectorValidator`). Add an arch→validator factory so `--arch arm64` picks
  the ARM validator. Small change; do it only once an ARM oracle is GREEN.
- The realizer / splice convention (`gen/realize.py`, `_SPLICE_CONVENTION`) is
  x86-centric; an arm64 realizer + harness is a prerequisite for turning arm64
  generated tokens into something the ARM oracle can run. Track as a companion
  task to the validator.

## Non-goals
- Not building the oracle in this spike — only deciding which one and proving a
  one-gadget verdict.
- Not RISC-V — no mature riscv speculation oracle exists; riscv stays
  generation-only (see the generator status doc's multi-arch roadmap).
