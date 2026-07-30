# Leak-dataset signal report (Phase 3-prep)

**Question:** is there a learnable, tuning-dependent leak signal to justify an
ML ranker? **Answer: No — not from these tools.**

## Evidence
Grid of V1 gadgets over the decisive knobs, labeled by InvisiSpec (real execution):

| stride | flush_bound | mistrain | verdict |
|---|---|---|---|
| 64  | on  | 30 | leak |
| 64  | off | 30 | leak |
| 512 | on  | 30 | leak |
| 512 | off | 30 | leak |
| 64  | off | 2  | leak |  (weakest config — still leaks) |

All configurations leak (n_leak = 5/5). Under a competent 999-try, score-based
Flush+Reload recovery harness, InvisiSpec's aggressive O3 recovers the secret
**regardless** of stride / bound-flush / mistrain strength.

## Conclusion
- Leak status is determined by **(a) the vuln class** (V1/V4 — the only classes
  InvisiSpec's generic O3 models) and **(b) measurement competence**, NOT by fine
  gadget structure/tuning.
- The apparent earlier "conflict" (original synth V1 = safe) was an artifact of a
  **weak single-shot measurement** (utils.c, threshold 50, no aggregation), not a
  gadget-structure property.
- Therefore the (gadget-structure -> leaks?) dataset is **single-class** (all
  leak) for V1/V4 -> **no discriminative signal for a learned ranker.**

## Implication for Phase 3
Do NOT build the ML ranker now — it would train on non-signal. A learned ranker
becomes meaningful only when leak status genuinely varies across candidates,
which requires either (1) more vuln classes that leak with varying reliability
(needs real hardware / Revizor for the 6 vendor classes), or (2) a much larger,
noisier candidate space (e.g. the neural generator's raw output) where many
candidates are malformed/non-leaking. Until then, the fast Spectector filter +
InvisiSpec confirmation already suffice for the small candidate volumes.
