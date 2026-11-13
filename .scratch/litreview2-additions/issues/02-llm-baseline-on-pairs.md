# 02 — LLM baseline on the pair benchmark

Status: needs-info (first run done 2026-11-13; repeats and full set need more budget)
Type: task
Blocked by: owner: permission to send benchmark assembly to an external API, provider and key, spending cap

## Question

Does a general LLM with no training on our data rank the leaking side higher, and does it do better on the public Linux pairs than on the non-public hardware and injected pairs?

## Done when

LLM rows in `eval/pairs/PAIRS.md` for single-side and forced-choice protocols, 3 repeats, with public and non-public sets reported separately.

Spec: `../spec.md` section 5, W2.

## Comments

### 2026-11-13 — first run done (Claude)

Owner gave permission on 2026-11-12: Claude model, key from `.env`, cap $20.
Run: `claude-opus-5-5`, effort low, 30 pairs per set (240 pairs), both protocols, 1 repeat.
948 calls, $18.68. 91 calls were served by `claude-opus-4-8` (server-side fallback).
Results and caveats: `eval/pairs/LLM.md`. Raw answers: `eval/pairs/data/llm_ledger.jsonl`.

Not done (needs more budget): repeats for run-to-run spread; the full 2,310 pairs (about $75
per protocol pair at this cost per call); a second model.

### 2026-11-13 — repeats done (Claude)

Owner asked for the repeats. Three repeats of both protocols on the same 240 pairs: 2,841 calls,
$56.23 in total (cap $57). The cap stopped the last 3 forced-choice calls of the third repeat;
those pairs are scored from one order instead of two in that repeat. 295 calls served by
`claude-opus-4-8` (fallback). Table with run-to-run spread: `eval/pairs/LLM.md`.
