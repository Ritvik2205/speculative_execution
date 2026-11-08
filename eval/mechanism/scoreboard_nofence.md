# Mechanism-vs-shape scoreboard

Bars and the mechanism rule use no learning. acc = exact hardware-label match; abstain counts wrong.

## revizor_hwlabel_nofence_heldout (n=231, bases=122; headline excludes MDS)

| scorer | all | vuln | mitig | flip | abstain |
|---|---|---|---|---|---|
| always-attack | 0.641 | 1.000 | 0.000 | 0.000 | 0 |
| always-benign | 0.359 | 0.000 | 1.000 | 0.000 | 0 |
| fence-count | 0.359 | 0.000 | 1.000 | 0.000 | 0 |
| adjacent | 0.641 | 1.000 | 0.000 | 0.000 | 0 |
| interior | 0.641 | 1.000 | 0.000 | 0.000 | 0 |
| mechanism | 0.641 | 1.000 | 0.000 | 0.000 | 9 |
| mechanism-any | 0.641 | 1.000 | 0.000 | 0.000 | 9 |
| mechanism-v2 | 0.641 | 1.000 | 0.000 | 0.000 | 9 |
| allhw_s1 | 0.636 | 1.000 | 0.000 | 0.000 | 0 |
| allhw_s7 | 0.636 | 1.000 | 0.000 | 0.000 | 0 |
| allhw_s13 | 0.636 | 1.000 | 0.000 | 0.000 | 0 |
| allhw_s21 | 0.615 | 1.000 | 0.000 | 0.000 | 0 |
| allhw_s42 | 0.623 | 0.966 | 0.012 | 0.000 | 0 |
| allhw2_s1 | 0.628 | 0.959 | 0.036 | 0.000 | 0 |
| allhw2_s7 | 0.641 | 1.000 | 0.000 | 0.000 | 0 |
| allhw2_s13 | 0.619 | 0.973 | 0.012 | 0.000 | 0 |
| allhw2_s21 | 0.641 | 1.000 | 0.000 | 0.000 | 0 |
| allhw2_s42 | 0.641 | 0.993 | 0.012 | 0.000 | 0 |

| arm | acc mean ± std |
|---|---|
| allhw (5 seeds) | 0.629 ± 0.010 |
| allhw2 (5 seeds) | 0.634 ± 0.010 |

### Paired difference vs interior (acc, base-clustered 95% CI)

| scorer | diff | lo | hi |
|---|---|---|---|
| always-attack | +0.000 | 0.000 | 0.000 |
| always-benign | -0.281 | -0.368 | -0.198 |
| fence-count | -0.281 | -0.368 | -0.198 |
| adjacent | +0.000 | 0.000 | 0.000 |
| mechanism | +0.000 | 0.000 | 0.000 |
| mechanism-any | +0.000 | 0.000 | 0.000 |
| mechanism-v2 | +0.000 | 0.000 | 0.000 |
| allhw_s1 | -0.004 | -0.013 | 0.000 |
| allhw_s7 | -0.004 | -0.013 | 0.000 |
| allhw_s13 | -0.004 | -0.013 | 0.000 |
| allhw_s21 | -0.026 | -0.055 | -0.004 |
| allhw_s42 | -0.017 | -0.039 | 0.000 |
| allhw2_s1 | -0.013 | -0.035 | 0.000 |
| allhw2_s7 | +0.000 | 0.000 | 0.000 |
| allhw2_s13 | -0.022 | -0.047 | -0.004 |
| allhw2_s21 | +0.000 | 0.000 | 0.000 |
| allhw2_s42 | +0.000 | 0.000 | 0.000 |

### Paired difference vs always-attack (acc, base-clustered 95% CI)

| scorer | diff | lo | hi |
|---|---|---|---|
| always-benign | -0.281 | -0.368 | -0.198 |
| fence-count | -0.281 | -0.368 | -0.198 |
| adjacent | +0.000 | 0.000 | 0.000 |
| interior | +0.000 | 0.000 | 0.000 |
| mechanism | +0.000 | 0.000 | 0.000 |
| mechanism-any | +0.000 | 0.000 | 0.000 |
| mechanism-v2 | +0.000 | 0.000 | 0.000 |
| allhw_s1 | -0.004 | -0.013 | 0.000 |
| allhw_s7 | -0.004 | -0.013 | 0.000 |
| allhw_s13 | -0.004 | -0.013 | 0.000 |
| allhw_s21 | -0.026 | -0.055 | -0.004 |
| allhw_s42 | -0.017 | -0.039 | 0.000 |
| allhw2_s1 | -0.013 | -0.035 | 0.000 |
| allhw2_s7 | +0.000 | 0.000 | 0.000 |
| allhw2_s13 | -0.022 | -0.047 | -0.004 |
| allhw2_s21 | +0.000 | 0.000 | 0.000 |
| allhw2_s42 | +0.000 | 0.000 | 0.000 |

