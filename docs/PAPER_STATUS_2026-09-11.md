# SpecExec — consolidated status & paper readiness (2026-09-11)

## Confirmed results (the paper's spine)

### 1. Opcode shortcut removed (W2) — STRONG
Trigger-masked augmentation: shortcut gap 27.4pp → 1.1pp; trigger-masked macro-F1 0.503 → 0.805; masked ECE 0.102 → 0.027. The detector keys on structure, not class opcodes.

### 2. ISA-independent baseline `embed, NO handcrafted` (W3, 5-seed) — STRONG
Beats the old hand-fused model on every axis; arm64 +13.4pp (0.618→0.752). Hand features were an x86-biased crutch. DANN arch-adversary retired (backfired). Adopted as the baseline (`eval/robustness_baseline_nohand.md`).

### 3. V4 real-silicon transfer (P2/P3), now on CLEAN data — STRONG headline
On 16 hardware-confirmed Revizor gadgets: synthetic-trained model = **0%**; the structural store-forwarding edge alone = **0%** (even after P3b made it fire, 3→163 edges); folding 11 real gadgets into training = **100%** held-out recall, with the V4 false-positive rate on mitigated (fenced) gadgets dropping **100% → 16%** (`eval/cluster_out/real_v4_p3.md`). Re-confirmed after the converter-mnemonic-drop fix — the result is on clean data. **V4 was unlearnable for lack of a real training signal; the structural edge cannot substitute for it.**

### 4. Cross-ISA leave-one-ISA-out with the idiomatic RISC-V corpus (Step 3, 5-seed) — MIXED, honest
`--idiomatic` fixed `riscv=0` (176 real riscv records). Findings:
- **RISC-V benign transfers, attacks don't** (77% acc but macro-F1 ~15 — benign-dominated). Cross-ISA *attack* transfer to RISC-V is the open gap.
- **Windowing HURT x86↔arm64** (19/42/53% vs 38/61/64% un-windowed) — a negative result; report un-windowed as the headline, windowing as a failed ablation.
- hand-58 transfers worst for x86↔arm64 (consistent with W3).

## Code shipped this round (branch may2026)
- Converter mnemonic-drop bug fixed + hard guard; ALL hardware-gadget data regenerated clean (`de7da03`).
- Multi-class transfer machinery: `convert_revizor_gadgets.py`, `build_hw_transfer.py`, aggregator `real_transfer` block (`4034871`).
- Generator pretrain→fine-tune link: `train_generator.py --init-from` vocab-transfer (`199de92`).
- Cluster: one-script `run_everything.sh` + `submit_baseline.sh` + protected `aggregate.sbatch`.

## Gaps (what's blocking a complete paper)

| # | gap | status | to close |
|---|---|---|---|
| G1 | **MDS/L1TF/V1 real-HW transfer (Step 2b) not run** | data/code exist on may2026 but were NOT on the `cluster` branch that was run → no `_hw` checkpoints, no `real_transfer.md` | merge may2026→cluster, run the 3 `_hw` trainings + aggregate (command above) |
| G2 | **V4 held-out is tiny** (5 gadgets, 1 generator seed) | 0→100% + FP 16% stands but is coarse | run Revizor with NEW `program_generator_seed` values on the i5 box (re-running the same seeds regenerates identical gadgets) |
| G3 | **RISC-V attack transfer weak** (macro-F1 ~15) | only 19 idiomatic riscv attack records | more idiomatic riscv ATTACK data; per-class error analysis |
| G4 | **Generation loop (Step 4) not run** | code ready (pretrain, --init-from, rl CLI); corpus staging blocked on laptop torch bug (chmod fix given) | stage corpus on cluster head node → pretrain → fine-tune → RL on i5 box |
| G5 | **Branches split** | code on may2026, results on `cluster` | merge/consolidate to one branch |

## Paper readiness
**The detector paper is essentially complete and defensible:** (a) shortcut removed, (b) an ISA-independent config beating hand-engineering on every axis, (c) a clean real-silicon V4 result (0%→100% via hardware data, with a measured false-positive drop), on retracted-simulator-replaced real ground truth. Writable now.

**What would strengthen it (in priority order):** G1 (MDS/L1TF transfer — turns V4 into a general multi-class phenomenon; highest value, one cluster run away), then G2 (bigger V4 held-out). G3/G4 are separate contributions (cross-ISA attack transfer; the generator) that are less mature and need not block the detector paper.

## Immediate next action
Run G1 (the merge + 3 `_hw` trainings + aggregate). If MDS/L1TF show the same 0→high pattern as V4, the paper's central claim generalizes from one class to several — the single highest-leverage result left.
