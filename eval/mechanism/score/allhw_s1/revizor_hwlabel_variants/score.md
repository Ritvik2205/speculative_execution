# GINE detector on HW-labelled fenced variants (i5-8300H)

Locked v54_spec checkpoint. **Reproduce gate: PASSED** (target 0.964072).

Clean out-of-distribution test (0 overlap, 0 Revizor fingerprint in train). Every variant contains a fence, so token/histogram shortcuts cannot separate the arms — only fence *position* can.

## Per-base flip (the headline)

- Bases with both a vulnerable and a mitigated arm: **154**
- Model's leak-call separates the arms correctly (mean): **17/154 = 0.1104**
- Strict separation (every vuln→leak AND every mitigated→benign): **6/154 = 0.039**
- Wrong-direction (mitigated flagged more than its vulnerable sibling): **16**
- Fence-count floor baseline (position-blind): **54/154 = 0.3506** — GINE must beat this to claim it uses structure, not fence count.

## Leak-call rates

- Vulnerable arm recall (flags HW-vulnerable): 0.0903 (n=321)
- Mitigated arm specificity (clears HW-mitigated): 0.9505 (n=485)
- Exact-class acc on vulnerable arm: 0.0903 (n=321)

## Per variant type

| variant | n | HW | model leak-rate | agree w/ HW | mean P(benign) |
|---|---:|---|---:|---:|---:|
| after_load | 96 | benign | 0.0 | 1.0 | 1.0 |
| entry | 149 | mixed | 0.121 | 0.121 | 0.886 |
| fence_all | 162 | benign | 0.093 | 0.907 | 0.918 |
| shifted | 62 | benign | 0.016 | 0.984 | 0.872 |
| tail | 147 | mixed | 0.048 | 0.054 | 0.925 |
| twin | 158 | benign | 0.032 | 0.968 | 0.909 |
| v1_fallthrough | 32 | vuln | 0.219 | 0.219 | 0.646 |

*HW = what 3/3 hardware runs said. Vulnerable variants (entry/tail/cf_*) all carry a fence too — just in a position that does not block the leak.*

