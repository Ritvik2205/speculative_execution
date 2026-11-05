# GINE detector on HW-labelled fenced variants (i5-8300H)

Locked v54_spec checkpoint. **Reproduce gate: PASSED** (target 0.951497).

Clean out-of-distribution test (0 overlap, 0 Revizor fingerprint in train). Every variant contains a fence, so token/histogram shortcuts cannot separate the arms — only fence *position* can.

## Per-base flip (the headline)

- Bases with both a vulnerable and a mitigated arm: **154**
- Model's leak-call separates the arms correctly (mean): **95/154 = 0.6169**
- Strict separation (every vuln→leak AND every mitigated→benign): **5/154 = 0.0325**
- Wrong-direction (mitigated flagged more than its vulnerable sibling): **0**
- Fence-count floor baseline (position-blind): **54/154 = 0.3506** — GINE must beat this to claim it uses structure, not fence count.

## Leak-call rates

- Vulnerable arm recall (flags HW-vulnerable): 1.0 (n=321)
- Mitigated arm specificity (clears HW-mitigated): 0.2557 (n=485)
- Exact-class acc on vulnerable arm: 0.2928 (n=321)

## Per variant type

| variant | n | HW | model leak-rate | agree w/ HW | mean P(benign) |
|---|---:|---|---:|---:|---:|
| after_load | 96 | benign | 0.823 | 0.177 | 0.237 |
| entry | 149 | mixed | 1.0 | 0.96 | 0.005 |
| fence_all | 162 | benign | 0.395 | 0.605 | 0.416 |
| shifted | 62 | benign | 1.0 | 0.0 | 0.013 |
| tail | 147 | mixed | 1.0 | 0.993 | 0.01 |
| twin | 158 | benign | 0.943 | 0.057 | 0.124 |
| v1_fallthrough | 32 | vuln | 1.0 | 1.0 | 0.004 |

*HW = what 3/3 hardware runs said. Vulnerable variants (entry/tail/cf_*) all carry a fence too — just in a position that does not block the leak.*

