# SpecExec — full pipeline status & next steps (2026-09-15)

## Updated results

### Detector (publishable)
| result | number |
|---|---|
| de-shortcut: trigger-masked macro-F1 gap | 27.4pp → **1.1pp** (masked F1 0.503→0.805) |
| baseline `embed, no-hand`: locked / arm64 / x86 / masked | **0.869 / 0.752 / 0.910 / 0.859** |
| — arm64 vs old hand-fused | 0.618 → **0.752** (+13.4pp) |

### Real-hardware transfer — BEFORE is a result; AFTER is confounded (corrected 2026-10-02)
> **Corrected 2026-10-02 (cluster run 4 + cross-class check).** These models were retrained on current code: 5 seeds × {`w3_embed_on`, `<class>_hw` ×4, `p3_hwv4`}. Older numbers came from pre-`3945792` checkpoints scored on 1–5 gadgets, and are withdrawn. Sources: `eval/cluster_out/real_transfer.md`, `real_v4_p3.md`.

**Valid result: a detector trained only on synthetic data does not recognise real-silicon gadgets.** Held-out real-HW recall of `w3_embed_on` (mean ±95% CI, 5 seeds):

| class | BEFORE (synthetic-trained) | held-out n (real HW, i5-8300H) |
|---|---|---|
| SPECTRE_V4 | **0.000** ±0.000 | 22 |
| MDS | **0.097** ±0.190 | 33 |
| L1TF | 0.263 ±0.276 | 64 |
| SPECTRE_V1 | 0.685 ±0.258 | 54 |

Most real gadgets are called SPECTRE_V1 or some other class, whatever their true class.

**Not valid: "folding real gadgets in takes recall to 1.00".** Each `<class>_hw` scores 1.000 ±0.000 recall with ~0 twin FP. A cross-class check on the committed checkpoints (seed 1) shows each per-class model labels real gadgets of **every** class as its own:

| model | real MDS → | real L1TF → | real V1 → | real V4 → |
|---|---|---|---|---|
| `l1tf_hw` | L1TF 1.00 | L1TF 1.00 | L1TF 1.00 | L1TF 1.00 |
| `spectre_v1_hw` | V1 1.00 | V1 1.00 | V1 1.00 | V1 0.95 |
| `spectre_v4_hw` | V4 1.00 | V4 1.00 | V4 1.00 | V4 1.00 |
| `mds_hw` | MDS 1.00 | MDS 0.86 | MDS 0.70 | MDS 1.00 |

Each model saw real (Revizor-generated) programs of only its own class, so it learned **"Revizor-style program → my class"**, not the vulnerability. This is not leakage: there are no exact duplicates, nearest-neighbour opcode similarity has a median of only 0.40–0.47, and no generator seed appears in both train and held-out. The seed-disjoint V4 result (`p3_hwv4`, 0 → 1.00, FP 1.00 → 0.00) uses the same per-class design and is confounded the same way. Its negatives are *synthetic* `lfence` twins. Only the fence *mechanism* is hardware-validated (the SSBP-off→on control took 15 leaks to 0), not each twin.

**Redesign (built 2026-10-02, to run on the cluster):**
- one **joint** model `allhw`, trained with all four classes' real gadgets. Style can no longer name a class, so its 4×4 confusion matrix on real held-out data is the valid transfer number;
- a **misplaced-fence control**: the same number of `lfence`s, placed at function entry where they don't mitigate. If the model calls these BENIGN, it is keying on lfence presence rather than placement.

Report: `eval/cluster_out/real_transfer_confusion.md`.

**Other caveats:**
- One CPU (i5-8300H), one fuzzer (Revizor).
- `real_v4.md` ("structural edge alone = 0%") still uses pre-09-24 W4 checkpoints. Withdrawn until W4 is retrained.
- **Open decision:** `e3a541e` makes store→load MEMORY_ORDER edges always-on (2 → 146 edges). It is in the committed code that run 4 and every `rv_*` run used. Whether that is intended needs confirming with the RISC-V work owner.

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
