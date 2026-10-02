# SpecExec — full pipeline status & next steps (2026-09-15)

## Updated results

### Detector (publishable)
| result | number |
|---|---|
| de-shortcut: trigger-masked macro-F1 gap | 27.4pp → **1.1pp** (masked F1 0.503→0.805) |
| baseline `embed, no-hand`: locked / arm64 / x86 / masked | **0.869 / 0.752 / 0.910 / 0.859** |
| — arm64 vs old hand-fused | 0.618 → **0.752** (+13.4pp) |

### Real-hardware transfer — now FOUR classes (the strengthened headline)
> **Corrected 2026-10-02 (cluster run 4).** The table originally here came from checkpoints trained before `3945792` (09-24, ISA surface-form normalisation), which current featurization cannot score, and from 1–5 held-out gadgets per class. Everything below was retrained on current code: 5 seeds × {`w3_embed_on`, `<class>_hw` ×4, `p3_hwv4`}. Sources: `eval/cluster_out/real_transfer.md`, `eval/cluster_out/real_v4_p3.md`.

Held-out real-silicon recall (mean ±95% CI), BEFORE (`w3_embed_on`, synthetic-trained) → AFTER (`<class>_hw`, real gadgets + fenced twins folded in):

| class | BEFORE | AFTER | FP on synthetic fenced twins (AFTER) | held-out n |
|---|---|---|---|---|
| SPECTRE_V4 | **0.000** ±0.000 | **1.000** ±0.000 | 0.000 | 22 (+22 twins) |
| MDS | **0.097** ±0.190 | **1.000** ±0.000 | 0.000 | 33 (+33) |
| L1TF | 0.263 ±0.276 | **1.000** ±0.000 | 0.000 | 64 (+64) |
| SPECTRE_V1 | 0.685 ±0.258 | **1.000** ±0.000 | 0.074 | 54 (+54) |

Seed-disjoint V4 with **hardware-confirmed** SSBP-mitigated negatives (`p3_hwv4`, 5 + 5): recall 0.000 → **1.000**, false-positive rate 1.000 → **0.000**. This supersedes the old "100% → 16%".

**Interpretation:** the pattern survives retraining and larger held-out sets. The microarchitecture-defined classes (V4, MDS) barely transfer from synthetic training (0–10%). The statically-visible ones partially transfer (L1TF 26%, V1 69%). All go to 100% with real data.
**Caveats:**
- The twin false-positive rate here is **synthetic/unverified** (`lfence` at the textbook boundary). Only the V4 seed-disjoint set has hardware-confirmed negatives.
- AFTER = 1.000 ± 0.000 is a ceiling. No held-out gadget is an exact duplicate of a training record, but each `_hw` model saw real gadgets of only its own class (paired with fenced twins). A cross-class check is still to do: does `mds_hw` call real L1TF gadgets MDS?
- One CPU (i5-8300H), one fuzzer (Revizor).
- `real_v4.md` ("structural edge alone = 0%") still uses pre-09-24 W4 checkpoints. Treat it as unverified until W4 is retrained.
- **Open decision:** `e3a541e` (always-on store→load edges, 2 → 146 MEMORY_ORDER edges) is a separate spec change. It is *in* the committed code, so run 4 and every rv_* run used it. The uncommitted one-line revert (`if self.mem_order_edges or addr_mo:` → `if self.mem_order_edges:`) was dropped to keep the cluster tree identical to the branch. Whether always-on is intended needs confirming with the RISC-V work owner. If it is not, all of the above needs another retrain.

### Cross-ISA (mixed, honest)
- RISC-V held out: **77% accuracy but attack macro-F1 ~15** — benign transfers, attacks don't. Corpus is 90% benign (162/181) with 2–6 records per attack class, so the accuracy is largely base-rate.
- Windowing **hurt** x86↔arm64 (19/42/53% vs 38/61/64% un-windowed) — failed ablation.
- hand-58 transfers worst cross-ISA (19–38%) — consistent with the W3 finding.

### Generator arm (Step 4) — partially run, corpus quality is the blocker
- ✅ Corpus staged: `gen/data/pretrain_corpus.jsonl` (34 MB, 5000 records).
- ✅ Pretrain ran: `eval/cluster_out/w6_pretrain_s0/pretrained.pt`.
- ❌ Fine-tune (`--init-from`) not run. ❌ RL loop not run — **no `rl_yield.md`**.
- ⚠️ **Corpus quality problem:** arch mix is **84.5% `unknown`** (4223/5000; x86 605, riscv 141, arm 31) → most records fall back to `base.json` tokenization, undercutting the "ISA-neutral vocabulary" premise. Sequence length median **19** (mean 209, max 22697) → many records are trivial fragments. And n=5000 was the smoke limit. The pretrain log wasn't pulled, so convergence is unverified.
  **Consequence:** fine-tuning from this checkpoint tests a *weak* pretrain. Judging "does pretraining help?" on it would be unfair to the method.

## Next steps for the entire pipeline (prioritized)

**1. Get the generator's baseline number first (cheap, unblocks the arm).** Run the oracle-RL loop on the **existing** `gen/generator.pt` — it needs no pretrain and no dataset:
```
# on the i5 box (Docker + Spectector):
python3 gen/rl_from_oracle.py --gen gen/generator.pt --rounds 5 --k 40 --out gen/rl_yield.md
```
This answers the real question — *does oracle-in-the-loop rejection sampling raise the validated-leak yield per round?* — independent of the weak pretrain.

**2. Fix the pretrain corpus before judging pretraining.** Raise `--limit` (50k+), fix/relax the arch-detection heuristic (84% unknown is the bug), and filter out sub-~10-instruction fragments. Then re-pretrain, fine-tune (`--init-from`), and re-run the RL loop to compare against step 1's baseline.

**3. Scale the real-hardware evidence (the paper's weakest flank).** Held-out n of 1–5 per class is the main reviewer target. Run Revizor with **new `program_generator_seed` values** on the i5 box (re-running the same seeds regenerates identical gadgets), then rebuild the splits. Also synthesize fenced/mitigated twins for MDS/L1TF/V1 so those classes get a **false-positive** metric like V4 has.

**4. Close the RISC-V attack gap or scope it as future work.** We need idiomatic RISC-V *attack* data (only 19 records, no L1TF/MDS/V2 at all). Either compile more attack C for riscv64 (oracle-labelled), or state the gap explicitly with the base-rate explanation and defer.

**5. Write the detector paper now.** The story is complete: shortcut removed → ISA-independent config beats hand-engineering (+13.4pp arm64) → synthetic detection collapses on real silicon for microarchitectural classes and real data fixes it (four classes). Items 3–4 strengthen it; none block it.

**6. Housekeeping.** Branches are split (`cluster` has results, `may2026` has code — now partly merged); pull the `.pt` checkpoints and job logs (the pretrain log was never pulled); consolidate to one branch.
