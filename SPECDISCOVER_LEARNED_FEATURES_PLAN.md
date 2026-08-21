# Learned-Feature Rework — Implementation Plan

*Grounds Speaker 1's (PI) three todos from the sync call against the current
codebase, then breaks them into buildable phases. Speaker 1's stated
priority order: (1) fix the learned-features pipeline first, (2) then push
generator/synthesis further, (3) the "attacks outside our fixed class set"
concern was raised but not assigned as concrete work — kept as a parked
open question at the end, not a phase.*

---

## 0. Grounding: what actually exists today (checked against code, not memory)

### The embedding mechanism Speaker 1 was diagnosing

`spec/train_mlm.py`'s `MlmEncoder.embed_sequence()` is **not** a sliding
7-instruction window as Speaker 2 described on the call. It's a 2-layer
transformer encoder (`dim=64`, `max_len=256`) that runs self-attention over
the **entire stored sequence at once**, then **mean-pools every
per-instruction output into one vector** (`train_mlm.py:94-98`):

```python
def embed_sequence(self, tokens):
    h = self.embed_instructions(tokens)   # [n, dim], one row per instruction
    return h.mean(0)                       # single vector — flat average
```

So Speaker 2's mental model ("window of ~7, slides down the sequence") was
wrong, but Speaker 1's diagnosis was right anyway, just for a different
reason: mean-pooling over a whole sequence has the *same* dilution failure
mode as overlapping sliding windows — a handful of instructions that make an
attack an attack get flattened into an average dominated by the housekeeping
instructions around them, once the sequence is long enough that housekeeping
outnumbers signal.

### Actual sequence lengths in the training data

Checked `v54/data/v54_train.jsonl` (n=5,533) directly — not the ~7 Speaker 2
guessed, and not close to Alik's ~800-1000 recommendation either:

```
min=4  max=500  mean=27.9  median=28
buckets: <10: 204, 10-29: 3617, 30-59: 1607, 60-99: 51, 100-255: 37, >=256: 17
```

87% of records are 10-59 instructions. `MlmEncoder.max_len=256` only
truncates 17 records total — truncation is not the bottleneck.

Separately, `scripts/wsl_trace_extract.py:48` (the real-hardware trace
extractor built for the Revizor/WSL oracle work) uses `TARGET_LEN = 30`
instructions per record — i.e. the one place in this codebase that already
extracts windows from *actual execution traces* independently converged on
~30, not ~800-1000. This is a real tension with Alik's suggestion (below,
Phase 3) rather than something to take on faith either way.

### The learned-vs-hand result Speaker 2 reported is already measured, not anecdotal

`eval/per_class_lift_results.json` (cached 5-seed run, what
`scripts/run_feature_gate.sh` reads) confirms exactly what Speaker 2 told
the call, with numbers:

| class | hand-58 | hand+MLM | diff | significant |
|---|---|---|---|---|
| SPECTRE_V2 | 87.66% | 75.84% | **−11.82pp** | **yes** |
| L1TF | 63.78% | 75.68% | +11.89pp | yes* |
| RETBLEED | 92.27% | 95.47% | +3.20pp | yes |
| BENIGN | 99.59% | 97.34% | −2.25pp | yes |
| everything else | — | — | small, not significant | no |

*\*Per-project memory: a later 10-seed Bonferroni-corrected re-run found
L1TF's lift does **not** replicate (+0.049, CI crosses zero) — only
SPECTRE_V2's regression survives multi-seed scrutiny. Treat "L1TF improves"
as retracted; SPECTRE_V2 regression is the one real, reproducible finding.
This is the actual "before" baseline this plan needs to move.*

### What does NOT exist yet (so these are new builds, not wiring)

- No class-representative / benign-diff mechanism. `spec/dataflow_taint.py`
  is the closest relative — it does a structural graph diff, but it's a
  hand-specified LOAD←SHIFT←LOAD pattern detector, not a generic
  learned-embedding differencing step.
- No cosine-similarity-based pruning anywhere in the embedding path.
- No per-instruction embedding output is currently consumed downstream —
  only the mean-pooled `embed_sequence()` vector feeds the RF ablation
  (`spec/ablation_spec_features.py`) and GINE fusion. Any of Phase
  1/2/3 below needs to add a new consumer, not just a new producer.

### Synthesis pipeline (Speaker 1's #2 priority, for after #1 lands)

Matches Speaker 2's "<10% accuracy in generated attacks" claim on the call:
`eval/check_syntactic_validity_results.txt` — **7/300 (2.3%) of generated
gadgets are fully syntactically valid** (all instructions assemble); 71.5%
of individual instructions are valid, so failures are concentrated, not
uniform. `gen/realize.py`'s `<fn>` placeholder bug was already fixed this
audit cycle (`unresolved_placeholder` 45.9%→18.6%), which is exactly the
"syntax issues... fixing those" Speaker 2 flagged as next step — partially
done, not started from zero.

---

## 1. Phase 1 — Class-representative differencing (Alik's proposal)

**Goal:** replace flat mean-pooling with an embedding that's deliberately
built to emphasize what's *different from benign*, not what's common.

**Design, translated from the call into something buildable:**

1. For each class `c`, build a **representative PDG**: embed every training
   record's instructions with the existing `MlmEncoder`, compute each
   record's per-instruction embedding matrix, and pick the record whose
   mean-pooled vector is closest (cosine) to the class centroid — "sitting
   in the middle" per Alik's description. Do this once per class, cache to
   `spec/class_representatives.json` (or `.pt` for embeddings).
2. Build one **benign representative** the same way.
3. For a new record, align its instructions against the benign
   representative (simple approach first: per-position cosine similarity
   between the record's per-instruction embeddings and the closest-matching
   window in the benign representative — do *not* attempt full graph
   alignment yet, that's Phase 2 territory and Alik flagged it as the thing
   that needs "keep a window here" nuance).
4. Instructions above a similarity threshold to the benign representative
   are masked out of the pool; the embedding becomes the mean of the
   **remaining** (attack-divergent) instruction vectors only.
5. This directly implements Alik's correction to Speaker 1's naive
   "similarity threshold, discard everything above it" — Alik's point was:
   don't blindly strip conditionals shared with benign loops if a leak
   instruction happens to sit inside one; keeping a local window around any
   kept instruction (not just the single instruction) addresses that. Build
   the mask with a small dilation radius (±2 instructions) around anything
   that survives thresholding, not a single-instruction mask.

