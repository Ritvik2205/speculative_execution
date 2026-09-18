# SpecExec — generator arm status & results (2026-09-18)

Consolidates the gadget-generator (Step 4) results: the oracle-in-the-loop
rejection-sampling loop (the result) and the self-supervised pretraining
ablation (a clean null). All runs on the Edinburgh Teaching cluster; RL uses
the Spectector symbolic oracle via Apptainer.

---

## Headline (STRONG): oracle-in-the-loop rejection sampling raises validated-leak yield

The generator emits class-conditioned candidate gadgets; each is realized to
concrete asm and adjudicated by Spectector (symbolic SNI oracle); leaking
samples fine-tune the generator for the next round.

- **Validated-leak yield ~0.50 → ~0.97 in a single round**, then plateaus
  (SPECTRE_V1, x86_64). Reproduced across seeds (multi-seed round-0 yield
  0.500±0.026, overall 0.824±0.065).
- **The lift is genuine discovery, not mode collapse** — audited by
  `gen/analyze_rl_diversity.py`: on a representative run, 172 leaking samples →
  **117 distinct** leaking token-sequences, median pairwise similarity 0.32
  (0=disjoint, 1=identical). A collapsed generator would show ~1 distinct
  sequence at similarity ≈1.0.

This is the generator arm's contribution and stands on its own.

---

## Ablation (NULL, powered): self-supervised pretraining does NOT help

Question: does pretraining the generator's CondTransformerLM on a large corpus
of compiler-emitted function bodies improve it?

### Setup
- **Corpus:** 200k self-contained compilable C functions from **AnghaBench**
  (1M-function suite; each file is one dependency-inlined function), compiled to
  x86_64/arm64 and tokenized. Replaced the earlier the-stack whole-file source
  (84.5% unknown-arch, low compile yield). Built with the parallel + resumable
  `gen/build_pretrain_corpus_from_c.py` (`--from-local`), pretrained on GPU via
  `gen/pretrain.sbatch`.
- **Tokenizer alignment (prerequisite, and a real bug fix):** pretrain
  originally used `MultiArchTokenizer(mode="canonical")` (ISA-neutral ops:
  `VECTOR`/`ADD`/`BRANCH_COND`) while the generator uses `AsmTokenizer` (raw
  mnemonics: `movq <reg> <reg>`). Disjoint vocabularies → only the ~4 special
  tokens transferred (**init-from overlap 4/460**), so pretraining reached
  almost nothing. Fixed: pretrain now defaults to the generator's `AsmTokenizer`
  (`--tokenizer asm`). **Verified transfer: init-from overlap 4/460 → 322/460**
  (318 content tokens; 37 transformer tensors copied). So the ablation is a fair
  test, not a broken pipe.

### Result — multi-seed (3 seeds each, baseline vs pretrained)
`gen/rl_multiseed.md`, mean ± 95% CI:

| metric | baseline | pretrained | verdict |
|---|---|---|---|
| round-0 yield | 0.500±0.026 | 0.496±0.061 | tied (CIs overlap) |
| overall yield | 0.824±0.065 | 0.847±0.023 | tied |
| unique leaking gadgets | 95.3±31.4 | 71.7±10.5 | favors baseline |
| unique-rate | 0.638±0.157 | 0.506±0.066 | favors baseline |
| top-1 template multiplicity | 30.3±9.1 | 34.7±27.8 | favors baseline (less collapse) |

**Every CI overlaps → no significant difference on any metric. Every
non-tied point estimate leans AGAINST pretraining.**

### Why the single-run result was misleading
A first single run per arm looked pro-pretraining (round-0 yield 0.436→0.514,
unique leaking 117→137, top-1 multiplicity **37→8**). Under 3 seeds that
evaporates: baseline's top-1 is 30±9, pretrained's 35±28; the 37→8 was a lucky
draw. This is exactly why the multi-seed array (`gen/rl_multiseed.sbatch` +
`gen/aggregate_rl_multiseed.py`, CI-separation verdict) was run.

### Interpretation
The RL rejection-sampling loop is the real driver (yield 0.50→0.97 in one
round) and swamps any pretraining head-start. General C-function LM knowledge
does not transfer to the narrow leaking-gadget structure that 15 epochs of
fine-tuning on 5,532 SpecExec records already captures. This is a legitimate,
publishable **negative ablation**.

### Caveats
- n=3, wide CIs (underpowered). But estimates lean against pretrained, so more
  seeds will not turn this into "pretraining helps" — low ROI to chase.
- Seeding is real (cross-seed variance, e.g. unique_leak 95±31), so runs are
  independent and the null is trustworthy.
- Scope: SPECTRE_V1, x86_64.

---

## Paper framing
- **Contribution:** oracle-in-the-loop rejection sampling raises validated-leak
  yield ~0.50→~0.97 in one round, with audited genuine discovery (117 distinct
  leaking gadgets, median pairwise similarity 0.32), not mode collapse.
- **Ablation:** vocabulary-aligned self-supervised pretraining on 200k
  AnghaBench functions — verified 322/460 embedding transfer — gives no
  significant lift across 3 seeds. The rejection loop dominates.

## Reproduce
```
# corpus (compute node): sbatch gen/build_corpus.sbatch     # AnghaBench -> jsonl
# pretrain (GPU node):   sbatch gen/pretrain.sbatch          # -> gen/pretrained_angha.pt
# fine-tune:             python3 gen/train_generator.py --init-from gen/pretrained_angha.pt --save gen/generator_pretrained.pt
# multi-seed RL:         sbatch gen/rl_multiseed.sbatch       # {baseline,pretrained} x 3 seeds
# aggregate:             python3 gen/aggregate_rl_multiseed.py  # -> gen/rl_multiseed.md
```

## Key files
- `gen/rl_from_oracle.py` — oracle-RL loop (now `--seed`, persists `--samples-out`)
- `gen/analyze_rl_diversity.py` — discovery-vs-collapse audit
- `gen/rl_multiseed.sbatch` + `gen/aggregate_rl_multiseed.py` — powered comparison
- `gen/build_pretrain_corpus_from_c.py` — AnghaBench→corpus (`--stage-only`, `--hf-lang`, parallel/resumable)
- `gen/pretrain_encoder.py` — `--tokenizer asm` (aligned) | `canonical`
- `oracle/apptainer/{publish_spectector_ghcr,pull_spectector}.sh` — Spectector on the cluster
