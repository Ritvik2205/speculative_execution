# SpecDiscover Phase 0 & 1 — Rigor + Automation Flesh-Out

*Progress report. What we set out to test, how we tested it, what we found, and
what it means in plain language.*

---

## 0. Why this work

SpecDiscover extends SpecExec (a GINE classifier that labels x86/ARM assembly
windows with one of 9 speculative-execution vulnerability classes) toward an
automated, ISA-agnostic gadget-discovery pipeline. Phases 0 and 1 were already
built:

- **Phase 0** — a data-driven ISA "spec" engine (`spec/`) meant to replace the
  hardcoded per-ISA classification logic in the PDG builder.
- **Phase 1** — a self-supervised assembly encoder meant to replace hand-designed
  node features.

An adversarial review (grounded in Arp et al. *Dos and Don'ts of ML in Security*
USENIX'22, Chakraborty et al. TSE'21, and the Spectector/Revizor/HW-SW-contracts
line) found **both headline claims overreached**:

1. Phase 0's "0-mismatch, so the logic is now data" was **circular** — the spec
   was exported *from* the builder and validated *against* that same builder.
2. Phase 1's "learned features reach parity, so hand features are replaceable"
   was **single-seed, negative-gap, no equivalence test**, and "no hand regex"
   was **false** (the tokenizer and the whole speculative-edge graph are hand-built).

This effort makes the claims defensible **and** pushes the automation further —
rigor first, then automation. Every result below is reproducible from the named
script.

---

## 1. Methodology

Two tracks.

**Track A (rigor)** — replace optimistic/circular evidence with honest evidence:
independent-oracle validation, multi-seed equivalence testing, leakage-controlled
splits, and ablations that isolate what actually drives accuracy.

**Track B/C/D (automation)** — genuinely decompose the spec per ISA, remove
hidden hand-written regex, build an ISA-agnostic feature tier, test whether the
attack taxonomy can be learned, and stand up a brand-new ISA (RISC-V) from a spec
file alone.

All model comparisons use a **compact GINE proxy** (fast, many seeds) unless
stated as the **full v54 model**. The proxy is noisier but lets us run the
statistics the review demanded; large effects reproduce in the full model.

---

## 2. What was done, results, and plain-language meaning

### A1 — Independent external oracle
**Method.** Instead of comparing the spec to the builder it came from, assemble
each instruction with `llvm-mc` and read its category from the machine code via
`capstone` instruction groups — a ground truth that shares no code with our
regexes. (`spec/external_oracle.py`, `spec/validate_external.py`.)

**Result.** Over 25,942 unique (arch, instruction) pairs: **98.80% control-flow
agreement, 274 real disagreements**. Two bug classes, both in the original
builder: (1) missing mnemonics silently dropping speculation sources to OTHER
(x86 `jge/jle/jae/jbe`, ARM `blr` indirect calls, tab-separated branches);
(2) cross-ISA contamination (x86 `%bl`/`%bpl` matched as ARM branches).

**Plain language.** "Zero mismatches" only proved we copied the code faithfully,
not that the code was right. A truly independent checker found 274 genuine bugs —
including that ARM indirect calls (a prime Spectre-v2 ingredient) were being
ignored entirely.

### A2 — Multi-seed equivalence test (TOST)
**Method.** Run hand / learned / both node features over 10 seeds; run a
pre-registered TOST equivalence test (margin 0.5pp). (`eval/equivalence_tost.py`.)

**Result.** Learned node features are **−2.5 to −3.0 pp lower** than hand (90% CI
entirely below zero) with both the original and the scaled encoder — **not
equivalent, not even non-inferior**. `both` ≈ hand.

**Plain language.** The earlier "parity" (95.03 vs 95.63 on one run) was luck of
the seed. Run it properly ten times and the learned features are reliably worse
inside the graph model. So they do **not** replace the hand features there.

### A3 — Leakage-controlled generalization
**Method.** Compare a random split (leaks augmented copies of the same gadget
across train/test) to (a) group hold-out and (b) optimization-level hold-out
(train O0–O2, test O3). (`eval/splits.py`.)

**Result.** Random 97.0% acc / 94.2 macro-F1 → group hold-out **−4.9 pp acc /
−7.9 pp F1**; optimization hold-out **macro-F1 collapses 94 → 39**.

