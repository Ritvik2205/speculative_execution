# SpecExec — project status & gap analysis (2026-09-10)

Consolidates every result from the hardening effort (branch `may2026`, 48 commits from `1d134cf`). Numbers are the committed result files; all detector numbers are macro-F1 mean±95%CI unless noted.

---

## Where we stand — confirmed results

### 1. The opcode shortcut is gone (W2) — STRONG
`eval/w2/robustness_w2.md`. Trigger-masked augmentation:
- shortcut gap (locked − trigger-masked) **27.4pp → 1.1pp**; trigger-masked macro-F1 **0.503 → 0.805** (+30.2pp); locked +4pp; masked ECE 0.102 → 0.027.
- L1TF/MDS/V4 recall under masking recovered from near-0 to 66–99%.
The detector now keys on structure, not class-defining opcodes. This is the process foundation everything else is measured against.

### 2. New baseline: ISA-independent `embed, NO handcrafted` (W3, 5-seed) — STRONG
`eval/cluster_out/W3_grid.md`, adopted in `eval/robustness_baseline_nohand.md`.

| axis | old (embed+hand) | NEW (embed, no-hand) | Δ |
|---|---|---|---|
| locked | 0.813 | **0.869** | +5.6pp |
| arm64 | 0.618 | **0.752** | **+13.4pp** |
| x86 | 0.897 | **0.910** | +1.3pp |
| trigger-masked | 0.803 | **0.859** | +5.6pp |

Dropping the 256-dim hand-feature branch improves every axis and closes most of the arm64 gap — the hand features were an x86-biased crutch. Directly validates the "learned / ISA-independent" thesis. **DANN arch-adversary retired** (backfired: arm64 0.752→0.456).

### 3. V4 does not generalize to real silicon — but data fixes it (P2 → P3) — the headline arc
- Synthetic V4 looks solved in-distribution: **99.5%** locked recall.
- On 16 hardware-confirmed Revizor gadgets: **0%** (both with and without the store-forwarding edge) — `eval/cluster_out/real_v4.md` path / P2. In-distribution overfitting.
- Folding 11 real hardware gadgets into training: held-out real-V4 recall **0% → 100%** (5-seed, seed-disjoint) — `eval/cluster_out/real_v4_p3.md`.
Conclusion: V4 was unlearnable for lack of a real training signal, not structural invisibility. The store-forwarding edge alone can't rescue it.

### 4. Real hardware V4/SSB ground truth exists (merged from `revizor-v4-ssb-260907`)
i5-8300H: 15 violations un-mitigated → 0 with SSBP on → 16 SMT-off; mechanically V4-not-V1. The prior gem5/InvisiSpec V4 grounding was retracted as noise. 16 unique gadgets converted to AT&T (`eval/data/revizor_v4_real.jsonl`).

### 5. Honest neutrals
- **W4 structural edges** (V4 store-forwarding, taint-slice, CFG-speculative): no measurable lift on the locked test (target classes ceilinged post-W2). Their value can only be judged on real/OOD gadgets. The V4 edge was fixed to fire on real RMW gadgets (P3b: 3→163 edges) but its effect is not yet measured.

---

## Gaps (what's missing or unconfirmed)

