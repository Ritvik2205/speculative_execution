# GINE detector on HW-labelled fenced variants (i5-8300H)

Locked v54_spec checkpoint. **Reproduce gate: PASSED** (target 0.948503).

Clean out-of-distribution test (0 overlap, 0 Revizor fingerprint in train). Every variant contains a fence, so token/histogram shortcuts cannot separate the arms — only fence *position* can.

## Per-base flip (the headline)

- Bases with both a vulnerable and a mitigated arm: **92**
- Model's leak-call separates the arms correctly (mean): **0/92 = 0.0**
- Strict separation (every vuln→leak AND every mitigated→benign): **0/92 = 0.0**
- Wrong-direction (mitigated flagged more than its vulnerable sibling): **1**
- Fence-count floor baseline (position-blind): **0/92 = 0.0** — GINE must beat this to claim it uses structure, not fence count.

## Leak-call rates

- Vulnerable arm recall (flags HW-vulnerable): 0.9701 (n=167)
- Mitigated arm specificity (clears HW-mitigated): 0.0093 (n=107)
- Exact-class acc on vulnerable arm: 0.9701 (n=167)

## Per variant type

| variant | n | HW | model leak-rate | agree w/ HW | mean P(benign) |
|---|---:|---|---:|---:|---:|
| cf_nofence_ess | 141 | mixed | 0.986 | 0.255 | 0.014 |
| cf_nofence_non | 133 | mixed | 0.97 | 0.955 | 0.018 |

*HW = what 3/3 hardware runs said. Vulnerable variants (entry/tail/cf_*) all carry a fence too — just in a position that does not block the leak.*

