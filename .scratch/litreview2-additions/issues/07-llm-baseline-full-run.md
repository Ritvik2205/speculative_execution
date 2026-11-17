# 07 — LLM baseline on the full non-public pair sets

Status: needs-info
Type: task
Blocked by: owner: funding approval (about $330, hard cap $400), and a fresh permission to send non-public benchmark assembly to the external API (the 12 November permission covered the 240-pair pilot only)

## Question

Does the pilot result in `eval/pairs/LLM.md` (30 pairs per set, about ±0.15 per cell) hold on the
full non-public sets?

## Why

Decided 2026-11-13: the LLM comparison stays out of the abstract until it is run on the full
set, a second model family is run, and calls served by the fallback model are separated or
removed. This ticket is the first of those three. The second model family is the open-weight
model (separate work, no API cost).

## Scope

- Pairs: the non-public sets only, 2,120 pairs (variants 970, counterfactual 76, nofence 92,
  injected 982). The Linux sets are left out: they are public, and "shorter side leaks" scores
  0.983 on them for any detector.
- Protocols: single side with 3 repeats (primary), forced choice with 1 repeat (secondary).
- Model: `claude-opus-5-5`, effort low, as in the pilot, so the pilot rows stay comparable.
- Fallback: report rows with the fallback-served calls removed as well as with them in. In the
  pilot 295 of 2,841 calls were served by `claude-opus-4-8`.
- Add the interior-fence rule and the mechanism rule as columns on the same pairs
  (`eval/pairs/llm_report.py` currently shows only "shorter" and "fewer barriers").

## Cost estimate

Pilot: $56.23 for 240 pairs, both protocols, 3 repeats, which is about $0.04 per pair per
protocol per repeat. Full run: 2,120 × 3 × $0.04 (single side) + 2,120 × 1 × $0.04 (forced
choice) ≈ $330. Extrapolated from 240 pairs; the existing spending ledger and cap in
`eval/pairs/score_llm.py` should be set to $400.

## Done when

`eval/pairs/LLM.md` has full-set rows for both protocols with run-to-run spread, the two rule
columns, and a with/without-fallback comparison; headline numbers are quoted from the three
hardware-labelled sets.

## Comments

2026-11-13 (Claude): opened at the owner's request during the headline discussion. Owner: not
now, more funding approval needed first. Do not run until the owner says the funding is
approved.