| # | gap | why it matters | cost to close |
|---|---|---|---|
| G-a | **`real_v4.md` fixed-edge-alone number missing** | can't yet say whether the fixed structural edge helps real-V4 without HW data (the cheaper fix question) | rerun cluster aggregation (file now protected) OR pull `w4_memedge`/`w3_embed_on` `.pt` — small |
| G-b | **P3 held-out is tiny** (5 gadgets, 1 generator seed) and there are **no V4-shaped BENIGN** | 100% is 5/5 — coarse; V4 **false-positive** rate is unmeasured (P3 added positives only) | more Revizor seeds on the i5-8300H; synthesize mitigated/fenced V4-shaped benign — medium |
| G-c | **W5 leave-one-ISA-out not pulled/aggregated**, and it ran on the OLD corpus | the cross-ISA transfer headline isn't finalized; Task 5.4 (idiomatic RISC-V + windowing) never wired in | pull the `.out`; wire idiomatic corpus + `isa_windowing` into `leave_one_isa_out.py`, rerun — medium |
| G-d | **Generation loop not closed end-to-end** | no external-corpus pretrain (only fixture proof), no `rl_from_oracle` CLI runner, no oracle-validated-leak yield | external corpus + LoRA on a big-mem node; RL runner + Docker/Spectector on the i5 box — large |
| G-e | **arm64 still trails x86** (0.752 vs 0.910) | cross-ISA gap narrowed, not closed; and arm64 is high-variance seed-to-seed (±0.11) | more arm64/idiomatic data; per-ISA error analysis — medium |
| G-f | **Cluster `.pt` checkpoints never pulled** (only metrics + tables) | blocks local recompute of G-a and any re-eval | one rsync of `eval/cluster_out/*/gine_best.pt` — trivial |
| G-g | **Calibration reported, not applied** | ECE is measured but temperature scaling isn't in the inference path | wire `fit_temperature` into deployment eval — small |

---

## Next steps (prioritized)

1. **Close the cheap open numbers (G-f, G-a, G-c-pull):** rsync the cluster `.pt` + `w5_loio` `.out`; rerun the cluster aggregation (real-V4 file is now protected) to fill `real_v4.md`. Answers "is the fixed edge enough, or is real data (P3) required?" — one afternoon.
2. **Scale + de-risk the V4 result (G-b):** run more Revizor seeds on the i5-8300H for a held-out bigger than 5, and synthesize mitigated V4-shaped BENIGN to measure the V4 false-positive rate. This turns P3 from "promising, tiny-n" into a defensible benchmark.
3. **Finalize cross-ISA (G-c, G-e):** wire the idiomatic RISC-V corpus + inference-time windowing into `leave_one_isa_out.py` (Task 5.4), rerun at 5 seeds; do a per-ISA confusion analysis on the arm64 gap.
4. **Close the generation loop (G-d):** external-corpus pretrain on an ICF-Free / big-mem node → fine-tune → `rl_from_oracle` CLI with the Spectector oracle on the Docker box; report validated-leak yield per round. This is the largest remaining piece and the weakest arm.
5. **Write the detector paper now.** The detector story is complete and honest: de-shortcut (W2) + hand-features-are-a-crutch/ISA-independent (W3) + V4-needs-real-data (P2/P3), on real-silicon ground truth. The generator is a separate, less-mature contribution.

## One-line status
The **detector** is in publishable shape: shortcut removed, an ISA-independent config that beats the hand-engineered model on every axis, and a clean real-silicon V4 result (0%→100% via hardware data). The open work is **scaling the V4 evidence**, **finalizing cross-ISA transfer**, and **closing the generation loop** — none blocking the detector paper.

---
## Step 1 CLOSED (2026-09-10)
- **real_v4.md**: fixed structural edge ALONE = 0.000 real-V4 recall (ON and OFF). Even firing (P3b: 163 edges), a model without real V4 data detects NONE. **The edge cannot rescue real-V4; hardware training data is required.**
- **real_v4_p3.md**: 0.000 → 1.000 (5-seed, data fix confirmed on cluster).
- **W5 leave-one-ISA-out**: this run was the OLD corpus (riscv64 n=0 on the cluster; RISC-V transfer untested — Step 3 `--idiomatic` fixes it). x86<->arm64 only: hand-58 acc 37.9%/F1 36.1 vs spec-42 60.7%/46.4 vs cand-impurity 64.2%/45.6 — hand features transfer WORST cross-ISA (+26pp for learned/spec). Consistent with W3 (hand features are an x86-biased crutch).
- 40 .pt checkpoints now pulled locally.
## STEP 4 agent code starting (rl_from_oracle CLI + external-corpus staging).