### MDS (unconfirmed hardware replay; not in the headline, n=43)

| scorer | all | vuln | mitig | flip | abstain |
|---|---|---|---|---|---|
| always-attack | 0.442 | 1.000 | 0.000 | 0.000 | 0 |
| always-benign | 0.558 | 0.000 | 1.000 | 0.000 | 0 |
| fence-count | 0.558 | 0.000 | 1.000 | 0.000 | 0 |
| adjacent | 0.442 | 1.000 | 0.000 | 0.000 | 0 |
| interior | 0.442 | 1.000 | 0.000 | 0.000 | 0 |
| mechanism | 0.442 | 1.000 | 0.000 | 0.000 | 0 |
| mechanism-any | 0.442 | 1.000 | 0.000 | 0.000 | 0 |
| mechanism-v2 | 0.442 | 1.000 | 0.000 | 0.000 | 0 |
| allhw_s1 | 0.442 | 1.000 | 0.000 | 0.000 | 0 |
| allhw_s7 | 0.442 | 1.000 | 0.000 | 0.000 | 0 |
| allhw_s13 | 0.442 | 1.000 | 0.000 | 0.000 | 0 |
| allhw_s21 | 0.442 | 1.000 | 0.000 | 0.000 | 0 |
| allhw_s42 | 0.442 | 1.000 | 0.000 | 0.000 | 0 |
| allhw2_s1 | 0.442 | 1.000 | 0.000 | 0.000 | 0 |
| allhw2_s7 | 0.442 | 1.000 | 0.000 | 0.000 | 0 |
| allhw2_s13 | 0.442 | 1.000 | 0.000 | 0.000 | 0 |
| allhw2_s21 | 0.442 | 1.000 | 0.000 | 0.000 | 0 |
| allhw2_s42 | 0.442 | 1.000 | 0.000 | 0.000 | 0 |

### Per class (acc)

| scorer | L1TF | MDS † | SPECTRE_V1 | SPECTRE_V4 |
|---|---|---|---|---|
| always-attack | 0.632 | 0.442 | 0.712 | 0.537 |
| always-benign | 0.368 | 0.558 | 0.288 | 0.463 |
| fence-count | 0.368 | 0.558 | 0.288 | 0.463 |
| adjacent | 0.632 | 0.442 | 0.712 | 0.537 |
| interior | 0.632 | 0.442 | 0.712 | 0.537 |
| mechanism | 0.632 | 0.442 | 0.712 | 0.537 |
| mechanism-any | 0.632 | 0.442 | 0.712 | 0.537 |
| mechanism-v2 | 0.632 | 0.442 | 0.712 | 0.537 |
| allhw_s1 | 0.624 | 0.442 | 0.712 | 0.537 |
| allhw_s7 | 0.624 | 0.442 | 0.712 | 0.537 |
| allhw_s13 | 0.624 | 0.442 | 0.712 | 0.537 |
| allhw_s21 | 0.632 | 0.442 | 0.630 | 0.537 |
| allhw_s42 | 0.632 | 0.442 | 0.658 | 0.537 |
| allhw2_s1 | 0.632 | 0.442 | 0.671 | 0.537 |
| allhw2_s7 | 0.632 | 0.442 | 0.712 | 0.537 |
| allhw2_s13 | 0.632 | 0.442 | 0.644 | 0.537 |
| allhw2_s21 | 0.632 | 0.442 | 0.712 | 0.537 |
| allhw2_s42 | 0.632 | 0.442 | 0.712 | 0.537 |

† hardware replay unconfirmed (paper sec:replay) — report separately, not in the headline.

### Per variant (acc)

| scorer | cf_nofence_ess | cf_nofence_non |
|---|---|---|
| always-attack | 0.287 | 0.991 |
| always-benign | 0.713 | 0.009 |
| fence-count | 0.713 | 0.009 |
| adjacent | 0.287 | 0.991 |
| interior | 0.287 | 0.991 |
| mechanism | 0.287 | 0.991 |
| mechanism-any | 0.287 | 0.991 |
| mechanism-v2 | 0.287 | 0.991 |
| allhw_s1 | 0.287 | 0.983 |
| allhw_s7 | 0.287 | 0.983 |
| allhw_s13 | 0.287 | 0.983 |
| allhw_s21 | 0.270 | 0.957 |
| allhw_s42 | 0.287 | 0.957 |
| allhw2_s1 | 0.304 | 0.948 |
| allhw2_s7 | 0.287 | 0.991 |
| allhw2_s13 | 0.287 | 0.948 |
| allhw2_s21 | 0.287 | 0.991 |
| allhw2_s42 | 0.296 | 0.983 |
