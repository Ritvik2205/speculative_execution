# GINE detector on HW-labelled fenced variants (i5-8300H)

Locked v54_spec checkpoint. **Reproduce gate: PASSED** (target 0.957485).

Clean out-of-distribution test (0 overlap, 0 Revizor fingerprint in train). Every variant contains a fence, so token/histogram shortcuts cannot separate the arms — only fence *position* can.

## Per-base flip (the headline)

- Bases with both a vulnerable and a mitigated arm: **148**
- Model's leak-call separates the arms correctly (mean): **60/148 = 0.4054**
- Strict separation (every vuln→leak AND every mitigated→benign): **0/148 = 0.0**
- Wrong-direction (mitigated flagged more than its vulnerable sibling): **0**
- Fence-count floor baseline (position-blind): **54/148 = 0.3649** — GINE must beat this to claim it uses structure, not fence count.

## Leak-call rates

- Vulnerable arm recall (flags HW-vulnerable): 0.9944 (n=360)
- Mitigated arm specificity (clears HW-mitigated): 0.1562 (n=461)
- Exact-class acc on vulnerable arm: 0.3944 (n=360)

## Per variant type

| variant | n | HW | model leak-rate | agree w/ HW | mean P(benign) |
|---|---:|---|---:|---:|---:|
| after_load | 93 | benign | 0.925 | 0.075 | 0.142 |
| cf_fencepass | 4 | vuln | 1.0 | 1.0 | 0.14 |
| cf_nonleak | 4 | vuln | 1.0 | 1.0 | 0.017 |
| cf_wrong_path | 34 | vuln | 1.0 | 1.0 | 0.022 |
| entry | 147 | mixed | 0.993 | 0.946 | 0.028 |
| fence_all | 153 | benign | 0.582 | 0.418 | 0.389 |
| shifted | 57 | benign | 1.0 | 0.0 | 0.023 |
| tail | 148 | mixed | 0.993 | 0.98 | 0.053 |
| twin | 149 | benign | 0.993 | 0.007 | 0.024 |
| v1_fallthrough | 32 | vuln | 1.0 | 1.0 | 0.018 |

*HW = what 3/3 hardware runs said. Vulnerable variants (entry/tail/cf_*) all carry a fence too — just in a position that does not block the leak.*

