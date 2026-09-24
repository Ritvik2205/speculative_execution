# SpecExec Generation Model — clean status (2026-09-24)

A focused summary of the gadget-generation model: what exists, how it was
built, the results, and the open gaps. (The long build narrative is in
`docs/GENERATOR_ARM_STATUS_2026-09-18.md`; this is the concise version.)

**Goal of the generation model:** synthesize speculative-execution gadgets that
a real oracle independently confirms leak — for (a) more/better training data
than the ~21 runnable PoCs in `c_vulns/`, and (b) a discovery tool for new
gadgets, per class and per ISA.

---

## What exists (pipeline components)

| component | file | role |
|---|---|---|
| Class+arch-conditioned generator | `gen/generator.py` (`CondTransformerLM`) | 3-layer decoder transformer over `AsmTokenizer` tokens; `sample(class, arch)` emits an assembly token sequence |
| Base training | `gen/train_generator.py` | trains the generator on real gadgets (v54, 5,532 records); `--init-from`, `--lr`, `--extra-train` |
| Self-supervised pretrain | `gen/pretrain_encoder.py` + `gen/build_pretrain_corpus_from_c.py` | pretrain the LM on 200k compiled-C function bodies; `--tokenizer asm` (aligned to the generator) |
| Oracle-in-the-loop RL | `gen/rl_from_oracle.py` | rejection-sampled fine-tuning: sample → realize → oracle-verify → keep LEAKs → fine-tune; `--seed`, `--finetune-lr`, `--finetune-with-benign`, `--samples-out` |
| Leak oracle | `oracle/spectector_oracle.py`, `oracle/validators/` | Spectector symbolic SNI verdict (LEAK/SAFE/UNRUNNABLE); Docker (dev) or Apptainer (cluster) |
| Diversity audit | `gen/analyze_rl_diversity.py` | discovery vs mode-collapse: unique/unique-leak counts, top-1 template multiplicity, pairwise similarity |
| Powered comparison | `gen/rl_multiseed.sbatch` + `gen/aggregate_rl_multiseed.py` | multi-seed baseline-vs-pretrained with 95% CIs + CI-separation verdict |
| Pre-RL A/B diagnostic | `gen/compare_generators.py` | same-prompt base-vs-pretrained generation-quality comparison |
| Mitigated BENIGN twins | `oracle/revizor/synth_v4_benign.py` | per-class fenced twins (V4/V1/L1TF/MDS) for a false-positive metric |

**Cluster jobs (submit-only, nothing on the head node):**
`gen/pretrain.sbatch`, `gen/finetune.sbatch`, `gen/rl_multiseed.sbatch`,
`gen/rl_benign.sbatch`, `gen/compare_generators.sbatch`,
`gen/build_corpus.sbatch`, `gen/build_riscv_corpus.sbatch`. Spectector runs via
Apptainer (`oracle/apptainer/{publish,pull}_spectector.sh`), `.sif` on shared
storage (not node-local `/disk/scratch`).

---

## How we did it (and the bugs fixed along the way)

1. **Pretrain corpus from compiled C.** Compile AnghaBench C (self-contained
   single functions) to x86_64/arm64/riscv64 per-function assembly. Replaced an
   earlier the-stack whole-file source that was 84.5% unknown-arch / low
   compile-yield. Built with a parallel + resumable builder (survives cluster
   wall-clock timeouts).
2. **Tokenizer alignment (critical fix).** Pretrain originally used a canonical
   ISA-neutral tokenizer (`VECTOR`/`ADD`) while the generator uses raw mnemonics
   (`movq <reg> <reg>`) — disjoint vocabularies, so only ~4 special tokens
   transferred (**init-from overlap 4/460**). Aligned pretrain to the
   generator's `AsmTokenizer` → **overlap 322/460**; pretraining actually
   transfers.
3. **Fine-tune learning rate (critical fix).** `train()` defaulted to `lr=3e-3`
   (the from-scratch rate); at that rate the fine-tune overwrote the pretrained
   weights → pretraining looked null. Exposed `--lr`; at **1e-4** pretraining
   transfers and helps.
