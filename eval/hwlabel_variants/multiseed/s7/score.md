# GINE detector on HW-labelled fenced variants (i5-8300H)

Locked v54_spec checkpoint. **Reproduce gate: PASSED** (target 0.961677).

Clean out-of-distribution test (0 overlap, 0 Revizor fingerprint in train). Every variant contains a fence, so token/histogram shortcuts cannot separate the arms — only fence *position* can.

## Per-base flip (the headline)

- Bases with both a vulnerable and a mitigated arm: **148**
- Model's leak-call separates the arms correctly (mean): **48/148 = 0.3243**
- Strict separation (every vuln→leak AND every mitigated→benign): **0/148 = 0.0**
- Wrong-direction (mitigated flagged more than its vulnerable sibling): **5**
- Fence-count floor baseline (position-blind): **54/148 = 0.3649** — GINE must beat this to claim it uses structure, not fence count.

## Leak-call rates

- Vulnerable arm recall (flags HW-vulnerable): 0.9611 (n=360)
- Mitigated arm specificity (clears HW-mitigated): 0.1649 (n=461)
- Exact-class acc on vulnerable arm: 0.3917 (n=360)

## Per variant type

| variant | n | HW | model leak-rate | agree w/ HW | mean P(benign) |
|---|---:|---|---:|---:|---:|
| after_load | 93 | benign | 0.785 | 0.215 | 0.285 |
| cf_fencepass | 4 | vuln | 1.0 | 1.0 | 0.066 |
| cf_nonleak | 4 | vuln | 1.0 | 1.0 | 0.025 |
| cf_wrong_path | 34 | vuln | 1.0 | 1.0 | 0.054 |
| entry | 147 | mixed | 0.946 | 0.898 | 0.112 |
| fence_all | 153 | benign | 0.641 | 0.359 | 0.32 |
| shifted | 57 | benign | 1.0 | 0.0 | 0.041 |
| tail | 148 | mixed | 0.959 | 0.946 | 0.101 |
| twin | 149 | benign | 0.993 | 0.007 | 0.06 |
| v1_fallthrough | 32 | vuln | 1.0 | 1.0 | 0.051 |

*HW = what 3/3 hardware runs said. Vulnerable variants (entry/tail/cf_*) all carry a fence too — just in a position that does not block the leak.*

