# Phase 3 — Learned Ranking Regressor (Design, PARKED)

**Status:** design only, **blocked on Phase 4**. Do not implement until the
oracle exists. See "Blocking dependency" below.

**Roadmap ref:** `/Users/ritvikgupta/.claude/plans/compressed-whistling-goblet.md`, Phase S3.
**Prereqs done:** Phase 0 (spec engine), Phase 1 (learned features + rigor pass),
Phase 2 (conditioned generator). Full-model TOST complete (hand 96.14±1.59).

---

## Purpose

The generator (Phase 2) emits candidate gadgets faster than gem5 can confirm them.
The ranker is a **surrogate for the expensive oracle**: it predicts a continuous
leak signal per candidate so only the top-K reach gem5. Its whole reason to exist
is **sample efficiency** — fewer oracle calls per confirmed leak than random
ordering. That efficiency curve (confirmed leaks per gem5-hour vs. random baseline)
is the Phase 3 headline eval, and the wedge vs. Revizor/SpecFuzz.

---

## Blocking dependency (why this is parked)

The ranker regresses a **leak signal**. That signal is defined by the oracle:

- primary target = **Phase 4 gem5 Flush+Reload SNR** (or contract-violation score
  from Phase 4b contract check).
- The ranker CANNOT train on real targets until Phase 4 emits labels.

Decision (2026-07-22): **do not bootstrap on a proxy label.** Rejected options and why:
- *classifier-confidence proxy* — circular; ranker just re-learns the frozen GINE
  classifier it is built on, no new signal, weak paper story.
- *static contract-proxy label now* — this is really a slice of Phase 4b; building
  it belongs to the oracle phase, not here. Fold it in when Phase 4 is designed.

So Phase 3 waits for Phase 4. When Phase 4 lands, this design is ready to build
against `oracle.measure(sequence) -> leak_signal`.

---

## Architecture

Reuse the v54 GINE encoder verbatim. The fused `combined` vector inside
`GINEClassifier.forward` (graph_repr 256 + feat_repr 256 + global_repr 32 +
arch_repr 8 = `combined_dim`; `v54/gine_classifier_v38.py:313`) already feeds both
the classifier head and the projection head. **Attach a third head — a regression
head — at the exact same fusion point.** Same pattern as `projection_head`
(`gine_classifier_v38.py:244`).

```
node/edge PDG ─► GINE encoder (frozen or fine-tuned) ─► combined ─┬─► classifier head   (existing, Phase 0/1)
                                                                  ├─► projection head   (existing, contrastive)
                                                                  └─► REGRESSION head    (NEW: leak_signal scalar + uncertainty)
```

- Head: `Linear(combined_dim, hidden) → BN → ReLU → Dropout → Linear(hidden, 1)`
  (mirror the classifier's shape). Output = predicted leak signal.
- Encoder init from the best spec-builder checkpoint (`v54/viz_v54_spec/gine_best.pt`).
  Try both **frozen encoder** (train head only — fast, robust when oracle labels
  are scarce early in the loop) and **fine-tuned end-to-end** — pick per the
  held-out efficiency curve.
- Loss: MSE / Huber on `leak_signal`; if the oracle emits a binary
  leak/no-leak alongside SNR, add a small BCE auxiliary on a sign head.

### Files (when built)
- `rank/regressor.py` — `LeakRanker` wrapping the GINE encoder + regression head.
- `rank/train_ranker.py` — trains on `(candidate PDG, oracle leak_signal)` pairs.
- `rank/acquisition.py` — UCB / uncertainty scoring (below).
- `rank/__init__.py`.

Do NOT fork `gine_classifier_v38.py`. Import the encoder; add the head in `rank/`.

---

## Uncertainty & acquisition (the sample-efficiency mechanism)

Ranking by predicted signal alone is greedy and collapses. The loop must pick
candidates that are **high-predicted-signal AND informative**. Provide uncertainty:

- **MC-dropout** — keep dropout on at inference, N stochastic passes → mean μ, std σ.
  Cheapest; no extra training.
- **Deep ensemble** — M independently-seeded rankers → μ, σ from spread. Stronger
  uncertainty, M× cost. We already train multi-seed (`eval/full_tost`), so the
  harness exists.

Acquisition score = **UCB**: `a(x) = μ(x) + β·σ(x)`. β trades exploit vs. explore;
schedule β down as the loop matures. Selecting top-K by `a(x)` (not μ) is the
efficiency knob compared against random ordering.

Start with MC-dropout (fewer moving parts); add ensemble only if the efficiency
curve needs it.

---

## Data flow in the Phase 5 loop

```
generator ─► K_gen candidates ─► ranker.score + acquisition ─► top-K ─► oracle.measure
                    ▲                                                         │
                    └──────────── retrain generator (expert iter) ◄──────────┤
                                  retrain ranker (surrogate update) ◄─────────┘
```

Ranker is retrained each loop on accumulated `(candidate, oracle_label)` pairs —
a growing regression dataset. Cold start: first loop has no labels, so the first
oracle batch is scored by the generator's own class-conditioning / random, and the
ranker takes over from loop 2. This is why the ranker must handle small-N training
(argues for frozen encoder + light head early).

---

## Verification (per roadmap P3 bar)

On a **held-out simulated set** (oracle-labeled candidates never seen in training):

1. **Top-K precision beats random ordering** — the core claim. Plot precision@K and
   the cumulative "confirmed leaks vs. oracle calls" curve for ranker-UCB vs.
   random vs. greedy-μ. Ranker-UCB must dominate.
2. **Calibration** — predicted signal vs. actual oracle signal (scatter + R²);
   σ from MC-dropout/ensemble correlates with actual error.
3. **Leakage control** — reuse Phase-0/1 rigor lesson (`eval/splits.py`): split by
   augmentation `group`, not record, so the ranker is not scored on
   near-duplicates of its training candidates. Report both random-split and
   group-holdout efficiency; expect a drop, report it honestly.
4. **Ablation** — frozen vs. fine-tuned encoder; MC-dropout vs. ensemble; UCB β
   sweep. One efficiency curve per setting.

Bar to clear before trusting in the loop: ranker-UCB confirmed-leaks-per-oracle-call
strictly above random on the group-holdout split.

---

## Open questions (resolve at Phase 4 design time)

- Exact `leak_signal` definition — continuous F+R SNR, contract-violation count,
  or both as multi-task? Sets the head + loss.
- Label noise model — gem5 timing is noisy; may need repeated measurement /
  variance-weighted regression.
- Does the frozen spec-builder encoder (classification-trained) transfer to leak
  regression, or does the leak signal need encoder fine-tuning? Empirical, decide
  on the calibration scatter.

---

## Honest scope notes

- Ranker predicts a **surrogate** for the oracle; it is never itself ground truth.
  All Phase-3 "leak" numbers are predicted until gem5 confirms (same discipline as
  the Phase-2 "plausible candidate, not confirmed leak" framing).
- Single-seed ranker numbers wobble ±1-2pp like the classifier — report multi-seed
  (the `eval/full_tost` seed harness carries over).