**Plain language.** The headline test set was too easy: near-copies of the same
code were on both sides. When the model must handle an unseen compiler setting,
its ability to tell the *rare attack classes* apart almost vanishes (accuracy
stays high only because "benign" dominates).

### A4 — What do the hand-authored speculative edges buy?
**Method.** Fix node features; remove the speculative edge types; re-measure.
(`eval/edge_ablation.py`.)

**Result.** Removing the speculative edges costs **~0 pp accuracy** but
**−3.75 pp macro-F1**.

**Plain language.** The elaborate attack-specific graph edges help only the rare
classes, not headline accuracy — which mostly rides simple opcode statistics.

### A5 — Reframed the paper
Rewrote the claims in `paper/specexec_methodology.tex`: "detection" → "triage,"
"replaceable" → "complementary," "0-mismatch" → "98.80% vs an independent oracle
+ 274 bugs," and flagged "a new ISA needs only a spec file" as tested (see D).

### B1 — Genuine per-ISA decomposition + retrain
**Method.** Split the merged x86+ARM grammar into ISA-only specs
(`spec/x86_64.json`, `arm64.json`) with the A1 bugs fixed, drive training from
the arch-aware spec engine (`train_gine_v38.py --use-spec-builder`), and retrain.

**Result.** External-oracle agreement **98.80% → 99.86%** (274 bugs → 31, the
rest an oracle-side quirk). Retrained model: **97.07% test accuracy vs 95.75
baseline (+1.32 pp)**, with **Spectre-V2 recall 76% → 94%** (the `blr` fix) and
**Spectre-V1 recall → 100%** (the `jcc` fix).

**Plain language.** Fixing the bugs the oracle found didn't just make the paper
honest — it made the model *better*, and specifically fixed the long-standing
"can't spot Spectre-v2" problem.

### B2 — Spec-driven tokenizer
Moved the last hidden hand-written regexes (immediate/memory/function operand
patterns) out of `spec/asm_tokenizer.py` into the spec. **0 changes across
207,113 instructions** — behavior identical, but the code now carries no
ISA-literal regex.

### B3 — Spec-sourced pipeline windows
The RSB pairing window (and all edge windows) now come from the spec instead of a
hardcoded constant; graph equivalence still exact (0 drift).

### B4 — ISA-agnostic feature tier
**Method.** Build features purely from the spec — opcode-category histogram,
speculation-flag aggregates, memory-type histogram, and a few universal counters
— with **no opcode/register/architecture literal in the code**
(`spec/spec_features.py`). Ablate vs the 58 hand features.
(`spec/ablation_spec_features.py`.)

**Result.**

| feature set | dim | test acc | macro-F1 |
|---|---|---|---|
| **spec-generic (0 ISA literals)** | 42 | **97.19%** | **93.09** |
| hand-58 (ISA literals) | 58 | 95.21% | 80.33 |
| hand + MLM | 186 | 95.87% | 91.03 |

**Plain language.** A feature extractor that knows *nothing* about specific
instructions — it only reads the spec's categories — **beats** the hand-tuned,
instruction-specific features by ~13 points of macro-F1. This is the real
"automated feature engineering": portable to any ISA, and better.

### B5 — Scaling the learned encoder
**Method.** Train a larger MLM on Apple MPS. Lesson: the default learning rate
diverged at 4 layers (loss stuck at 4.4); lowering it fixed training (loss 0.88).

**Result.** At the sequence level, **hand + MLM beats hand alone by +10.6 pp
macro-F1**.

**Plain language.** The learned encoder is genuinely useful — but as a
*complement* that helps the rare classes, not as a drop-in replacement.

### C — Can the attack taxonomy be learned?
**Method.** Predict the 14 hand-written speculation tags from (i) the learned
embedding alone, (ii) spec category+memory alone, (iii) both.
(`spec/learn_taxonomy.py`.)

**Result.** Structural tags (is_branch, is_memory_access, is_cache_probe, …)
recover 90–100% from self-supervision. **The attack-specific tags
(is_secret_source, is_transmitter, is_serializing) do not (23–45%).** But given
the spec's category+memory (which *is* automatable), a learned head reproduces
the full taxonomy at **98.9%**.

