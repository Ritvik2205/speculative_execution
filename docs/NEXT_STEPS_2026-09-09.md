# Next steps — integrating `may2026` (detector/generator) + `revizor-v4-ssb-260907` (V4 ground truth)

Date 2026-09-09. Two branches, both off `1d134cf`, are complementary and should now converge.

## Where the two branches leave us

**`may2026` (this session's hardening) — code merge-ready, results exploratory:**
- W1 measurement harness; **W2 de-shortcut is the strong result** (trigger-masked macro-F1 gap 27.4pp → 1.1pp, locked macro-F1 +4pp, L1TF/MDS/V4 masked recall near-0 → 66–99%).
- W3/W4/W5/W6 code committed + reviewed. 3-seed exploratory results:
  - **DANN arch-invariance backfired** — widened the x86−arm64 gap (+0.23 → +0.36), arm64 macro-F1 0.64 → 0.49.
  - **Dropping the 256-dim hand branch cost ~0** (0.822 → 0.836) → the graph carries the signal; the hand features are a removable crutch. (Supports the ISA-independent thesis.)
  - **W4 edges null on the locked test** — V4 recall 0.995 ON==OFF, MDS 0.970 both, L1TF slightly down with taint-slice. **Because the locked test's V4/MDS were already at ceiling after W2.** The locked test cannot show whether the edges help.

**`revizor-v4-ssb-260907` (real-silicon V4 grounding) — the missing ground truth:**
- SPECTRE_V4/SSB confirmed on real hardware (i5-8300H): **15 violations un-mitigated → 0 with SSBP on → 16 with SMT off.** Real store bypass, not noise, not sibling-thread.
- Mechanically V4-not-V1: 0/15 have a conditional branch, all single-BB, 15/15 have store→load pairs.
- The prior gem5/InvisiSpec V4 grounding was **retracted** (confident-hit-on-noise, 0/40 byte-correct). This Revizor run is now the *only* valid dynamic V4 grounding, and it has a working mitigated control the simulator never gave.
- MDS (3), L1TF (3), V1 (3) also confirmed, SMT-off-robust.
- **32 real `program.asm` gadgets (Intel syntax) on disk.**
- **Open (revizor step 6):** convert Intel→AT&T and wire the HW verdicts into v54 training labels — NOT done.

## The key insight linking them

W4's V4 store-forwarding edge (G1) looked useless — but only because it was measured on a ceilinged locked test. The Revizor branch now supplies **15 hardware-confirmed real V4 gadgets** — exactly the honest held-out test the locked set could never be. The edges must be re-measured *there*, not on the locked test. Same logic for MDS/L1TF real gadgets vs the taint-slice.

---

## Prioritized plan

### P1 — Integrate the two branches (fast, unblocks everything)
Merge `revizor-v4-ssb-260907`'s `oracle/revizor/` (V4 grounding + 32 gadgets + campaign scripts) into `may2026` (or a fresh `integration` branch off `1d134cf`). Different directories (`oracle/revizor/` vs `eval/`,`v54/`,`gen/`), so no real conflicts expected. Result: one branch with the detector hardening AND the V4 ground truth.

### P2 — Real-V4 evaluation (highest scientific value) — closes the honest G1 test
1. Convert the 15 (+16 SMT-off) Revizor `program.asm` from Intel to AT&T (revizor step 6, part 1). They are single-BB, branch-free, store→load — small and mechanical to convert; `llvm-mc`/objdump round-trip or a syntax mapper.
2. Build a held-out **real-V4 test set** from them (label SPECTRE_V4, arch x86_64), plus the SSBP-clean controls as BENIGN.
3. Re-run the W4 edge-ablation **on this real-V4 test** (not the locked test): `--mem-order-edges` ON vs OFF, and `--taint-mode slice` for the real MDS/L1TF gadgets. This is the measurement that decides whether G1's store-forwarding edge is worth shipping. Report honestly either way.

### P3 — Oracle-labelled V4 training data (revizor step 6, part 2) — "stop V4 being guessed"
Wire the HW verdicts into v54 labels: the 15 leak gadgets → SPECTRE_V4, the SSBP-mitigated-clean programs → BENIGN. Fold into the train pool, retrain, re-measure V4 on the real-V4 held-out (P2). Replaces guessed V4 labels with hardware ground truth — the endgame the audit (V4-oracle-labels memory) called for.

### P4 — 5-seed cluster confirmation of the promising configs
The 3-seed results are underpowered (wide CIs). On the cluster, at 5 seeds:
- **Confirm hand-off ≈ hand-on** (the clean positive: graph carries it). If it holds, that is a paper result.
- **Drop DANN** (it backfired). Optional: a λ-sweep (`--arch-lambda` 0.01/0.1/1.0) to see if a gentler adversary helps arm64 rather than hurting — but the default recommendation is to drop it and lean on "no-handcrafted + graph".
- **W4 edges at 5 seeds on the real-V4 test** (P2), not the locked test.

### P5 — Generator loop with the hardware oracle
The Revizor HW oracle is a stronger V4 validator than Spectector. For W6's discovery loop, validate generated V4 candidates by `rvzr reproduce` on the i5-8300H bare-metal box (NOT the cluster — Revizor needs that specific host + kernel module). Spectector/Docker remains the x86 symbolic oracle for the other classes. Still needs the `rl_from_oracle.py` CLI runner (W6 open item).

### P6 — Remaining loose ends
- **W5 Task 5.4:** wire `eval/data/idiomatic_riscv.jsonl` + `eval/isa_windowing.py` into `leave_one_isa_out.py`, run at 5 seeds (cluster). Current LOIO is the baseline, pre-idiomatic-corpus.
- **W6 external-corpus pretrain:** stage ExeBench/AnghaBench, pretrain on an ICF-Free H200/A40, then fine-tune (the fixture proof already works).
- **W6 `rl_from_oracle.py` CLI runner** wiring generator + realizer + oracle over ≥3 rounds.

---

## Cluster resource map (from the live `sinfo`)

| partition | nodes / GPUs | use for |
|---|---|---|
| **Teaching*** (default) | 2080 Ti (11 GB) ×8/node (damnii, landonia, opencast), a6000 (48 GB) on landonia11, h200 on saxa | the GINE trainings (small model — a 2080 Ti is plenty); this is where `submit_all.sh` runs |
| **ICF-Free** | a40 (48 GB) ×4 (crannog), l40s (48 GB) ×4 (scotia), h200 (141 GB) ×8 (herman) — "free" | the generator LLM pretrain (P6) and anything memory-hungry |
| **Interactive** | 2080 Ti, 2h limit (landonia01/02) | debugging a single run before batch-submitting |
| ICF-Research / Open-Research | a40 / l40s / h200 / blackwell | if you have the access grant; overkill for GINE |

- Set `#SBATCH --partition=Teaching` in `eval/cluster/train.sbatch` (it's the default; a 2080 Ti fits our model). Use `--partition=ICF-Free --gres=gpu:a40:1` (or `l40s`/`h200`) only for the generator pretrain.
- **The Revizor HW oracle does NOT run on the cluster** — it needs the bare-metal i5-8300H (`ritvik-asus-linux`) with its kernel module. P2's *conversion* and P3's *training* run on the cluster; the *fuzzing/reproduce* stays on the Intel box.
- 5-seed reruns: raise the seed loops in `eval/cluster/submit_all.sh` from `{42,1,7}` to `{42,1,7,13,21}`.

## One-line status
Detector hardening is done and merge-ready; the one strong result is the de-shortcut. The next real science is P2 — measuring the V4 edge on the 15 hardware-confirmed gadgets the Revizor branch just produced, which the ceilinged locked test could not test.
