# 01 — Rule columns on the language model's own pairs

Status: resolved
Type: task
Blocked by: nothing

## Question

On the 240 pairs the language model was scored on, what do the interior-fence rule and the mechanism rule score?

## Done when

`eval/pairs/LLM.md` has both columns, computed on the same pairs as every other column, and the numbers in `PAIRS.md` are unchanged.

Spec: `../spec.md`.

## Comments

### 2026-11-13 — done (Claude)

`score.mechanism_metrics` added (the per-class weighting that was inline in `score.main`), used
by both reports. `llm_report.py` now prints `no interior fence` and `mechanism rule`. Checked:
every existing cell of `LLM.md` is unchanged; all 21 per-class mechanism rows and the summary
column of `PAIRS.md` are identical before and after (regenerated to a scratch file, the
committed `PAIRS.md` was not touched); 24 tests pass, one new.

Result on the 240 pairs (interior fence / mechanism): `variants` 1.000 / 1.000,
`injected fence` 1.000 / 0.500, `counterfactual` 0.500 / 0.700, `injected inject` and
`reorder` 0.500 / 0.500, `nofence` 0.500 / 0.517. The interior-fence rule reads x86 `lfence`
only.