**Plain language.** A model can learn what an instruction *does* (it's a branch,
it touches memory) from raw code, but it cannot invent the *security meaning*
("this load reads a secret") on its own — that stays human knowledge. Given the
structural facts, though, the tag *rules* can be learned rather than written.

### D — A brand-new ISA (RISC-V) from a spec file
**Method.** Author `spec/riscv.json` blind from the RV64GC manual; add RISC-V to
the oracle; classify a RISC-V gadget and build its graph — **with no change to
any classification code**.

**Result.** RV64 instructions classify correctly (`lw/ld`→LOAD, `sltu`→COMPARE,
`beqz`→BRANCH_COND, `jalr`→CALL_INDIRECT, `ret`→RET) and a valid speculative PDG
graph is built (SPEC_CONDITIONAL / SPEC_INDIRECT / RSB_CHAIN edges present).
Honest limit: RISC-V has no base+index addressing, so the INDEXED-based attack
tags don't fire — structure ports, the attack tags need per-ISA definition
(consistent with C).

**Plain language.** Adding a third, structurally different instruction set took a
single JSON file and no code — the front end is genuinely ISA-general. The
attack-specific part still needs a human to describe how *that* ISA leaks.

---

## 3. Overall takeaways

- **Honesty upgrade:** the strong claims ("replaceable," "0-mismatch," "only a
  spec file," "detection") are now correctly scoped ("complementary,"
  "98.80% vs independent oracle," "spec-file front end, per-ISA attack tags,"
  "triage").
- **Rigor that paid:** the independent oracle found real bugs whose fixes
  *improved* the model (+1.3 pp; Spectre-V2 recall 76→94).
- **The defensible automation win** is the ISA-agnostic spec-feature tier (beats
  hand features, ports to any ISA), not the self-supervised encoder (which is a
  complement).
- **The irreducible human part** is the attack taxonomy — confirmed twice (C and
  D).

## 4. Follow-up results

### Real RV64 corpus (done)
Installed `riscv64-elf-gcc` and compiled the C corpus to **498 RV64 assembly
files (19,475 instructions)** in `riscv_corpus/` (minimal stub headers stand in
for the missing libc; x86 intrinsics stubbed). Running the spec-file-only front
end on this real compiled corpus (`spec/validate_riscv_corpus.py`):

- **498/498 PDG graphs built** (349 with speculative edges);
- OTHER (unrecognized) fraction **13.4%**;
- external-oracle control-flow agreement **88.2%** — and every remaining
  disagreement is *oracle-side* (capstone mis-groups RISC-V pseudo-instructions
  like `jr ra`, `j`, and two-instruction `call` expansions); the spec is correct.

Two genuine spec gaps found and fixed by editing `riscv.json` only (added the
`ble/bgt/bleu/bgtu` branch pseudos; `jr ra` → RET). **Plain language:** a third
instruction set, described entirely in one JSON file, correctly parses a real
compiled corpus with no code changes — and when the independent checker flagged
issues, the fix was a spec edit, not a code change.

### Full-model multi-seed TOST (in progress)
The A2 equivalence test used the fast compact proxy. The expensive confirmation
trains the **real v54 GINE** for hand/learned/both over 5 seeds each
(`eval/run_full_tost.sh` + `eval/full_tost_aggregate.py`, using the B1 spec
builder and scaled MLM). Results will be appended here.

### Minor
- AT&T `movzbl` classifies as OTHER (should be MOVE; pre-existing, not a
  regression).

## 5. Reproduce

| Result | Command |
|---|---|
| A1 external oracle | `python spec/validate_external.py` |
| A2 TOST | `python eval/equivalence_tost.py --mlm-path spec/mlm_large.pt` |
| A3 splits | `python eval/splits.py` |
| A4 edge ablation | `python eval/edge_ablation.py` |
| B1 retrain | `python v54/train_gine_v38.py … --use-spec-builder` |
| B4 feature ablation | `python spec/ablation_spec_features.py` |
| C learn taxonomy | `python spec/learn_taxonomy.py` |
| D RISC-V | load `spec/riscv.json`; see report §2.D |
