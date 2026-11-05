# GINE detector on HW-labelled fenced variants (i5-8300H)

Locked v54_spec checkpoint. **Reproduce gate: PASSED** (target 0.961677).

Clean out-of-distribution test (0 overlap, 0 Revizor fingerprint in train). Every variant contains a fence, so token/histogram shortcuts cannot separate the arms — only fence *position* can.

## Per-base flip (the headline)

- Bases with both a vulnerable and a mitigated arm: **154**
- Model's leak-call separates the arms correctly (mean): **46/154 = 0.2987**
- Strict separation (every vuln→leak AND every mitigated→benign): **0/154 = 0.0**
- Wrong-direction (mitigated flagged more than its vulnerable sibling): **6**
- Fence-count floor baseline (position-blind): **54/154 = 0.3506** — GINE must beat this to claim it uses structure, not fence count.

## Leak-call rates

- Vulnerable arm recall (flags HW-vulnerable): 0.9533 (n=321)
- Mitigated arm specificity (clears HW-mitigated): 0.1567 (n=485)
- Exact-class acc on vulnerable arm: 0.2897 (n=321)

## Per variant type

| variant | n | HW | model leak-rate | agree w/ HW | mean P(benign) |
|---|---:|---|---:|---:|---:|
| after_load | 96 | benign | 0.792 | 0.208 | 0.281 |
| entry | 149 | mixed | 0.94 | 0.899 | 0.116 |
| fence_all | 162 | benign | 0.66 | 0.34 | 0.321 |
| shifted | 62 | benign | 1.0 | 0.0 | 0.045 |
| tail | 147 | mixed | 0.959 | 0.952 | 0.099 |
| twin | 158 | benign | 0.994 | 0.006 | 0.059 |
| v1_fallthrough | 32 | vuln | 1.0 | 1.0 | 0.051 |

*HW = what 3/3 hardware runs said. Vulnerable variants (entry/tail/cf_*) all carry a fence too — just in a position that does not block the leak.*

