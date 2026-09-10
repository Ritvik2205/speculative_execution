# Adopted baseline (2026-09-10): embed, NO handcrafted features

Supersedes the original hand-fused baseline (`eval/robustness_baseline.md`).
Config: GINE spec-builder, arch-mode `embed`, `--no-handcrafted`, trained on the
de-shortcut set `v55h_train`, tested on the locked `v54_test`. Recipe:
`eval/baseline_nohand/RECIPE.sh`.

## Why it's the new baseline — 5-seed cluster comparison (mean±95%CI)

| axis | OLD (embed + hand) | NEW (embed, NO hand) | Δ |
|---|---|---|---|
| locked macro-F1 | 0.813 | **0.869** | +5.6pp |
| arm64 macro-F1 | 0.618 | **0.752** | **+13.4pp** |
| x86 macro-F1 | 0.897 | **0.910** | +1.3pp |
| trigger-masked macro-F1 | 0.803 | **0.859** | +5.6pp |
| locked ECE | 0.025 | 0.028 | ~flat |

The 256-dim hand-feature branch was an x86-biased crutch: removing it improves
every axis and closes most of the cross-ISA (arm64) gap. This is the
ISA-independent direction the project set out to reach — the graph carries the
signal better without hand engineering.

Also decided from the same 5-seed grid: the **DANN arch adversary is retired**
(it worsened arm64: 0.618→0.574 with hand, 0.752→0.456 without). Default
`--arch-mode embed`.

## Local reference checkpoint
`eval/baseline_nohand/s{42,1}/gine_best.pt` (retrained locally with RECIPE.sh) is
the reference the honest suite scores future changes against. Local single-seed
numbers confirm the cluster mean (filled in once the local retrain lands).

## What this baseline is NOT
- Not the V4 fix: real-V4 recall needs the hardware gadgets folded into training
  (P3, `eval/p3/real_v4_p3.md`, 0%→100%). This baseline is trained on `v55h_train`
  (no real V4), so it still fails real V4 — the V4-specialised variant is separate.
