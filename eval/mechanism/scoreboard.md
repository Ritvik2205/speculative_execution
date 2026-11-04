# Mechanism-vs-shape scoreboard

Bars and the mechanism rule use no learning. acc = exact hardware-label match; abstain counts wrong.

## revizor_hwlabel_variants (n=641, bases=129; headline excludes MDS)

| scorer | all | vuln | mitig | flip | abstain |
|---|---|---|---|---|---|
| always-attack | 0.401 | 1.000 | 0.000 | 0.000 | 0 |
| always-benign | 0.599 | 0.000 | 1.000 | 0.000 | 0 |
| fence-count | 0.596 | 0.268 | 0.815 | 0.287 | 0 |
| adjacent | 0.863 | 0.852 | 0.870 | 0.975 | 0 |
| interior | 0.992 | 1.000 | 0.987 | 1.000 | 0 |
| mechanism | 0.992 | 1.000 | 0.987 | 1.000 | 0 |
| mechanism-any | 0.992 | 1.000 | 0.987 | 1.000 | 0 |
| mechanism-v2 | 0.992 | 1.000 | 0.987 | 1.000 | 0 |

### Paired difference vs interior (acc, base-clustered 95% CI)

| scorer | diff | lo | hi |
|---|---|---|---|
| always-attack | -0.591 | -0.604 | -0.579 |
| always-benign | -0.393 | -0.410 | -0.374 |
| fence-count | -0.396 | -0.413 | -0.378 |
| adjacent | -0.129 | -0.147 | -0.113 |
| mechanism | +0.000 | 0.000 | 0.000 |
| mechanism-any | +0.000 | 0.000 | 0.000 |
| mechanism-v2 | +0.000 | 0.000 | 0.000 |

### Paired difference vs always-attack (acc, base-clustered 95% CI)

| scorer | diff | lo | hi |
|---|---|---|---|
| always-benign | +0.198 | 0.171 | 0.228 |
| fence-count | +0.195 | 0.168 | 0.224 |
| adjacent | +0.462 | 0.441 | 0.482 |
| interior | +0.591 | 0.579 | 0.604 |
| mechanism | +0.591 | 0.579 | 0.604 |
| mechanism-any | +0.591 | 0.579 | 0.604 |
| mechanism-v2 | +0.591 | 0.579 | 0.604 |

### MDS (unconfirmed hardware replay; not in the headline, n=165)

| scorer | all | vuln | mitig | flip | abstain |
|---|---|---|---|---|---|
| always-attack | 0.388 | 1.000 | 0.000 | 0.000 | 0 |
| always-benign | 0.612 | 0.000 | 1.000 | 0.000 | 0 |
| fence-count | 0.588 | 0.594 | 0.584 | 0.594 | 0 |
| adjacent | 0.903 | 0.766 | 0.990 | 1.000 | 0 |
| interior | 0.988 | 1.000 | 0.980 | 1.000 | 0 |
| mechanism | 0.988 | 1.000 | 0.980 | 1.000 | 0 |
| mechanism-any | 0.988 | 1.000 | 0.980 | 1.000 | 0 |
| mechanism-v2 | 0.988 | 1.000 | 0.980 | 1.000 | 0 |

### Per class (acc)

| scorer | L1TF | MDS † | SPECTRE_V1 | SPECTRE_V4 |
|---|---|---|---|---|
| always-attack | 0.398 | 0.388 | 0.420 | 0.369 |
| always-benign | 0.602 | 0.612 | 0.580 | 0.631 |
| fence-count | 0.602 | 0.588 | 0.580 | 0.612 |
| adjacent | 0.908 | 0.903 | 0.786 | 0.893 |
| interior | 1.000 | 0.988 | 0.987 | 0.981 |
| mechanism | 1.000 | 0.988 | 0.987 | 0.981 |
| mechanism-any | 1.000 | 0.988 | 0.987 | 0.981 |
| mechanism-v2 | 1.000 | 0.988 | 0.987 | 0.981 |

† hardware replay unconfirmed (paper sec:replay) — report separately, not in the headline.

### Per variant (acc)

| scorer | after_load | entry | fence_all | shifted | tail | twin | v1_fallthrough |
|---|---|---|---|---|---|---|---|
| always-attack | 0.000 | 0.957 | 0.000 | 0.000 | 1.000 | 0.000 | 1.000 |
| always-benign | 1.000 | 0.043 | 1.000 | 1.000 | 0.000 | 1.000 | 0.000 |
| fence-count | 0.571 | 0.328 | 1.000 | 0.871 | 0.307 | 0.720 | 0.000 |
| adjacent | 1.000 | 0.957 | 0.969 | 1.000 | 0.667 | 0.672 | 1.000 |
| interior | 1.000 | 0.957 | 1.000 | 1.000 | 1.000 | 1.000 | 1.000 |
| mechanism | 1.000 | 0.957 | 1.000 | 1.000 | 1.000 | 1.000 | 1.000 |
| mechanism-any | 1.000 | 0.957 | 1.000 | 1.000 | 1.000 | 1.000 | 1.000 |
| mechanism-v2 | 1.000 | 0.957 | 1.000 | 1.000 | 1.000 | 1.000 | 1.000 |
