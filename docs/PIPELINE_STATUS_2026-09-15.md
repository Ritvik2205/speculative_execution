# SpecExec — full pipeline status & next steps (2026-09-15)

## Updated results

### Detector (publishable)
| result | number |
|---|---|
| de-shortcut: trigger-masked macro-F1 gap | 27.4pp → **1.1pp** (masked F1 0.503→0.805) |
| baseline `embed, no-hand`: locked / arm64 / x86 / masked | **0.869 / 0.752 / 0.910 / 0.859** |
| — arm64 vs old hand-fused | 0.618 → **0.752** (+13.4pp) |

### Real-hardware transfer — what holds after the shortcut controls (updated 2026-10-03, runs 4–6)
Sources: `eval/cluster_out/real_transfer_confusion.md`, `eval/cluster_out/hw_split_audit.md` (5 seeds). Real gadgets come from Revizor on the i5-8300H. Held-out: V1 54, L1TF 64, MDS 33, V4 22. **The leakage audit passes** (no group, sequence or seed overlap; max held-out-to-train similarity 0.76).

**1. A detector trained on synthetic data does not recognise real gadgets. It defaults to SPECTRE_V1.** `w3_embed_on` calls 74% of real MDS, 56% of L1TF and 73% of V4 gadgets V1. This is the one clean, citable real-silicon result.

**2. Class identity on real gadgets is explained by the Revizor config's instruction mix.** A standard-scaled bag-of-opcodes logistic regression (the audit's bar) gets 0.97 overall: MDS 1.00, L1TF 0.98, V1 0.93, V4 1.00. The joint GNNs (`allhw`/`allhw2`) get 1.00 / 0.99 / 0.97–0.98 / 1.00, so they add about **+0.01 on L1TF and +0.05 on V1**. *(The earlier "+0.25–0.30" claim came from an unscaled, under-tuned opcode baseline. Withdrawn.)* Per-class `<class>_hw` models learned "Revizor style → my class". Their 1.00 is withdrawn.

**3. Mitigation: the presence shortcut is fixed, but the labels are not trustworthy.** `allhw2` (trained with misplaced-fence counterexamples) calls every still-vulnerable misplaced-fence gadget the attack class (entry, tail and shift placements: 0.99–1.00), and keeps fenced twins BENIGN (false-positive rate ~0; V1 0.06). However:
- **A bigram model does the same.** "The instruction next to the `lfence`" separates twin from shifted at 0.91–1.00. So `allhw2` learned the local rule "`lfence` right after the branch/store = safe", nothing deeper.
- **The twin labels are not hardware-validated, and V1's are likely wrong.** In Revizor's V1 layout, `jcc <.bb_0.1>` is followed by `jmp <.macro.measurement_end>`. The leaking code is the taken target block (`.bb_0.1`). The twin's `lfence` after `jcc` sits on the fall-through, which only exits, so it **cannot mitigate**. Those "BENIGN" twins are probably still vulnerable. The V4 "15 → 0" hardware control toggled the SSBP MSR (`x86_executor_enable_ssbp_patch`), **not** an inserted `lfence`. So V4/MDS/L1TF twin mitigation is assumed, not measured.
- So the model faithfully learned our labels, and some of those labels are wrong. No mitigation-detection claim stands until the twins are checked by running them through Revizor.

**Next (needs the i5):** for each held-out violation, take its `program.asm` and inputs and make fenced variants: target-block fence, fall-through fence, shifted, misplaced. Re-run `rvzr reproduce` on the same inputs. A violation that persists means vulnerable; one that disappears means mitigated. That gives hardware labels for every counterfactual. Then fix the V1 twin (fence at the start of `.bb_0.1`) and retrain on the validated labels.

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
