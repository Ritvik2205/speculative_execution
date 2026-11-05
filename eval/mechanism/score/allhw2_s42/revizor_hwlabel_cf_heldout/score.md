# GINE detector on HW-labelled fenced variants (i5-8300H)

Locked v54_spec checkpoint. **Reproduce gate: PASSED** (target 0.955090).

Clean out-of-distribution test (0 overlap, 0 Revizor fingerprint in train). Every variant contains a fence, so token/histogram shortcuts cannot separate the arms — only fence *position* can.

## Per-base flip (the headline)

- Bases with both a vulnerable and a mitigated arm: **54**
- Model's leak-call separates the arms correctly (mean): **5/54 = 0.0926**
- Strict separation (every vuln→leak AND every mitigated→benign): **4/54 = 0.0741**
- Wrong-direction (mitigated flagged more than its vulnerable sibling): **25**
- Fence-count floor baseline (position-blind): **9/54 = 0.1667** — GINE must beat this to claim it uses structure, not fence count.

## Leak-call rates

- Vulnerable arm recall (flags HW-vulnerable): 0.4389 (n=221)
- Mitigated arm specificity (clears HW-mitigated): 0.125 (n=80)
- Exact-class acc on vulnerable arm: 0.4389 (n=221)

## Per variant type

| variant | n | HW | model leak-rate | agree w/ HW | mean P(benign) |
|---|---:|---|---:|---:|---:|
| cf_after_bypass | 19 | benign | 0.947 | 0.053 | 0.061 |
| cf_fencepass | 131 | mixed | 0.366 | 0.366 | 0.625 |
| cf_nonleak | 117 | mixed | 0.863 | 0.496 | 0.135 |
| cf_wrong_path | 34 | vuln | 0.0 | 0.0 | 1.0 |

*HW = what 3/3 hardware runs said. Vulnerable variants (entry/tail/cf_*) all carry a fence too — just in a position that does not block the leak.*

