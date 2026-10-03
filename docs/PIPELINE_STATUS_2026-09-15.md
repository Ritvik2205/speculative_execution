# SpecExec — full pipeline status & next steps (2026-09-15)

## Updated results

### Detector (publishable)
| result | number |
|---|---|
| de-shortcut: trigger-masked macro-F1 gap | 27.4pp → **1.1pp** (masked F1 0.503→0.805) |
| baseline `embed, no-hand`: locked / arm64 / x86 / masked | **0.869 / 0.752 / 0.910 / 0.859** |
| — arm64 vs old hand-fused | 0.618 → **0.752** (+13.4pp) |

### Real-hardware transfer — what holds after the shortcut controls (updated 2026-10-03, runs 4–5)
Sources: `eval/cluster_out/real_transfer_confusion.md` (5 seeds), `real_transfer.md`, and the opcode baseline below. Real gadgets come from Revizor on the i5-8300H. Held-out: V1 54, L1TF 64, MDS 33, V4 22, plus fenced twins. Leakage is ruled out: no duplicates, nearest-neighbour opcode similarity median 0.40–0.47, disjoint generator seeds.

**1. A detector trained on synthetic data does not recognise real gadgets. It defaults to SPECTRE_V1.** `w3_embed_on` calls 74% of real MDS, 56% of L1TF and 73% of V4 gadgets V1. Its "V1 recall 0.69" is that default, not recognition.

**2. Per-class models (`<class>_hw`) learned the Revizor style, not the class.** Each labels real gadgets of every class as its own (`l1tf_hw` → 100% L1TF on all four). Their 1.00 recall is withdrawn.

**3. A joint model (`allhw`, all four classes' real gadgets) separates the classes, but MDS/V4 separation is just the config's instruction mix.**

| real class | `allhw` recall | bag-of-opcodes LR (no graph) | gain over opcodes |
|---|---|---|---|
| MDS | 1.00 | 0.97–1.00 | none (byte/bit ops identify the config) |
| SPECTRE_V4 | 1.00 | 1.00 | none (`adcb`/`imull` identify the config, not store→load) |
| L1TF | 0.99 | 0.67–0.69 | **+0.30** |
| SPECTRE_V1 | 0.98 | 0.70–0.74 | **+0.25** |

Only the L1TF/V1 gain over opcodes is evidence of structure. Even that may partly be config (the V1 config enables branches). Each class came from its own Revizor config, so instruction mix and class are entangled until classes are collected under a shared instruction set.

**4. Mitigation is not learned: "has an lfence" ⇒ BENIGN.** For the misplaced-fence control (same number of lfences, at function entry, gadget still vulnerable), `allhw` predicts BENIGN for MDS 1.00, L1TF 1.00, V4 0.86, V1 0.68. So the ~0 false-positive rate on fenced twins does not show mitigation detection. The control is structural; that entry fences don't mitigate is assumed, not hardware-verified.

**Fix in progress:** `allhw2` adds misplaced-fence copies of the training positives (labelled as attacks; fences split between entry and tail, matched in count and length to the proper twin). `oracle/revizor/audit_hw_split.py` fails the prep job on any leak and reports trivial-cue baselines (length, lfence count/presence/position, opcode bag) as the bars every table must beat.

**Other caveats:**
- One CPU (i5-8300H), one fuzzer (Revizor).
- `real_v4.md` still uses pre-09-24 W4 checkpoints; withdrawn.
- **Open decision:** `e3a541e` makes store→load MEMORY_ORDER edges always-on. Is that intended?

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
