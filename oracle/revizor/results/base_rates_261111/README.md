# Random-fuzzing base rates on the i5-8300H, from existing campaign logs

Source: `rvzr_campaign_tables.tsv` (parsed on the i5 on 2026-11-11 from
`~/rvzr_runs/campaign_*.log`; 271 fuzz runs with statistics). Rate = violations / test cases
executed, pooled over the runs of a campaign. Test cases include those the filters discard.

| class | contract | campaigns | violations per 1,000 test cases | median index of first violation |
|---|---|---|---|---|
| L1TF | delayed-exception-handling | 4 | 54 – 89 | 3 – 26 |
| SPECTRE_V1 | no_speculation | 4 | 35 – 44 | 8 – 21 |
| MDS | seq-assist | 4 | 12 – 23 | 29 – 61 |
| SPECTRE_V4 | seq (class config) | 5 | 2.0 – 6.2 | 57 – 232 |
| SPECTRE_V4 | seq (shared config) | 2 | 0.7 | 510 – 534 |
| SPECTRE_V4, SSBP patch on | seq | 6 | 0.0 | none |

Reading:

- No setting is saturated per program. V1 under the no-speculation contract violates in about
  4% of random test cases, not in most of them.
- The "9 violations per seed on every seed" figure is a time ceiling: each confirmed violation
  costs about 100–120 s, so 900 s holds nine. It says nothing about how often a program
  violates.
- For a per-program budget: V1 and L1TF give several violations per 100 programs; MDS one or
  two; V4 needs about 1,000 programs per campaign to see any.
