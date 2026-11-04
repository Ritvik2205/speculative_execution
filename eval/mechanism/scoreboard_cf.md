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

## revizor_hwlabel_cf_heldout (n=270, bases=116; headline excludes MDS)

| scorer | all | vuln | mitig | flip | abstain |
|---|---|---|---|---|---|
| always-attack | 0.726 | 1.000 | 0.000 | 0.000 | 0 |
| always-benign | 0.274 | 0.000 | 1.000 | 0.000 | 0 |
| fence-count | 0.381 | 0.393 | 0.351 | 0.188 | 0 |
| adjacent | 0.444 | 0.296 | 0.838 | 0.000 | 0 |
| interior | 0.274 | 0.000 | 1.000 | 0.000 | 0 |
| mechanism | 0.863 | 0.985 | 0.541 | 0.708 | 0 |
| mechanism-any | 0.719 | 0.648 | 0.905 | 0.375 | 0 |
| mechanism-v2 | 0.889 | 0.913 | 0.824 | 0.479 | 0 |

### Paired difference vs interior (acc, base-clustered 95% CI)

| scorer | diff | lo | hi |
|---|---|---|---|
| always-attack | +0.452 | 0.333 | 0.570 |
| always-benign | +0.000 | 0.000 | 0.000 |
| fence-count | +0.107 | 0.022 | 0.194 |
| adjacent | +0.170 | 0.107 | 0.238 |
| mechanism | +0.589 | 0.494 | 0.685 |
| mechanism-any | +0.444 | 0.360 | 0.529 |
| mechanism-v2 | +0.615 | 0.530 | 0.698 |

### Paired difference vs always-attack (acc, base-clustered 95% CI)

| scorer | diff | lo | hi |
|---|---|---|---|
| always-benign | -0.452 | -0.570 | -0.333 |
| fence-count | -0.344 | -0.414 | -0.272 |
| adjacent | -0.281 | -0.377 | -0.187 |
| interior | -0.452 | -0.570 | -0.333 |
| mechanism | +0.137 | 0.095 | 0.184 |
| mechanism-any | -0.007 | -0.092 | 0.076 |
| mechanism-v2 | +0.163 | 0.118 | 0.215 |

### cf_nonleak: paired difference vs always-attack (n=109, vulnerable=56)

| scorer | acc | diff | lo | hi |
|---|---|---|---|---|
| always-benign | 0.486 | -0.028 | -0.229 | 0.156 |
| fence-count | 0.550 | +0.037 | -0.083 | 0.156 |
| adjacent | 0.606 | +0.092 | -0.073 | 0.239 |
| interior | 0.486 | -0.028 | -0.229 | 0.156 |
| mechanism | 0.807 | +0.294 | 0.211 | 0.376 |
| mechanism-any | 0.780 | +0.266 | 0.119 | 0.404 |
| mechanism-v2 | 0.899 | +0.385 | 0.294 | 0.477 |

### MDS (unconfirmed hardware replay; not in the headline, n=31)

| scorer | all | vuln | mitig | flip | abstain |
|---|---|---|---|---|---|
| always-attack | 0.806 | 1.000 | 0.000 | 0.000 | 0 |
| always-benign | 0.194 | 0.000 | 1.000 | 0.000 | 0 |
| fence-count | 0.290 | 0.360 | 0.000 | 0.000 | 0 |
| adjacent | 0.194 | 0.000 | 1.000 | 0.000 | 0 |
| interior | 0.194 | 0.000 | 1.000 | 0.000 | 0 |
| mechanism | 0.839 | 1.000 | 0.167 | 0.167 | 0 |
| mechanism-any | 0.419 | 0.280 | 1.000 | 0.500 | 0 |
| mechanism-v2 | 0.839 | 1.000 | 0.167 | 0.167 | 0 |

### Per class (acc)

| scorer | L1TF | MDS † | SPECTRE_V1 | SPECTRE_V4 |
|---|---|---|---|---|
| always-attack | 0.796 | 0.806 | 0.885 | 0.264 |
| always-benign | 0.204 | 0.194 | 0.115 | 0.736 |
| fence-count | 0.327 | 0.290 | 0.500 | 0.264 |
| adjacent | 0.204 | 0.194 | 0.558 | 0.736 |
| interior | 0.204 | 0.194 | 0.115 | 0.736 |
| mechanism | 0.938 | 0.839 | 0.923 | 0.585 |
| mechanism-any | 0.531 | 0.419 | 0.923 | 0.717 |
| mechanism-v2 | 0.938 | 0.839 | 0.923 | 0.717 |

† hardware replay unconfirmed (paper sec:replay) — report separately, not in the headline.

### Per variant (acc)

| scorer | cf_after_bypass | cf_fencepass | cf_nonleak | cf_wrong_path |
|---|---|---|---|---|
| always-attack | 0.000 | 0.981 | 0.514 | 1.000 |
| always-benign | 1.000 | 0.019 | 0.486 | 0.000 |
| fence-count | 0.053 | 0.074 | 0.550 | 1.000 |
| adjacent | 1.000 | 0.324 | 0.606 | 0.000 |
| interior | 1.000 | 0.019 | 0.486 | 0.000 |
| mechanism | 0.421 | 0.954 | 0.807 | 1.000 |
| mechanism-any | 0.947 | 0.528 | 0.780 | 1.000 |
| mechanism-v2 | 0.947 | 0.833 | 0.899 | 1.000 |