4. **GPU + progress.** `train()` moved off CPU-only; pretrain runs on GPU with
   intra-epoch progress.
5. **Auditable RL.** The RL loop persists every realized sample
   (`--samples-out`, incl. unrunnable) so yield has a denominator and diversity
   is measurable — it previously overwrote its own gadgets per round.
6. **Multi-arch generation.** `norm_arch` preserved riscv64 (was collapsing it to
   x86_64), `ARCHS=[x86_64, arm64, riscv64]`, `--extra-train` folds the idiomatic
   riscv corpus in.

---

## Results

**Oracle-in-the-loop RL (headline, SPECTRE_V1 / x86_64):**
- validated-leak yield **~0.50 → ~0.97 in one round**, then plateaus (reproducible across seeds).
- **genuine discovery, not mode collapse** — audited: ~117–137 distinct leaking gadgets from ~172 leaks, median pairwise similarity ~0.32.

**Pretraining helps diversity (powered, n=5, baseline vs low-LR pretrained):**

| metric | baseline | pretrained | verdict |
|---|---|---|---|
| top-1 template multiplicity | 28.8±6.3 | **3.0±1.1** | CIs SEPARATE |
| unique leaking gadgets | 102.4±18.0 | **134.8±5.9** | CIs SEPARATE |
| unique-rate | 0.674±0.083 | **0.971±0.021** | CIs SEPARATE |
| round-0 yield | 0.540 | 0.545 | tied |
| overall yield (raw leak rate) | **0.839±0.078** | 0.703±0.030 | SEPARATE — baseline higher |

Pretraining significantly **reduces mode collapse and improves diversity**, at a
significant **cost in raw leak yield**. For a discovery tool (many distinct
gadgets > repeated copies of one) this is the right trade. Corroborated pre-RL
by the A/B diagnostic (unique-rate 0.85→1.00, similarity 0.25→0.15,
realize-rate 0.95→1.00). The earlier "pretraining is null" was the 3e-3 LR
artifact — confirmed by re-running at 1e-4.

**Multi-arch:** the generator conditions on and emits **x86_64 / arm64 /
riscv64**. Leak-verification exists for **x86 only** (all oracles are x86).

---

## Gaps

| gap | status | to close |
|---|---|---|
| **Verification is x86-only** | all oracles (Spectector/InvisiSpec/Revizor) are x86 | ARM oracle spike (`docs/ARM_ORACLE_SPIKE_PLAN.md`) — the pivotal step for VERIFIED multi-arch |
| **RISC-V generation unverified** | generator emits riscv64, but no riscv oracle | validate structurally/by-provenance; a riscv oracle is future work |
| **arm64 generated but unverified** | most training data (3434), emitted today, no arm oracle | ARM oracle spike (highest value) |
| **Benign-in-RL single-seed** | `--finetune-with-benign` ran once (unique-rate 0.955, 154 distinct) | multi-seed benign-vs-no-benign to claim it helps |
| **Scope: SPECTRE_V1 / x86_64** | headline is one class, one ISA | extend RL to other adjudicable classes; multi-class yield/diversity |
| **Yield vs diversity trade** | pretraining lowers raw yield (0.84→0.70) | inherent trade; report honestly, or explore a yield/diversity-balanced objective |
| **Realizer is x86-centric** | `gen/realize.py` / `_SPLICE_CONVENTION` | per-arch realizer needed before arm/riscv gadgets are runnable-for-an-oracle |

## One-line status
The generation model is a **working oracle-verified discovery loop for x86**:
rejection sampling raises validated-leak yield ~0.50→~0.97 with genuine
diversity, and (LR- and tokenizer-fixed) self-supervised pretraining
significantly improves gadget diversity at a yield cost. It **generates** three
ISAs but **verifies** only x86 — a per-arch leak oracle (ARM first) is the
gating dependency for a fully multi-arch discovery loop.
