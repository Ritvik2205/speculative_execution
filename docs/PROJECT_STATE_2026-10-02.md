# SpecExec — project state for a fresh agent (2026-10-02)

Orientation doc. Read this first, then the linked files. Every number here is
either multi-seed-with-caveats or flagged tiny-n / synthetic / unverified —
do not quote a bare number without its caveat. Branch: `cluster`.

---

## The project in one frame

Original goal (verbatim from the brief): a deep-learning pipeline that, given a
DSL, **generates** instruction sequences likely to trigger speculative timing
leaks; a **regression ranker** orders candidates so only the top reach a precise
oracle; iterate *generate → filter → simulate → retrain* to discover the
**smallest** leaking sequences.

Mapping to what exists:

| Stage (brief's words) | State | Where |
|---|---|---|
| DSL → ISA def + pipeline graph → conditioning | **built** | `spec/*.json` (the DSL), `spec/isa_spec.py`, spec-builder graphs |
| generative model, class+arch conditioned | **built** | `gen/generator.py`, `gen/train_generator.py` |
| top candidate sequences | **built (x86 V1 verified)** | `gen/rl_from_oracle.py` + Spectector oracle |
| **regression ranker (filter)** | **built this session, UNVERIFIED on real labels** | `rank/` (new) |
| generate→filter→sim→retrain loop | RL loop exists; ranker not yet wired in | `gen/rl_from_oracle.py` |
| discover **smallest** sequences (minimality) | **not started** | — (own plan needed) |

Two arms run in parallel: a **classifier/detector** (GINE) and the
**generator**. This session's work: made the classifier generalise across ISAs,
locked it, and built the ranker.

---

## 1. Classifier (detector) — LOCKED

**Locked model:** `lv4s_learned_adv`, 5-seed ensemble. Manifest
`models/locked_classifier.json`; loader `eval/locked_classifier.py`
(`LockedClassifier().predict(records) -> {label, attack_prob, probs}`,
sha-verified, outputs aligned 1:1 with inputs).

- Learned node features from the ISA-neutral MLM `spec/mlm_neutral.pt`; only
  the 9 inline features that fire on every ISA; NOPs dropped; adversarial arch
  head; trained x86_64+arm64 only (`v54/data/v54_train_lenmatch_v4s.jsonl`).
- **Measured (ensemble):** held-out riscv64 benign-FP 2.3%, attack-detection
  48%, J=0.46; locked x86/arm test 92.45%. (`models/locked_classifier.json`
  has the full table + per-seed reference.)
- **Known limits (do not overclaim):** riscv attack set is tiny (~27 attacks,
  few families; detection CI 18–77%). SPECTRE_V4 does **not** transfer (store-
  bypass unlearned across ISAs). V1 recall on riscv low (~25%). RETBLEED/
  INCEPTION/L1TF/MDS unscored on riscv (no valid examples).

**The cross-ISA arc (how we got here), in `[[specdiscover-gine-riscv-holdout]]` memory:**
- GINE trained x86+arm was ~chance on held-out real riscv64.
- Biggest cause was a **length confound**, not the ISA: training BENIGN was
  arm64 25–30-instr windows; riscv benign is whole functions → model learned
  "long ⇒ attack" (benign-FP 1% at ≤60 instr, 89% at >120). Fixed by
  length-matched training data (`v54/augment_size_multiscale.py` +
  held-out-clean mbedTLS filler) and/or inference windowing.
- ISA-surface leakage fixed in the specs (commit 3945792): x86 size-suffix
  mnemonics, AT&T register direction, sub-register aliasing, address-based
  MEMORY_ORDER edges. Diagnostic: `eval/isa_fingerprint.py`.
- V4 family test (`spec/data/v4fam_test_{riscv64,x86arm}.jsonl`, held-out
  strides) shows V4 is partly learnable on arm64, not on x86 or across ISAs.

**Eval harness:** `eval/gine_riscv_holdout_eval.py` (rebuilds any checkpoint
from full saved args; group-overlap guard; `--window-len auto`; V4-family
block), `eval/aggregate_gine_riscv_holdout.py`, `eval/aggregate_v4_family.py`.
Corrected held-out labels: `spec/data/riscv_loio_corpus_v2.jsonl` (built by
`eval/build_riscv_heldout_v2.py`; RETBLEED dropped as having no riscv analogue,
short V4 gadgets restored).

### 1b. Real-hardware transfer (detector on real Revizor gadgets) — CONFOUNDED, redesign queued

Real gadgets from the i5-8300H: V1 130, L1TF 155, MDS 83, V4 55. Held-out: 54 / 64 / 33 / 22, each with fenced BENIGN twins.
- **Valid:** a detector trained only on synthetic data does not recognise real gadgets. Held-out recall: V4 0.00, MDS 0.10, L1TF 0.26, V1 0.69. Most real gadgets get called V1 or some other class.
- **Invalid:** the per-class `<class>_hw` models score 1.00 recall. Each saw only its own class's real gadgets, and a cross-class check shows each labels real gadgets of **every** class as its own. It learned "Revizor-style program → my class". This is not leakage: no duplicates, NN opcode similarity median 0.40–0.47, disjoint generator seeds. The V4 seed-disjoint P3 result has the same flaw.
- Pre-09-24 checkpoints cannot be scored with current code (`3945792` rewrote the data-dependence graph; V4 1.0 → 0.36). Everything was retrained (run 4).
- **Queued:** a joint `allhw` model (all four classes' real gadgets together), scored as a 4×4 confusion matrix (`real_transfer_confusion.md`), plus a misplaced-`lfence` control. Built by `oracle/revizor/build_hw_joint.py` and `synth_v4_benign.py --misplaced-from-heldout`.
- Details: `docs/PIPELINE_STATUS_2026-09-15.md` and memory note `[[real-transfer-stale-checkpoints]]`.

---

## 2. Ranker — BUILT this session, needs the cluster for a real number

New `rank/` package (merged to `cluster`, 10 commits; plan
`docs/superpowers/plans/2026-10-01-leak-signal-ranker.md`). A regression
surrogate for the leak oracle: score generated gadgets, send only top-K to the
expensive oracle.

| file | role |
|---|---|
| `rank/encoder_hook.py` | frozen locked-classifier encoder; captures the post-fusion `combined` vector via a forward pre-hook (no fork of `v54/gine_classifier_v38.py`) |
| `rank/regressor.py` | `LeakRanker`: head predicts `leak_signal`; `predict_mc` = MC-dropout (dropout-only, BN frozen) for uncertainty |
| `rank/acquisition.py` | `ucb(mu,sigma,beta)`, `select_topk` (non-finite→−inf, mask, greedy fallback) |
| `rank/data.py` | `load_rows` (skips `signal:null`), `group_split` (**group = token-content-hash**, a real group-holdout), `buildable` |
| `rank/efficiency.py` | headline metric: confirmed-leaks-per-oracle-call, ranker-UCB vs random vs greedy; `auc_gain_over_random`; NaN+note on degenerate batches |
| `rank/train_ranker.py` | multi-seed CLI: group-split → fit → efficiency per seed → mean±95%CI |

Supporting (committed this session):
- `gen/rl_from_oracle.py` now logs the oracle `signal` per RL sample.
- `gen/relabel_signal.py` + `.sbatch` — cluster-only: re-run Spectector on
  existing `gen/rl_ms/*/samples.jsonl` to attach the real `signal`; writes
  `signal:null, oracle_ran:false` for gadgets it cannot adjudicate (never a
  fabricated 0.0).

**Status:** all `rank/` logic is tested on synthetic/stub labels (15 tests;
`tests/rank/`). The *real* result — does the ranker beat random ordering —
needs real labels, which only the cluster can produce (Spectector via
Apptainer, x86 only). Not yet run. Bar to clear: `mean_auc_gain_over_random`
> 0 on the group-holdout, multi-seed CI not crossing 0.

**To get the real number (cluster):**
```bash
# on the cluster, branch cluster
sbatch gen/relabel_signal.sbatch                       # -> gen/rl_ms/*/samples_signal.jsonl
python3 rank/train_ranker.py --samples 'gen/rl_ms/*/samples_signal.jsonl' --out rank/ranker_eval.md
```
Two things the real-run writeup MUST state (parked follow-ups): confirm
`n_groups << n_rows` (else the split is near-record-level; content-hash catches
exact token-dup only, not near-dups); and the fresh-log (`signal=0.0` for
unrunnable) vs relabel (`signal=null`) asymmetry.

---

## 3. Generator — working x86 discovery loop, one verified class/ISA

Full detail: `docs/GENERATION_MODEL_2026-09-24.md`. Totals (from `gen/` reports):
~2,600 generations across 13 RL runs, ~2,048 oracle-confirmed leaks (~79%),
~1,594 distinct leaking gadgets (within-run). Verified scope = **SPECTRE_V1,
x86_64 only** (all oracles are x86). Pretraining significantly improves
diversity at a yield cost (n=5 powered). arm64/riscv64 are generated but
**unverified** (no non-x86 oracle). **Multi-class x86 RL** (`gen/rl_multiclass.sbatch`, 3 seeds;
logs `eval/cluster_out/rl_mc_3657248_*.out`): validated-leak yield rises 0.49→1.0 for SPECTRE_V1
and 0.15→0.6–1.0 for SPECTRE_V4. It stays **0.0** in every round and seed for SPECTRE_V2 and RETBLEED,
because Spectector cannot adjudicate them (they need the Revizor hardware path). The per-class
aggregate (`gen/aggregate_rl_multiclass.py`) has not been run on those samples yet.

**Important negative result (this session, `gen/classifier_vs_oracle.py`):** the
locked classifier does **not** track the oracle on generated x86 gadgets
(ROC-AUC 0.44). So the classifier is **not** usable as the generator's
reward/pre-filter as-is (distribution gap: trained on real-compiled gadget
windows, generator emits synthetic ~50-line realized sequences). The **ranker**
(regresses the oracle's continuous signal) is the right filter model, not the
classifier — which is exactly what the brief asked for.

---

## 4. Open blockers / next steps (ranked)

0. **Run the real-HW joint model** (`allhw`, 5 seeds) and the confusion report. Until it lands, cite only the synthetic-trained BEFORE recall for real silicon, never the per-class 1.00.
1. **Run the ranker on real labels** (cluster, commands above). This is the
   first real test of the brief's "filter" stage. Cheap; do first.
2. **ARM speculation oracle** (`docs/ARM_ORACLE_SPIKE_PLAN.md`) — the gating
   dependency for any verified non-x86 generation or ranking. Highest
   strategic value.
3. **Minimality subsystem** — "smallest leaking sequences" from the brief is
   unbuilt. Needs its own plan (delta-debloat a confirmed gadget, re-verify the
   leak survives each removal). Depends on ranker+oracle being cheap to call.
4. **Multi-class x86 RL** — run/pull `gen/rl_multiclass.sbatch` for a per-class
   yield/diversity table (turns "one class" into a result).
5. **Classifier↔generator distribution gap** — if the classifier is ever to
   help off-x86, train it on realized full sequences (or fold generated
   oracle-labelled gadgets into its training), then re-check
   `gen/classifier_vs_oracle.py` AUC.
6. **Infra:** the cluster `specexec` env lacks `capstone`, so the oracle half of `run_feature_gate.sh` crashes on import (not a regression). Fix: `pip install capstone`. Also owed: a decision on whether `e3a541e`'s always-on MEMORY_ORDER edges are intended.
7. **Decision owed:** `tests/eval/test_idiomatic_riscv_independence.py` fails
   (the only repo red) — ISA-normalisation deliberately removed the category-
   bigram signal it measures. Retire it or replace the measure.

---

## 5. Caveats that bite (carry these into any writeup)

- **Oracle is x86-only and symbolic** (Spectector SNI, `leak_signal` =
  trace_length). Every verified number is x86. gem5 was refuted for SSB;
  hardware (Revizor i5) confirms SSB/MDS/L1TF but is batch-only.
- **Ranker predictions are a surrogate, never ground truth.**
- **riscv held-out attack n is tiny**; per-class claims are underpowered.
- **The `docs/SUPERVISOR_UPDATE_2026-09-25.md` classifier section is stale** —
  it predates the length fix, corrected labels, neutral features, and the lock.
  This doc supersedes it on the classifier.

---

## 6. File / command index

- Classifier: `models/locked_classifier.json`, `eval/locked_classifier.py`,
  `eval/gine_riscv_holdout_eval.py`, `v54/train_gine_v38.py`,
  `v54/data/v54_train_lenmatch_v4s.jsonl`, `spec/mlm_neutral.pt`.
- Ranker: `rank/`, `docs/superpowers/plans/2026-10-01-leak-signal-ranker.md`,
  `docs/superpowers/specs/2026-07-22-phase3-ranker-design.md`.
- Generator: `gen/generator.py`, `gen/rl_from_oracle.py`, `gen/rl_ms/`,
  `gen/classifier_vs_oracle.py`, `docs/GENERATION_MODEL_2026-09-24.md`,
  `docs/GENERATION_EXTENSION_PLAN.md`.
- Oracle: `oracle/spectector_oracle.py`, `oracle/validators/`,
  `oracle/apptainer/`, `docs/ARM_ORACLE_SPIKE_PLAN.md`.
- Cluster grids: `eval/cluster/riscv_holdout.sbatch` (+ aggregate),
  `gen/rl_multiclass.sbatch`, `gen/relabel_signal.sbatch`.
- Memory index: `MEMORY.md` (auto-loaded); the SpecDiscover notes there are the
  running lab notebook — `[[specdiscover-gine-riscv-holdout]]` is the fullest
  cross-ISA record.
```
source .venv/bin/activate
python3 -m pytest tests/rank tests/gen -q -p no:cacheprovider   # 243 pass, 1 skip
./scripts/run_feature_gate.sh                                    # before trusting spec/*.json changes
```
