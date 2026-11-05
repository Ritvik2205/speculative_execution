# GINE detector on HW-labelled fenced variants (i5-8300H)

Locked v54_spec checkpoint. **Reproduce gate: PASSED** (target 0.961078).

Clean out-of-distribution test (0 overlap, 0 Revizor fingerprint in train). Every variant contains a fence, so token/histogram shortcuts cannot separate the arms — only fence *position* can.

## Per-base flip (the headline)

- Bases with both a vulnerable and a mitigated arm: **0**
- Model's leak-call separates the arms correctly (mean): **0/0 = None**
- Strict separation (every vuln→leak AND every mitigated→benign): **0/0 = None**
- Wrong-direction (mitigated flagged more than its vulnerable sibling): **0**
- Fence-count floor baseline (position-blind): **0/0 = None** — GINE must beat this to claim it uses structure, not fence count.

## Leak-call rates

- Vulnerable arm recall (flags HW-vulnerable): 1.0 (n=224)
- Mitigated arm specificity (clears HW-mitigated): nan (n=0)
- Exact-class acc on vulnerable arm: 0.3884 (n=224)

## Per variant type

| variant | n | HW | model leak-rate | agree w/ HW | mean P(benign) |
|---|---:|---|---:|---:|---:|
| shared | 224 | vuln | 1.0 | 1.0 | 0.021 |

*HW = what 3/3 hardware runs said. Vulnerable variants (entry/tail/cf_*) all carry a fence too — just in a position that does not block the leak.*