**New file:** `spec/class_diff_features.py`
- `build_class_representatives(train_jsonl, mlm, out_path)`
- `diff_embed_sequence(tokens, mlm, benign_repr, threshold=T, dilate=2) -> np.ndarray`

**Evaluation:** wire as a 7th config in `spec/ablation_spec_features.py`
(`"spec+hand+diffMLM"` alongside the existing 6), same multi-seed harness
already in that file (`--seeds`), same locked-split + group-holdout pair
already used for every other ablation in this project. Compare against the
`hand+MLM` row directly — the exact row Speaker 2's −11.82pp SPECTRE_V2
number came from. **Pass/fail criterion: does SPECTRE_V2 recall stop
regressing, without giving back RETBLEED's confirmed +3.20pp gain?**

---

## 2. Phase 2 — Cosine-similarity pruning as a standalone ablation

Split out from Phase 1 deliberately, because Speaker 1 and Alik proposed two
*different* mechanisms in the call (representative-diffing vs.
redundancy-pruning) and conflating them would make it impossible to tell
which one moved the needle.

**Design:** within a single record's own instruction sequence (no
cross-record benign comparison), greedily drop instructions whose embedding
has cosine similarity above threshold `T` to an already-kept neighbor,
before mean-pooling. This tests Speaker 1's originally-stated hypothesis in
isolation: "redundant near-duplicate windows dilute the pool" — independent
of whether benign-diffing helps at all.

**New function:** `spec/class_diff_features.py::prune_redundant(tokens_emb, threshold)`
(same file as Phase 1, different entry point, so both can be ablated
independently and combined).

**Evaluation:** two more `ablation_spec_features.py` configs:
`"spec+hand+prunedMLM"` (pruning only, no benign-diff) and
`"spec+hand+diff+prunedMLM"` (both combined). Four-way comparison against
baseline `hand+MLM` isolates which mechanism, if either, is doing the work.

---

## 3. Phase 3 — Window-size experiment (Alik's 800-1000 suggestion)

**Do not implement blindly** — Phase 0 grounding above shows this
contradicts what the rest of the codebase already learned empirically
(`wsl_trace_extract.py` converged on 30 from real hardware traces; current
corpus median is 28). Two explanations are consistent with the data and
need to be told apart before spending compute:

- **(a)** Alik is right that assembly needs much more context than the
  current fragments give it, and the existing 28-median corpus is
  *itself* undersized — in which case this isn't just an embedding
  parameter sweep, it's a corpus-extraction change
  (`scripts/extract_large_windows.py` already supports up to
  `window_sizes=[30,40,50]`; extending it to test larger windows is
  cheap).
- **(b)** The corpus's fragments (c_vulns's ~21 runnable PoCs plus
  pattern-exemplar fragments — see project memory on corpus reality) are
  fundamentally shorter than a full program, so 800-1000 would mean
  padding fragments with unrelated surrounding code, adding noise rather
  than context.

**Concrete, cheap test before committing to a re-extraction:** re-run
`spec/ablation_spec_features.py` filtering the *existing* pool to only
records with `len(sequence) >= 100` (37+17 = 54 available at 100+, small
but nonzero) vs. matched-size records `<100`, holding the mean-pool
mechanism fixed. If longer existing records already show less dilution
benefit from Phase 1/2's fixes, that's evidence for (a) before spending
effort re-extracting the whole corpus at 800-1000. If Phase 1's diffing
mechanism closes the gap regardless of length, window size was never the
bottleneck and Alik's suggestion can be deprioritized without a large
re-extraction effort.

---

## 4. Phase 4 — Feed back into synthesis (Speaker 1's #2 priority)

Only start after Phase 1/2 produce a config that beats `hand-58` alone on
the `run_feature_gate.sh` per-class lift check without a significant
regression anywhere (the bar Speaker 2's current numbers fail on
SPECTRE_V2). Speaker 1 was explicit about this order on the call.

- Swap whichever embedding wins into the generator's feature-conditioning
  path (`gen/` — same models Phase 2 generator training used, see
  project memory `specdiscover-phase2-generator`).
- Re-run `gen/check_syntactic_validity.py` against the current 2.3%
  baseline and the already-improved `unresolved_placeholder` fix — this
  plan does not re-litigate the placeholder fix, only measures whether
  better conditioning features move syntactic validity further.

---

## 5. Parked, not scoped here: the "attacks outside our 8 classes" concern

