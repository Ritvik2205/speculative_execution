# Analysis of Step 2/3 results + rvzr-runs, and revised next steps (2026-09-11)

## Step 2 result — `eval/cluster_out/real_v4_p3.md` (5-seed, now with false-positive rate)

| metric | BEFORE (no real V4 in train) | AFTER (v55h + 11 real V4 + 11 fenced BENIGN) |
|---|---|---|
| held-out SPECTRE_V4 recall | 0.000 | **1.000** |
| V4 false-positive rate (V4-shaped BENIGN flagged as attack) | 1.000 | **0.200 ± 0.392** |

Reading: folding real V4 in fixes detection (0→100%) AND teaches the mitigation boundary — the baseline flags **100%** of the fenced (mitigated) V4-shaped gadgets as attacks; after training it drops to **20%**. So the model learns both "this is V4" and "this fenced version is safe." Still 20% FP on a tiny (5-gadget) benign set with a huge CI — real but coarse.

## Step 3 result — `gine_3644148.out` (`--idiomatic --windowed`, 5-seed leave-one-ISA-out)

The idiomatic corpus fixed the `riscv64 n=0` problem (now 176 real riscv records). Findings (acc / macro-F1, cand-impurity tier):

- **x86+arm64 → riscv64: 77.5% acc but macro-F1 ~15.** RISC-V **benign** transfers well (accuracy is benign-dominated), but **attacks do not** (low macro-F1). Cross-ISA attack transfer to RISC-V is still the gap.
- **x86 ↔ arm64: windowing HURT it** — x86→arm64 dropped to 19/42/53% (hand/spec/cand) vs 38/61/64% un-windowed. **The windowing wrapper is a negative result on these corpora** (it helps only the large-OOD-function/graph-size-shift case, which these aren't; k_threshold=0.5 abstention is too aggressive here).
- **hand-58 transfers worst for x86↔arm64** (19% vs cand 53%) — consistent with W3: hand features are an x86-biased crutch.

## rvzr-runs branch (merged) — what's actually new

123 gadgets, but the V4 ones **dedup to the same 16** (re-running the same generator seeds regenerates identical programs — no new V4). **What IS new: real hardware gadgets for other classes** — MDS ×6, L1TF ×6, SPECTRE_V1 ×3 (same convertible Intel format, incl. SMT-off-confirmed ones).

---

## Revised next steps

### NEW — Step 2b (highest value): extend the real-hardware transfer test to MDS + L1TF + V1
The V4 arc (synthetic 99.5% → real 0% → data fixes to 100%) can now be tested on **other hardware-validated classes**. This turns a single-class result into a **general phenomenon** — the strongest thing this data buys.
- **[AGENT]** extend `convert_v4_gadgets.py` (already `--extra-dirs`) to ingest `rvzr_runs/{smt_off,baseline}/{MDS,L1TF,SPECTRE_V1}`; build per-class held-out + fold-in datasets like P3 (seed/group-disjoint).
- **[YOU · cluster]** for each class: eval the current synthetic-trained model on the real held-out (expect ~0%), then retrain with the real gadgets folded in and re-eval.
- **Expected result:** the same 0→high pattern for MDS/L1TF ⇒ "synthetic overfits, real hardware data is required" holds across classes, not just V4.

### Step 2 (V4 de-risk) — needs NEW seeds, not the current data
The held-out is still 5 gadgets from one generator seed because rvzr-runs re-ran the SAME seeds. To enlarge it, run Revizor with **different `program_generator_seed` values** on the i5 box, then I re-split. (The current 0→100% + FP 100→20% stands as the coarse-but-real result.)

### Step 3 follow-ups
- **Drop `--windowed`** for the headline (it hurt); report the non-windowed idiomatic LOIO as the cross-ISA number, and windowing as an ablation that didn't help here.
- **RISC-V attack transfer** (low macro-F1) is the open cross-ISA gap — needs more idiomatic riscv ATTACK data (only 19 attack records) or a per-class error look.

### Step 4 (generation loop) — UNCHANGED
Independent of the hardware data. The RL CLI + corpus-staging code is built and reviewed; it runs on the cluster head node (pretrain) + i5 box (oracle-RL). The rvzr-runs data does not affect it.

---

## What changes vs the previous plan
- **A new, higher-value Step 2b appears** (MDS/L1TF/V1 real-hardware transfer) — do this before Step 4.
- **V4 de-risk is deferred** — the current data can't enlarge the held-out; needs new i5 seeds.
- **Windowing is dropped** from the cross-ISA headline (negative result).
- **Step 4 is unchanged.**

## What YOU run next (after I build Step 2b's converter/dataset)
- **[cluster]** per class (MDS, L1TF, V1): the synthetic-vs-real eval + a fold-in retrain (same pattern as `p3_hwv4`, new TAGs).
- **[i5 box, to de-risk V4]** Revizor with new generator seeds.
- **[cluster head + i5]** Step 4 whenever you want the generator arm.
