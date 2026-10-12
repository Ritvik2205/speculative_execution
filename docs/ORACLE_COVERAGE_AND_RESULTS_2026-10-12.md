# SpecExec — Oracle/Tooling Coverage and Headline Results

_Status snapshot, 2026-10-12. Every "leak" verdict in this project comes from an
external oracle (symbolic, simulator, or real hardware), never from our own
classifier. Classes: BENIGN, SPECTRE_V1, SPECTRE_V2, SPECTRE_V4, L1TF, MDS,
RETBLEED, INCEPTION, BHI (9 total)._

---

## 1. Tools / emulators used, what they cover, and their status

### A. Worked — in use, producing results

| Tool | What it is | Classes it adjudicates | Result / status |
|---|---|---|---|
| **Spectector** (upstream) | Symbolic speculative-non-interference checker, x86, conditional-branch (PHT) model, container (Docker local / Apptainer cluster) | **SPECTRE_V1, SPECTRE_V4** | Works. Rules on ~82% of generated V1 and ~87% of V4 candidates. Primary x86 symbolic oracle; drives the generation loop. |
| **Spectector-Combined** (Fabian et al. 2022 fork) | Spectector + extra mechanisms selected by `-v` flag (indirect branch, store-forward, return, straight-line) | **SPECTRE_V2** (adjudicable); RETBLEED pending | Works as a **labeler**: **82.2% of V2 candidates adjudicable** (vs ~15% upstream). Required pinning Ciao to the fork's 2022 era (`v1.22.0-m1`) to run at all; our image self-tests the V2 example on build. |
| **Revizor** (bare-metal fuzzer) | Runs random programs on the real CPU (Intel i5-8300H) via a kernel module; flags contract violations | **MDS, L1TF, SPECTRE_V4, SPECTRE_V1 (cond)** | Works. Found MDS (3/184) and L1TF (3/53) violations that persist with SMT off; V4: 15 violations / 5 seeds, killed by the SSBD MSR (confirms store-bypass, not V1). Most expensive oracle (batch, one machine). |
| **InvisiSpec** (2019 gem5 fork) | Cycle-level simulator that *does* leave a misspeculated-load cache footprint | **SPECTRE_V1 only** | Works for V1: recovers 40/40 secret bytes of a tuned PoC (byte-matched). |
| **Speculative emulator** (ours, Unicorn-driven) | Forces the mispredicted path by rolling back to a branch; checks which fence placements mitigate | ARM64 + riscv64 (textbook cases) | **Partial / NOT silicon-validated.** Gives correct textbook answers on two ISAs incl. fence placement, but finds 0 leaks in 806 real hardware-labelled violations (those mask every address into a sandbox, even speculatively). Not claimed as validated. |

### B. Considered but rejected / didn't work / superseded

| Tool | Why not |
|---|---|
| **Stock gem5 v24** (O3 CPU, classic caches) | Rejected as an oracle: squashed loads are discarded at translation, so Flush+Reload sees no speculative footprint. No leak signal at all. |
| **InvisiSpec for SPECTRE_V4 / store bypass** | Does not reproduce store bypass — recovers 0/40 correct bytes under byte-matching. (An earlier "40/40" was a measurement bug: counting confident cache hits instead of matching the recovered byte to the secret.) |
| **Upstream Spectector for V2 / RETBLEED** | Models conditional branches only → ~15% of V2 and ~0.2% of RETBLEED adjudicable. Inadequate; superseded by Spectector-Combined. |
| **Revizor for SPECTRE_V2 / RETBLEED / INCEPTION / BHI** | Tool's contract model has **no indirect-branch and no return clause**; its x86 config even comments out `BASE-CALL`/`BASE-RET` ("complex control flow"). A hardware/tooling limit, **not** fixable by a different CPU. |
| **QEMU / functional emulators** as a leak oracle | Do not model microarchitectural speculation/timing side channels, so they cannot *decide* leakage. (We use our own Unicorn-driven speculative emulator instead, and only as an unvalidated cross-ISA probe.) |
| **Synthetic V2 bootstrapping** (generate → `-v 2` label → retrain) | **Negative result** (see §2.4): once the oracle actually ran, the generator emits V2 leaks at <1% (1 confirmed in 1,200; ~5 per ~2,000 adjudicated). Too low to manufacture a training set — Spectector-Combined is a labeler, not a yield engine. |

### C. Still needed (blocked on hardware we don't have)

| Need | Unlocks | Why no substitute |
|---|---|---|
| **AMD Zen machine** (bare-metal Linux) | **INCEPTION** (AMD-only mechanism), **AMD-variant RETBLEED** | Microarch-specific to AMD's branch predictor / RSB. Our Intel i5 physically can't exhibit it; no emulator models real AMD speculation; Apple Silicon is ARM, not AMD. |
| **Enhanced-IBRS Intel silicon** | **BHI** | On Coffee Lake (the i5), branch-history injection collapses into ordinary branch-target injection — not separately testable. |
| **ARM speculation oracle** | the **ARM64** side of the pipeline | All symbolic oracles here are x86 (Spectector x86-only); the emulator is unvalidated. Candidate path: Asahi Linux on our existing Apple Silicon → bare-metal ARM Linux + PMU — but still needs a measurement harness built (no Revizor ARM backend). |
| **RISC-V hardware with speculation** | the **riscv64** side | riscv64 is generated but has no hardware oracle; realiser executability is ~0.01. |
| **Published-PoC hardware campaign on the i5** (SafeSide V2, ETH RETBLEED) | real **V2 / RETBLEED** positives | Revizor can't be configured for these classes; symbolic Spectector-Combined only labels. Hardware positives must come from running known PoCs with mitigation on/off controls. **(In progress.)** |