Speaker 1 raised this early in the call (novel/cross-cutting vulnerabilities
that don't map to any of the 8 trained classes) but explicitly deferred it
("let's forget about the reasoning first") and never assigned it as a
concrete action item — no todo, no owner, no next-sync deliverable tied to
it. Not included as a phase. If it becomes a real ask, the natural framing
given everything above is an anomaly-detection head sitting on the same
fusion vector Phase 3's ranker was designed to attach to
(`v54/gine_classifier_v38.py:313`, per project memory) — flagging this only
so it's not lost, not proposing it as work to start now.

---

## Sequencing summary

| Phase | Depends on | New files | Gate to pass before moving on |
|---|---|---|---|
| 1. Class-diff embedding | none | `spec/class_diff_features.py` | SPECTRE_V2 stops regressing vs `hand+MLM` |
| 2. Redundancy pruning | none (parallel to 1) | same file, new fn | isolates which mechanism (if either) works |
| 3. Window-size test | Phase 1/2 result | reuse `extract_large_windows.py` | only re-extract corpus if cheap test (a) supports it |
| 4. Synthesis feedback | Phase 1 or 2 winner passes gate | `gen/` wiring only | syntactic validity measured, not assumed |
| (parked) novel-attack detection | — | — | no gate, not started |

All four phases reuse the existing multi-seed harness
(`spec/ablation_spec_features.py --seeds`), the existing gate script
(`scripts/run_feature_gate.sh`), and the existing lift-significance
convention (paired CI, Bonferroni at 10 seeds) already established in this
project — no new evaluation infrastructure needed, only new feature-producing
code plugged into what's there.

---

## Results — Phase 1/2/3 built and run (10 seeds)

**Built:** `spec/class_diff_features.py` (`build_class_representatives`,
`diff_keep_mask`/`diff_embed_sequence`, `prune_keep_mask`/
`pruned_embed_sequence`, `diff_pruned_embed_sequence`), wired as 6 new
configs into `spec/ablation_spec_features.py`. Gate check:
`eval/phase12_class_diff_multiseed.py` (10 seeds, paired-by-seed vs
`hand+MLM`, results in `eval/phase12_results.json`). Phase 3 cheap test:
`eval/phase3_window_length_check.py`.

**Important scope caveat found while evaluating:** the −11.82pp SPECTRE_V2
regression that motivated this whole plan was measured on the **GINE
classifier** (`eval/full_tost`, cached in `eval/per_class_lift_results.json`
— the number `run_feature_gate.sh` reports). Phase 1/2's gate check runs on
the **RF ablation harness** (`spec/ablation_spec_features.py`), per this
plan's own stated evaluation method — a different model. In the RF harness,
flat `hand+MLM` does **not** reproduce the regression at all: SPECTRE_V2
recall is hand-58 73.70% → hand+MLM 78.25%, **+4.55pp, significant**, the
opposite direction. So Phase 1/2's mechanisms are validated against the
correct baseline *for the harness the plan specified*, but this result does
not by itself confirm or fix the original GINE-measured regression — that
would need the winning mechanism wired into `v54/gine_classifier_v38.py`'s
fusion vector (Phase 4 territory, not attempted here).

**Phase 1/2, 10-seed result (`eval/phase12_class_diff_multiseed.py`):**

| config | test-acc | macro-F1 | SPECTRE_V2 recall | vs hand+MLM |
|---|---|---|---|---|
| hand-58 | 94.84±0.29% | 79.95±0.56% | 73.70±2.97% | — |
| hand+MLM (baseline) | 95.35±0.26% | 83.77±3.65% | 78.25±2.68% | — |
| hand+diffMLM | 95.64±0.32% | 83.95±3.47% | 80.97±3.82% | +2.73pp, p=0.218 |
| hand+prunedMLM | 95.75±0.33% | 84.44±3.55% | 82.66±3.50% | +4.42pp, p=0.081 |
| hand+diff+prunedMLM | 95.71±0.27% | **85.45±3.61%** | 81.17±2.74% | +2.92pp, p=0.097 |

None of the three mechanisms hit p<0.05 for SPECTRE_V2 at n=10 seeds (small
class, wide CIs — consistent with this project's established pattern of
needing 10+ seeds and still landing on "trend, not proof" for single
classes). But the direction is consistently positive, and critically **none
regress RETBLEED or BENIGN** (flat, ±0.3pp, not significant) — the failure
mode the plan explicitly guarded against. `hand+diff+prunedMLM` gives the
best macro-F1 and a real, **significant** L1TF gain (+2.43pp, p=0.010).
Best overall candidate: **`hand+diff+prunedMLM`**.

**Phase 3 cheap test result:** inconclusive by sample size, not by
hypothesis. The locked test set only has **16 records** with
`len(sequence) >= 100` — accuracy on that bucket was identical (75.00%,
12/16) for both configs across all 10 seeds (degenerate 0.00pp CI, no room
to show a difference with 16 examples). The `len<100` bucket (1654 records)
showed a small but real gain (+0.36pp, p=0.035) for `diff+prunedMLM`. This
does **not** support re-extracting the corpus at Alik's 800-1000 window —
not because the hypothesis is refuted, but because there isn't enough
long-sequence data in the current corpus to test it at all. Re-extracting
139 files' worth of longer windows on the strength of a 16-example
inconclusive check would be the wrong sequencing; if window size still
matters after Phase 4, that's the point to revisit this with a
purpose-built longer-window subset rather than the existing locked split.

**Update — Phase 4 has since been started; see below.** The remainder of
this doc supersedes the "not started" note above.

---

## Phase 3, expanded — what window size is actually reachable, and how to test it properly

### The 800-1000 instruction target is not reachable at any real scale in this corpus — checked directly, not assumed

Census over all 1,406 `.s` files under `c_vulns/` (crude instruction count:
non-empty, non-directive, non-label lines — whole-file, not just the
extracted gadget window):

```
n=1406  min=8  max=1398  mean=36.6  median=28.0
files with >=   50 instructions:  151 (10.7%)
files with >=  100 instructions:   20 (1.4%)
files with >=  200 instructions:   20 (1.4%)
files with >=  400 instructions:    5 (0.4%)
files with >=  800 instructions:    3 (0.2%)
files with >= 1000 instructions:    3 (0.2%)
```

**Only 3 of 1,406 files could supply even a single 800+ instruction
window.** This matches project memory's standing note on corpus reality:
c_vulns is ~21 runnable PoCs plus pattern-exemplar *fragments*, not full
programs — Alik's 800-1000 recommendation implicitly assumes execution
traces or full-program disassembly, neither of which this corpus is. This
isn't a reason to drop the idea, but it reframes it: **window size can't be
pushed past what the corpus's own file lengths allow without a real data
collection effort first**, and that effort is bigger and separate from a
feature-engineering change.

### Revised, reachable window-size ladder

Test the ladder the data actually supports: **30 (current) → 50 → 100**,
using the 151 files with ≥50 instructions as the pool (10.7% of the
corpus — thin, but real, unlike the 16-record bucket the original cheap
test found). Do **not** attempt 200+ until this ladder's trend is measured
— if recall keeps climbing through 100 with no plateau, that's the
evidence needed to justify a real data-collection push (see below) for
200-400; if it plateaus by 50-100, larger windows were never the
bottleneck and the diff-gating mechanism (Phases 1/2/4) was already the
right fix.

### Two techniques to compare at each window size, not one

The call surfaced two different ideas for "how do we learn features" that
this plan keeps distinguishing rather than conflating:

1. **Bigger flat context** (Alik's original ask): retrain `MlmEncoder` with
  a larger `max_len` so self-attention sees more instructions at once.
  Requires: extending `pos_emb = nn.Embedding(max_len, dim)` — these are
  *learned* positional embeddings, not sinusoidal, so positions beyond the
  old `max_len=256` don't exist in the current checkpoint at all; this is a
  from-scratch MLM retrain, not a fine-tune. Attention cost grows
  quadratically (~4x compute at max_len=100 vs current typical sequences,
  trivial for this model's size — dim=64/128, 2 layers — even on CPU).
2. **Hierarchical / chunked context** (not discussed on the call, added
  here as the standard alternative once window size is being pushed beyond
  what's typical for BERT-style models): split a long sequence into
  overlapping ≤256-token chunks, embed each chunk with the *existing*
  `mlm_large.pt` unchanged, then mean-pool (or diff+prune-pool, reusing
  Phase 1/2) the chunk-level vectors. No retrain needed, reuses the
  checkpoint that's already validated, and sidesteps the "does a bigger
  positional table even help" question entirely — worth running as a
  cheaper first data point before committing to option 1's retrain, since
  at the 50-100 range chunking is almost certainly unnecessary overhead
  (well under 256) and the two techniques should converge; they'd only
  diverge if the ladder is pushed toward 200-400 later.

**Recommendation: run technique 1 (retrain at max_len=128, covering the
50-100 ladder with headroom) first** — it's the simpler change and the
ladder doesn't yet require chunking. Only build technique 2 if a future,
real data-collection effort pushes window size past ~200, where a single
retrain's positional table starts getting expensive/sparse to train well
from only 151-20-5 files at increasing size buckets.

### Experiment design (group-holdout, matched source files, honest about leakage)

- New extraction: `scripts/extract_large_windows.py` already supports
  `window_sizes` (currently `[30, 40, 50]`) — extend to
  `[30, 50, 100]` and run against the same 151-file pool so every size
  bucket draws from the *same underlying source files*, not different
  ones (removes a confound: if size-100 windows come from different,
  systematically different files than size-30 windows, any recall change
  could be a file-selection artifact, not a window-size effect).
- **Group-holdout by `source_file`** (this project's established leakage
  control, see G1 in `SPECDISCOVER_VERIFICATION_GAPS.md`) is mandatory
  here specifically because multiple window sizes drawn from the *same*
  file are correlated — a random split could put a 30-window and a
  100-window from the same function in train and test respectively,
  leaking the answer.
- Retrain MLM at `max_len=128` on this pool; recompute
  `hand+diff+prunedMLM` (RF ablation) and `diff_gated_both` (GINE, Phase
  4) at each window size, 5 seeds each, group-holdout split — 3 sizes × 2
  eval harnesses × 5 seeds = 30 runs, cheap relative to a full corpus
  re-extraction.
- **Decision rule, made concrete:** plot SPECTRE_V2/L1TF recall vs. window
  size (30/50/100). Flat or declining → window size was never the
  bottleneck, stop here, Phase 1/2/4's diff-gating is the actual fix.
  Monotonically increasing with no plateau by 100 → justifies a real
  data-collection effort (new PoCs / longer traces via
  `scripts/wsl_trace_extract.py`'s hardware-trace pipeline, which is the
  only mechanism in this codebase that can produce genuinely long,
  non-fragment sequences) before trying 200+.

---

## Phase 4, expanded — v56 GINE variant (built) + benchmark plan

### Why Phase 1/2's mechanism needed a redesign for GINE, not a direct port

Checked `v54/train_gine_v38.py` directly before building anything: GINE's
`--node-feature-mode learned/both` already feeds **per-instruction MLM
embeddings as per-node graph features**
(`mlm.embed_instructions(toks)` at `train_gine_v38.py:277`, one row per
PDG node) — real message-passing over per-node vectors, not the flat
mean-pool `embed_sequence()` the RF ablation harness uses. So the exact
dilution failure Phase 1/2 was built to fix **doesn't literally exist** at
this layer — porting `diff_pruned_embed_sequence` (which returns one
pooled vector) into GINE would have thrown away the graph's real per-node
structure to fix a problem specific to a different, simpler model.

**Redesign, implemented:** a per-node **soft gate**, not a pooled
replacement. `spec/class_diff_features.py::node_gate_scores(H,
benign_repr_H)` runs the same two-stage logic (benign-diff, then
redundancy-prune within the divergent subset) but returns one scalar per
node in `{0.15, 1.0}` — `0.15` is a *soft* suppression floor, not a hard
zero, chosen to match this project's existing precedent (the virtual-node
gate elsewhere in the GINE stack uses `sigmoid(-2)≈0.12` for the same
"down-weight, don't erase" reason — see project memory,
"Older Architecture Notes"). Divergent/non-redundant nodes get gate=1.0
(unchanged); benign-like or redundant nodes get their MLM embedding
scaled by 0.15 before concatenation with the existing 40-dim hand node
features — the graph topology and message-passing are completely
untouched, only the *input feature strength* on uninformative nodes is
suppressed.

### Built

- `spec/class_diff_features.py`: added `node_gate_scores()`.
- `v56/` (forked from `v54/`, the feature-complete parent — `v55` is a
  parallel augmentation-only experiment branch that predates
  `--use-spec-builder`/`--node-feature-mode`/the `riscv64` ARCH_VOCAB fix,
  confirmed by diffing the two directories, so `v54` is the correct base
  to fork from, not the numerically newer `v55`):
  - `train_gine_v38.py`: two new `--node-feature-mode` choices,
    `diff_gated` (learned-only, gated) and `diff_gated_both` (hand + gated
    learned) — same dims as `learned`/`both`, only the per-node MLM tensor
    changes. `GINEDatasetV47` takes a new `benign_repr_H` param, built once
    from **train records only** (no test leakage) via
    `class_diff_features.build_class_representatives` before dataset
    construction, passed identically to train/val/test datasets.
  - `run.sh`: single-seed sanity config (`diff_gated_both`,
    `--use-spec-builder`, `mlm_large.pt`, matching the "current best"
    recipe from project memory — 96.14%±1.59, `viz_v54_spec`) — reuses
    `../v54/data/*.jsonl` directly, no new dataset needed since this is a
    feature-computation change, not a data change.
  - `eval/run_v56_multiseed.sh`: 4-mode (`hand`/`learned`/`both`/
    `diff_gated_both`) × N-seed driver, same TSV convention as
    `eval/run_full_tost.sh`, **built shardable** (`MODES`/`SEEDS` env vars)
    for the multi-machine plan below.

**Smoke-verified** (3 epochs, seed 42, `--use-spec-builder
--node-feature-mode diff_gated_both`): trains end-to-end, `node_feat_dim=169`
(40 hand + 128 MLM + 1 pos, as designed), reaches 93.71% test accuracy in 3
epochs — sane for a smoke test, not a result to cite. Full multi-seed run
not yet executed locally (see machine-split plan below) — that's the actual
benchmark this phase needs before drawing conclusions.

### Benchmark plan — what "vs previous versions" means concretely

| checkpoint | node features | recipe | source |
|---|---|---|---|
| v54 (`viz_v54`) | hand only | no `--use-spec-builder` | plain baseline, 95.75% (single best run) |
| v54-spec (`viz_v54_spec`) | hand only | `--use-spec-builder` | **current best**, 96.14%±1.59 (5 seeds) — the number v56 needs to beat or match |
| v55 (`viz_v55`) | hand only | augmentation-fix branch, no spec builder | separate experiment, not directly comparable (different data pipeline) |
| `both` (from `eval/full_tost`) | hand + flat learned per-node | `--use-spec-builder` | the run that showed −11.82pp SPECTRE_V2 (cached, `eval/per_class_lift_results.json`) |
| **v56 diff_gated_both (new)** | hand + gated learned per-node | `--use-spec-builder` | this phase's candidate |

Run `eval/run_v56_multiseed.sh` with all 4 modes so `hand` and `both` are
**re-measured on the same seeds/run** as `diff_gated_both`, not pulled from
the older `eval/full_tost` cache — training code has changed since that
cache was produced (G11 leak fix, G12 column-bug fix, dataflow_taint), so a
fresh apples-to-apples run removes any doubt about whether an old cache is
stale. Primary comparison: does `diff_gated_both`'s SPECTRE_V2 recall beat
`both`'s (the −11.82pp regression) while staying within noise of
`hand`/v54-spec's 96.14% overall accuracy? Secondary: does it beat
`hand`+`both` on L1TF the way Phase 1/2's RF-level `diff+prunedMLM` did
(+2.43pp, significant)?

---

## Phase 4 — multi-machine seed-gathering plan

**Goal:** get `eval/run_v56_multiseed.sh`'s 4 modes × 10 seeds (this
project's established rigor threshold for a class-level significance claim,
per the per-class-lift-gate memory) run without tying up one machine for
the full matrix serially.

### Split

- **This machine (Mac, MPS via `.venv_fix`):** modes `hand`, `learned` — the
  two reference points, cheaper since `hand` has no MLM node features and
  `learned` reuses the already-loaded `mlm_large.pt` path already exercised
  in this session. Seeds `42 1 7 13 21 99 123 55 88 7000` (same 10-seed set
  used in `eval/phase12_class_diff_multiseed.py`, for consistency across
  this whole plan's results).
- **Linux machine:** modes `both`, `diff_gated_both` — the two that need
  the new `node_gate_scores` path exercised most (and `both` needs
  re-measuring fresh per the point above). Same 10 seeds.
- Total: 4 modes × 10 seeds = 40 runs, 20 per machine. At the smoke test's
  ~10s/epoch × ~15-30 effective epochs (patience 12, rarely trains the full
  100), each run is roughly 3-6 minutes — 20 runs ≈ 1-2 hours per machine,
  parallelizable further within a machine if it has multiple cores/GPUs
  free (`train_gine_v38.py` doesn't currently support multi-GPU, so
  "parallel" here means multiple concurrent single-GPU/CPU processes if
  the Linux box has more than one GPU, otherwise sequential).

### How to run the Linux shard

```bash
# on the Linux machine, same repo checked out, same commit:
cd SpecExec
pip install -r v56/requirements.txt
MODES="both diff_gated_both" \
SEEDS="42 1 7 13 21 99 123 55 88 7000" \
./eval/run_v56_multiseed.sh
```

This writes `eval/v56_multiseed/results.tsv` and per-run logs
(`eval/v56_multiseed/{mode}_s{seed}.log`) on that machine only — nothing
overwrites the Mac's shard because each machine's `results.tsv` only ever
gets appended to by that machine's own runs (`run_v56_multiseed.sh` writes
to a per-invocation temp file first, then appends — safe to run the two
shards independently without a shared filesystem).

### Merging

1. Copy the Linux machine's `eval/v56_multiseed/results.tsv` (and, if disk
  allows, its per-seed `viz_*` checkpoint dirs, for later error analysis)
  back to this machine — `scp`/rsync into a distinct path, e.g.
  `eval/v56_multiseed/results_linux.tsv`, so nothing clobbers the Mac's own
  `results.tsv`.
2. `cat eval/v56_multiseed/results.tsv eval/v56_multiseed/results_linux.tsv
  > eval/v56_multiseed/results_combined.tsv` — the TSV format (mode, seed,
  acc, f1, spectre_v2_recall, l1tf_recall) has no header row, so a plain
  concatenation is safe as long as seed sets don't overlap between the two
  files for the same mode (they won't, by construction — see split above).
3. **Before trusting the combined file**, sanity-check no duplicate
  (mode, seed) pairs exist (`awk -F'\t' '{print $1,$2}'
  results_combined.tsv | sort | uniq -d` should print nothing) — a
  duplicate would silently double-weight one run in the mean/CI.
4. Extend `eval/phase12_class_diff_multiseed.py`'s `ci95`/paired-t pattern
  into a small `eval/aggregate_v56_multiseed.py` that reads the combined
  TSV directly (no retraining, just aggregation — matching
  `eval/per_class_lift.py`'s "reads cached results" convention) and
  reports the same per-class recall table + paired-vs-`hand` significance
  test this whole plan has used throughout, so the final verdict on v56
  uses the identical statistical convention as every other claim in
  `SPECDISCOVER_VERIFICATION_GAPS.md`.

### Environment parity (the thing most likely to silently break this)

- Pin the exact commit both machines run from (`git rev-parse HEAD`,
  recorded in the results dir) — the training code, `mlm_large.pt`, and
  `v54/data/*.jsonl` must be byte-identical between machines, or the
  "same experiment on two machines" premise breaks silently. Check
  `sha256sum spec/mlm_large.pt v54/data/v54_train.jsonl
  v54/data/v54_test.jsonl` matches on both sides before trusting results.
- `v56/requirements.txt` (copied from v54) doesn't pin torch/CUDA version —
  Linux with a real GPU will use a different torch build than this
  machine's `.venv_fix` (MPS-specific). This is expected and fine for
  wall-clock speed, but if results look meaningfully different between
  machines beyond normal seed variance, check for a torch/CUDA
  nondeterminism difference before concluding it's a real effect —
  `train_gine_v38.py`'s `torch.manual_seed` controls Python/NumPy/CPU RNG
  but cuDNN algorithms are not bitwise-deterministic across GPU
  architectures by default.

---

## RISC-V diagnostic — technique choice isn't the bottleneck, vocabulary coverage is

**Run:** `eval/diagnose_riscv_learned_features.py`. Trains RF on
`v54_train` (x86_64/arm64 only — confirmed zero riscv64 rows) with each
Phase 1/2 feature config, scores zero-shot on the real labeled
`riscv_corpus/*.s` (496 records, same label-recovery as
`spec/eval_riscv_real.py`).

### The dominant effect, measured directly: 78.3% of RISC-V tokens are OOV

```
MLM vocab size (built from x86_64/arm64 only): 449
RISC-V token OOV rate: 15693/20049 (78.3%)
```

`spec/asm_tokenizer.py`'s **operand** classification is genuinely
spec-driven — register/immediate/memory-operand regex all come from the
ISA spec, zero hardcoded literals in that file, exactly as its docstring
claims. But the token it emits keeps the **mnemonic itself** as a literal
prefix (`"addi <reg> <reg> <imm>"`, not an abstracted category), and
`train_mlm.py::build_vocab` only ever saw x86_64/arm64 mnemonics
(`min_count=5` over `v54_train`, which has zero riscv64 rows). RISC-V's
actual dominant instructions — `addi`, `sd`, `ld`, `jr`, `beqz`, `slli`,
etc. — never appear in that vocabulary, so `vocab.get(t, vocab[UNK])`
collapses nearly all of them to one shared `<unk>` embedding. The
instructions that *do* land in-vocab are the handful of mnemonics RISC-V
happens to share verbatim with ARM64/x86 (`nop`, `call <sym>`,
`add <reg> <reg> <reg>`) — coincidence, not design.

**This is a training-data coverage gap in the learned-feature pipeline
specifically, not a flaw in the spec engine itself** (`isa_spec.py`,
`spec_features.py`, `riscv.json` remain ISA-literal-free) — but it means
zero-shot "learned" node/pooled features are close to random noise on any
architecture the MLM wasn't trained on, by construction, regardless of
which pooling or gating technique sits downstream.

### Result: every MLM-touching config underperforms hand-58 alone, and none help

```
config                  riscv zero-shot acc   macro-F1
--------------------------------------------------------
hand-58                              6.25%       4.17%
hand+MLM                             2.22%       1.78%
hand+diffMLM                         1.81%       1.37%
hand+prunedMLM                       2.22%       2.05%
hand+diff+prunedMLM                  1.81%       1.95%
```

Adding *any* MLM-derived signal — flat, diff-gated, pruned, or combined —
makes RISC-V zero-shot **worse** than hand-58 alone, not better: the OOV
embeddings are pure noise the RF has to learn to ignore, and it can't
fully. Per-class recall confirms this isn't a close call: L1TF, MDS,
SPECTRE_V2/V4, BHI all sit at 0% recall for every config including
`hand+diff+prunedMLM` (the RF-level winner from Phase 1/2 on x86/ARM). None
of Phase 1/2/4's mechanisms can rescue a signal that was never present in
the input to begin with — confirms the plan's own Phase 3 framing was
right to separate "pooling/gating technique" from "does the underlying
embedding carry information for this ISA at all," and the answer for
RISC-V today is no, at the MLM layer specifically.

(Note: these RF numbers are not directly comparable to the GINE zero-shot
23.59% cited in project memory — that number comes from `hand`-only node
features through the full spec-driven PDG/graph pipeline, a structurally
different and more ISA-agnostic feature source than `hand-58`'s
`v54/inline_features.py`, which — per `spec/ablation_spec_features.py`'s
own docstring — has literal ISA regex in it. The RF-vs-GINE gap here is
itself informative: the more spec-driven a feature source is, the better
it transfers; the MLM's vocabulary is currently the least spec-driven part
of the stack.)

### What "reproducible for new architectures using only the spec description" actually requires here

Two separate, now-precisely-scoped gaps, not one:

1. **MLM vocabulary should be built from spec-category tokens, not literal
  mnemonics.** Concretely: tokenize as `"<category> <reg> <reg> <imm>"`
  (category from the spec's existing `classify_rules`, e.g. `ARITHMETIC`)
  instead of `"addi <reg> <reg> <imm>"`. Since `riscv.json`'s patterns
  already map `addi` → `arithmetic` → `ARITHMETIC` (same category x86's
  `add`/ARM's `add` map to), this would collapse the vocabulary to the
  shared category set and make OOV ≈ 0% by construction for *any* new ISA
  whose spec defines the same pattern keys — the whole point of the spec
  engine, just not yet applied at the tokenizer's vocabulary-building step.
  This is a real MLM retrain, not a config change — flagged here as the
  concrete next step, not attempted in this session (scope: this session's
  ask was diagnosis, not a rebuild of the tokenizer's vocabulary strategy).
2. **`riscv.json` itself is complete relative to `base.json`/`x86_64.json`/
  `arm64.json`** — checked directly: every `patterns`/`addressing`/
  `realize`/`pipeline` key either ISA exposes is present and overridden in
  `riscv.json`, nothing silently falls back to a possibly-wrong UNION
  default. But one **documented, deliberate, still-real limitation**
  remains: `indexed_access`/`mem_idx` are set to a never-match regex
  (`"(?!x)x"`) because real RV64GC genuinely has no single-instruction
  base+index addressing mode (correct modeling, not an oversight — see the
  file's own `pipeline.notes`). The problem is one layer up: `base.json`'s
  `spec_flag_rules` gates `is_secret_source`/`is_transmitter` — the two
  flags this whole project's vulnerability detection cares about most —
  strictly on `when_mem_in: ["INDEXED"]`, a condition RISC-V can
  structurally never satisfy through the spec alone. The project's
  existing fix (`spec/dataflow_taint.py`, G6) works around this correctly,
  but it's a **Python-code patch that lives outside the JSON spec**, not an
  extension of the spec's own rule vocabulary — so today, a genuinely new
  ISA with decomposed (non-atomic) addressing would hit the identical gap
  and need the identical bespoke Python patch, not just a new JSON file.
  "New ISA = spec file only" (this file's own `provenance` field's stated
  test) is true for classification/parsing, but **not yet true** for
  `is_secret_source`/`is_transmitter` specifically. The honest fix, if this
  gets prioritized, is promoting `dataflow_taint`'s logic into a new
  `mem_access_rules` "kind" (e.g. `"kind": "dataflow_indexed"`,
  parameterized by hop count and probe-shift amounts) that `base.json` can
  express generically — turning today's one-off Python patch into
  something a future ISA's JSON file alone could opt into.

---

## Phase 4 run log — Linux shard failed, harness bug found

### What came back from `origin/linux-box-run`

All 20 runs (`both` and `diff_gated_both` x 10 seeds) produced **no usable
data**. Every row looked like:

```
both	42			SPECTRE_V2	L1TF
```

— empty `test_acc`, empty `macro_f1`, and the literal class *names* where the
per-class recalls should be.

### Two separate faults, one of them mine

**1. The harness silently emitted garbage instead of failing (my bug).**
`run_v56_multiseed.sh` scraped metrics out of the log with `grep | awk` and
never checked the training exit code. When a run died early:
- `grep -oE "Final test accuracy: [0-9.]+"` matched nothing -> empty field;
- `grep -E "SPECTRE_V2 " "$log" | tail -1 | awk '{print $3}'` fell back to
  matching a **`  Hard negative: SPECTRE_V2 <-> INCEPTION`** setup line
  (printed around log line 36, long before the classification report at line
  ~185), whose `$3` is the string `SPECTRE_V2`.

So the script wrote a full, plausible-looking 20-row table for 20 runs that
had all crashed. That is the more important failure: a whole batch of compute
was spent and the output looked like data.

**Fixed** — the driver now:
- preflights (data files, MLM loadability *in that environment*, python deps)
  and aborts before the loop rather than after 20 failures;
- checks each run's exit code and the existence of `gine_metrics.json`, prints
  the failing log's tail, and **writes no row** for a failed run;
- reads metrics from the structured `gine_metrics.json`, never from log text;
- appends each row as it completes, so an interrupted batch keeps its results.

Plus `eval/collect_v56_results.py` — rebuilds the table by scanning
`viz_*/gine_metrics.json`, so results are recoverable after a bad scrape and
mergeable across machines without trusting either machine's TSV. It also does
the paired-by-seed analysis (guarding against comparing modes that don't share
seeds).

**2. Why the Linux runs actually crashed — not yet known.**
Ruled out from here:
- Code/data were present at that commit (`v56/`, `v54/data/*.jsonl` all tracked).
- `spec/mlm_large.pt` is **byte-identical** to the local copy (same git blob
  `3ce47bf6`, 3796667 bytes) and loads fine — not corruption.
- The same `both` mode with the same checkpoint **runs correctly on this
  machine** (91.92% test accuracy in a 1-epoch check), so it isn't a code bug.

Localized: the last log line the scrape matched is a "Hard negative" line,
which is printed *after* dataset load and label setup but *before*
`Creating datasets...`. `MlmEncoder.load(args.mlm_path)` sits exactly in that
window, and it is the one code path present in both failing modes
(`both`, `diff_gated_both`) and absent from the mode that succeeded on the Mac
(`hand`). Most likely an environment issue at checkpoint load or immediately
after (torch build/CUDA mismatch), but **the logs were not committed** — only
`results.tsv` was — so this cannot be confirmed from here.

**To resolve:** the logs are still on that machine at
`eval/v56_multiseed/{mode}_s{seed}.log`. Either commit a couple of them, or
just re-run — the new preflight will now name the problem immediately instead
of burning 20 runs:

```bash
git pull                       # picks up the hardened driver
MODES="both diff_gated_both" SEEDS="42 1 7 13 21 99 123 55 88 7000" \
  ./eval/run_v56_multiseed.sh
```

### Mac shard result (recovered via the collector)

`hand` mode, 10 seeds, `--use-spec-builder`, locked v54 split:

| mode | n | test-acc | macro-F1 |
|---|---|---|---|
| hand | 10 | **96.01% +/- 0.55** | 82.81% +/- 2.27 |
| learned | 3 (in progress) | 94.61% +/- 0.45 | 79.35% +/- 0.40 |

The `hand` number **reproduces the recorded flagship** (96.14% +/- 1.59 for the
v54 spec-builder GINE) at 96.01% +/- 0.55 — same value, and a ~3x tighter CI
from running 10 seeds instead of 5. That is a genuine, if unglamorous, result:
the baseline this whole phase is measured against is now solid.

`learned` is trending ~1.4pp below `hand` on only 3 shared seeds
(paired diff -1.12pp, p=0.299, not significant) — consistent with the prior
finding that flat learned node features don't beat hand features, but far too
few seeds to state as a conclusion yet.

---

## Phase 4 result — the SPECTRE_V2 regression is REAL and reproduces on GINE

Mac shard complete: `hand` and `learned`, 10 seeds each, paired, current code,
`--use-spec-builder`, locked v54 split (`eval/collect_v56_results.py`).

| mode | n | test-acc | macro-F1 |
|---|---|---|---|
| hand | 10 | **96.01% +/- 0.55** | **82.81% +/- 2.27** |
| learned | 10 | 94.35% +/- 0.63 | 79.33% +/- 1.29 |

Paired by seed, `learned` - `hand`:

| metric | delta | p | |
|---|---|---|---|
| test-acc | **−1.66pp** | 0.001 | **significant** |
| macro-F1 | **−3.47pp** | 0.008 | **significant** |
| recall SPECTRE_V2 | **−9.55pp** | 0.029 | **significant** |
| recall INCEPTION | **−6.81pp** | 0.001 | **significant** |
| recall RETBLEED | **+3.87pp** | 0.019 | **significant** |
| recall L1TF | **−0.00pp** | 1.000 | ns |
| recall BHI | +4.03pp | 0.065 | ns |
| recall MDS | −0.22pp | 0.930 | ns |

### Three things this settles

**1. The regression that motivated this entire plan is real.** The cached
`eval/per_class_lift_results.json` said learned features cost SPECTRE_V2
−11.82pp. That cache predates the G11 leak fix, the G12 column-bug fix and
dataflow_taint, so it was fair to suspect it was stale. It was not:
freshly measured on current code over 10 paired seeds, the cost is
**−9.55pp (p=0.029)**. Same direction, same order of magnitude. Speaker 2's
report to the PI on the call was accurate.

**2. L1TF's "+11.89pp lift" is dead — exactly 0.00pp.** The same cache
claimed learned features gave L1TF +11.89pp, the single strongest argument
for the learned tier. Project memory already downgraded it (10-seed
re-run: +0.049, CI crossing zero). This run kills it outright:
**−0.00pp, p=1.000**, identical means (69.19% both). Whatever L1TF benefit
was once reported, it does not exist in the real model. It should not be
cited anywhere.

**3. RF-level and GINE-level results disagree in sign, as warned.** Phase 1/2
measured `hand+MLM` *beating* hand-58 on SPECTRE_V2 by +4.55pp in the RF
ablation harness. On GINE it *loses* by 9.55pp. The caveat recorded when
Phase 1/2 was run — that its gate ran on a different model from the one the
regression was measured on — turned out to be exactly the right thing to
have flagged. **RF ablation results do not transfer to GINE and must not be
used as a proxy for it.** The two harnesses answer different questions.

### What remains open

`diff_gated_both` — the actual Phase 4 candidate, the mechanism built to fix
this regression — is still unmeasured on GINE, because that was the Linux
shard that crashed. Now running locally alongside a fresh `both` (10 seeds
each). The question it answers is precisely: does per-node diff-gating
recover the 9.55pp SPECTRE_V2 loss while keeping RETBLEED's +3.87pp gain?

Note the prior from Phase C of the canonical-ops work: once tokens were
canonical, diff-gating stopped helping at the RF level. Given finding (3)
above, that RF prior should carry **little weight** for predicting the GINE
outcome — this run is the measurement that counts.

---

## Phase 4 VERDICT — diff-gating does not work. Hand features win.

All four node-feature modes, 10 seeds each (`both` at 8 when tabulated),
paired, current code, `--use-spec-builder`, locked v54 split:

| mode | n | test-acc | macro-F1 | SPECTRE_V2 recall |
|---|---|---|---|---|
| **hand** | 10 | **96.01% ± 0.55** | **82.81% ± 2.27** | **85.26% ± 5.41** |
| diff_gated_both | 10 | 94.32% ± 0.82 | 79.90% ± 2.69 | 72.40% ± 7.08 |
| learned | 10 | 94.35% ± 0.63 | 79.33% ± 1.29 | 75.71% ± 7.23 |
| both | 8 | 93.76% ± 1.12 | 79.20% ± 1.67 | 71.67% ± 8.44 |

**vs `hand`, paired:** every MLM-based mode is significantly worse on
accuracy (`diff_gated_both` −1.69pp p=0.007; `learned` −1.66pp p=0.001;
`both` −2.19pp p=0.009) and significantly worse on SPECTRE_V2
(−12.86 / −9.55 / −13.56pp, all p<0.03) and INCEPTION.

**The direct mechanism test — `diff_gated_both` vs `both`, same features,
only the gate differs, 8 paired seeds:**

| metric | delta | p |
|---|---|---|
| test-acc | +0.58pp | 0.331 ns |
| macro-F1 | +1.05pp | 0.543 ns |
| SPECTRE_V2 | +0.89pp | 0.857 ns |
| L1TF | +2.03pp | 0.483 ns |
| RETBLEED | −2.17pp | 0.129 ns |
| INCEPTION | +0.13pp | 0.912 ns |
| MDS | +0.00pp | 1.000 ns |

**Not one metric moves.** The per-node diff-gate — the mechanism this whole
plan was built to deliver, translating the PI's and Alik's call proposals
into GINE — has **no measurable effect**. It does not recover the SPECTRE_V2
regression it was designed to fix (+0.89pp against a −13.56pp hole).

### Why this is a clean negative rather than a botched experiment

The gate demonstrably *fires*: `spec/validate_dataflow_taint*.py`-style checks
and the RF harness both showed it changing which instructions get weight, and
the RF harness even showed it helping there (+2.92pp SPECTRE_V2). It's wired
correctly (smoke-verified end to end, `node_feat_dim=169`, BENIGN
representative built from train only). It simply doesn't matter to GINE.

Most plausible reading: GINE already learns to down-weight uninformative
nodes through message passing and its own attention/gating, so an
externally-computed soft gate on the input embeddings is redundant with what
the network derives anyway. The RF harness benefits because a flat mean-pool
*cannot* learn to ignore anything — which is precisely the difference that
made RF a bad proxy (see below).

### The three findings that matter more than the mechanism

1. **The learned-feature tier does not help GINE, at all.** Hand features win
   on accuracy, macro-F1, SPECTRE_V2 and INCEPTION across every variant
   tried. The only consistent MLM gains are RETBLEED (+2 to +3.9pp) and BHI
   (+3 to +4pp, ns) — real but far outweighed.
2. **L1TF's lift is dead: exactly −0.00pp (p=1.000), identical 69.19% means.**
   The strongest single argument for the learned tier does not survive.
3. **RF-ablation results have the opposite sign to GINE and must never proxy
   for it.** RF said `hand+MLM` beats hand-58 on SPECTRE_V2 by +4.55pp; GINE
   says it loses by 9.55pp. RF consumes one mean-pooled vector; GINE consumes
   per-node embeddings with message passing. Different questions.

### What this means for the PI's ask

The call's premise was "learned features don't really help — maybe the
learning itself isn't far through," and the proposed fixes were
representative-differencing and redundancy-pruning. Both were built and
measured properly. **On the real model, neither helps.** The honest report
is that the learned tier is not currently earning its place in the pipeline,
and the paper's classification results should stand on the hand/spec feature
model (96.01% ± 0.55, 10 seeds) rather than on a learned-feature story.