### Per-class coverage at a glance

| Class | Verification available today |
|---|---|
| SPECTRE_V1 | Spectector + InvisiSpec + Revizor `cond` ✅ |
| SPECTRE_V4 | Spectector + Revizor `bpas` (SSBD control) ✅ |
| MDS | Revizor `seq-assist` ✅ |
| L1TF | Revizor delayed-exception ✅ |
| SPECTRE_V2 | Spectector-Combined, 82.2% adjudicable (symbolic labeler) ✅ symbolic; hardware in progress |
| RETBLEED | Spectector-Combined return model — pending "does it model the RSB-underflow→BTB fallback?" question; i5 campaign in progress |
| INCEPTION | **none** — needs AMD Zen hardware ❌ |
| BHI | **none** — needs enhanced-IBRS silicon ❌ |

---

## 2. Overarching results we claim — and the evidence behind each

**Thesis.** SpecExec is a `generate → filter → oracle → retrain` pipeline for
discovering small speculative-execution leaks, in which every leak decision is
made by an external oracle, and whose contribution is as much the *rigorous
measurement of what each result does and does not mean* as the pipeline itself.

### 2.1 Detector (GINE over program-dependence graphs)
- **Claim:** 9-class classification at **95.6 ± 0.7%** in-distribution (5 seeds);
  honest **group-holdout ≈ 89.8%** (the trustworthy generalization number).
- **Backed by:** multi-seed runs; `eval/group_holdout_locked`.
- **The real contribution is the caveats, each quantified:** an independent
  assembler/disassembler oracle gate found **4 silent bugs** degrading every
  earlier result (x86 loads mislabelled as stores; size-suffixed mnemonics
  falling into OTHER; AT&T operand direction; ARM `blr`). Four inflation sources
  — test-set screening defect, opcode shortcut, length confound, CPU-specific
  instruction mix — each measured and corrected. Learned node features **lose**
  to hand features under group-holdout (reported as such).

### 2.2 Generation loop (x86, SPECTRE_V1 / V4) — the strongest positive result
- **Claim:** oracle-in-the-loop rejection sampling raises the confirmed-leak
  rate from **~0.50 → 0.97 (V1)** and **~0.15 → 0.6–1.0 (V4)**, producing
  **~1,600 distinct leaking gadgets**; self-supervised pretraining increases
  diversity at a measured yield cost (n=5, powered).
- **Backed by:** Spectector-verified RL loop; diversity/yield analysis.

### 2.3 Hardware grounding + mitigation bars (i5-8300H)
- **Claim:** on **423 real Revizor violations**, a single `lfence` at the
  speculation boundary removes the leak in every stable case across **all four
  tested classes (L1TF, MDS, V1, V4)**; fences far from the boundary do not.
- **Claim (negative + a bar):** **no model we trained beats a non-learned rule**
  on these mitigation labels — the interior-fence rule scores **0.991**. A
  synthetic-trained detector does **not** recognise real hardware leaks.
- **Backed by:** the hardware-labelling protocol and its controls.

### 2.4 SPECTRE_V2 — symbolic coverage unlocked; synthesis a clean negative result
- **Claim (positive):** V2 moves from no working oracle to **82.2% symbolically
  adjudicable** via Spectector-Combined (a step change from ~15% upstream),
  anchor-validated.
- **Claim (negative, new):** the generator emits V2 *leaks* at **<1%**
  (1 confirmed in a 1,200-body run at 83.2% adjudicable; ~5 per ~2,000
  adjudicated). Synthesis cannot supply V2 positives at scale → Spectector-Combined
  is a **labeler** (confirms rare positives + a large SAFE set), and V2/RETBLEED
  positives must come from the **i5 hardware campaign** (in progress).
- **Backed by:** `eval/v2_combined/summary.md`, `gen/rl_v2_bootstrap_samples.jsonl`,
  `gen/data/v2_confirmed_leaks.jsonl`.

### 2.5 Reducing dependence on scarce oracle capacity
- **Pre-oracle gate** (non-learned, from Spectector's own instruction table,
  applied to a candidate's reachable path): removes **18.2%** of unadjudicable
  candidates while losing **1.3%** of leaks — real but modest vs an 80% target,
  because most unadjudicated candidates execute fine and fail *inside* the oracle.
- **Retargeted learned filter** on the frozen classifier embedding: on V4 it
  **beats the length bar** (within-round AUC **0.656 vs 0.587**, prospective
  0.772). V2 filter is wired but currently undefined (only 1 positive).
- **Backed by:** `rank/eval_v4_filter.py` / `rank/v4_filter_eval.md`;
  `rank/eval_v2_filter.py`.

### 2.6 Honesty as a feature (negative results reported as such)
Learned features < hand features; the classifier fails as a generation filter;
stock gem5 and InvisiSpec fail for store bypass; the cross-ISA emulator is
unvalidated on real sandboxed violations; V2 synthesis yield is <1%.

---

## 3. What is backed by results vs. still in progress

**Backed now:** detector accuracy + every caveat; x86 V1/V4 generation yield and
the ~1,600 gadgets; hardware mitigation labels + the non-learned bars; V2
symbolic adjudicability; the V2-synthesis negative result; the pre-oracle gate;
the V4 filter beating the length bar.

**Not yet backed (in progress / TODO):**
- i5 **V2 / RETBLEED hardware positives** (campaign running).
- Learned **ranker wired into the loop**; **minimality** (delta-debugging) results.
- **ARM64 / riscv64** hardware validation (emulator is unvalidated).
- **INCEPTION / BHI** — hardware-blocked (AMD Zen / enhanced-IBRS), scoped out of
  current verification claims rather than left looking unfinished.
