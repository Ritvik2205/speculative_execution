# Real-transfer confusion / shortcut controls (mean±95%CI over seeds)

- Per-class `_hw` rows test the STYLE SHORTCUT: off-diagonal mass on the model's own class (e.g. `l1tf_hw` calling real MDS gadgets L1TF) means it learned "Revizor-generated program -> my class", not the vulnerability.
- The `allhw` diagonal (trained on all four classes jointly) is the VALID transfer number.
- Misplaced-fence control: lfences at function entry (same count as the proper twin) do not mitigate the leak; BENIGN mass there = lfence-presence shortcut. Structural control, no hardware verification.

## 1. Confusion: held-out positives of class H, fraction predicted as each class

### w3_embed_on

| held-out class | MDS | L1TF | SPECTRE_V1 | SPECTRE_V4 | BENIGN |
|---|---|---|---|---|---|
| MDS (n=33) | 0.097±0.190 | 0.018±0.024 | 0.739±0.196 | 0.000±0.000 | 0.139±0.173 |
| L1TF (n=64) | 0.006±0.012 | 0.263±0.276 | 0.562±0.261 | 0.000±0.000 | 0.169±0.274 |
| SPECTRE_V1 (n=54) | 0.004±0.007 | 0.185±0.246 | 0.685±0.258 | 0.000±0.000 | 0.126±0.229 |
| SPECTRE_V4 (n=22) | 0.018±0.036 | 0.236±0.274 | 0.727±0.270 | 0.000±0.000 | 0.000±0.000 |

### mds_hw

| held-out class | MDS | L1TF | SPECTRE_V1 | SPECTRE_V4 | BENIGN |
|---|---|---|---|---|---|
| MDS (n=33) | 1.000±0.000 | 0.000±0.000 | 0.000±0.000 | 0.000±0.000 | 0.000±0.000 |
| L1TF (n=64) | 0.947±0.050 | 0.037±0.039 | 0.016±0.019 | 0.000±0.000 | 0.000±0.000 |
| SPECTRE_V1 (n=54) | 0.856±0.086 | 0.056±0.057 | 0.089±0.090 | 0.000±0.000 | 0.000±0.000 |
| SPECTRE_V4 (n=22) | 1.000±0.000 | 0.000±0.000 | 0.000±0.000 | 0.000±0.000 | 0.000±0.000 |

### l1tf_hw

| held-out class | MDS | L1TF | SPECTRE_V1 | SPECTRE_V4 | BENIGN |
|---|---|---|---|---|---|
| MDS (n=33) | 0.000±0.000 | 1.000±0.000 | 0.000±0.000 | 0.000±0.000 | 0.000±0.000 |
| L1TF (n=64) | 0.000±0.000 | 1.000±0.000 | 0.000±0.000 | 0.000±0.000 | 0.000±0.000 |
| SPECTRE_V1 (n=54) | 0.000±0.000 | 1.000±0.000 | 0.000±0.000 | 0.000±0.000 | 0.000±0.000 |
| SPECTRE_V4 (n=22) | 0.000±0.000 | 1.000±0.000 | 0.000±0.000 | 0.000±0.000 | 0.000±0.000 |

### spectre_v1_hw

| held-out class | MDS | L1TF | SPECTRE_V1 | SPECTRE_V4 | BENIGN |
|---|---|---|---|---|---|
| MDS (n=33) | 0.000±0.000 | 0.000±0.000 | 1.000±0.000 | 0.000±0.000 | 0.000±0.000 |
| L1TF (n=64) | 0.000±0.000 | 0.000±0.000 | 1.000±0.000 | 0.000±0.000 | 0.000±0.000 |
| SPECTRE_V1 (n=54) | 0.000±0.000 | 0.000±0.000 | 1.000±0.000 | 0.000±0.000 | 0.000±0.000 |
| SPECTRE_V4 (n=22) | 0.000±0.000 | 0.009±0.018 | 0.991±0.018 | 0.000±0.000 | 0.000±0.000 |

### spectre_v4_hw

| held-out class | MDS | L1TF | SPECTRE_V1 | SPECTRE_V4 | BENIGN |
|---|---|---|---|---|---|
| MDS (n=33) | 0.000±0.000 | 0.000±0.000 | 0.000±0.000 | 1.000±0.000 | 0.000±0.000 |
| L1TF (n=64) | 0.000±0.000 | 0.000±0.000 | 0.000±0.000 | 1.000±0.000 | 0.000±0.000 |
| SPECTRE_V1 (n=54) | 0.000±0.000 | 0.000±0.000 | 0.000±0.000 | 1.000±0.000 | 0.000±0.000 |
| SPECTRE_V4 (n=22) | 0.000±0.000 | 0.000±0.000 | 0.000±0.000 | 1.000±0.000 | 0.000±0.000 |

### allhw

| held-out class | MDS | L1TF | SPECTRE_V1 | SPECTRE_V4 | BENIGN |
|---|---|---|---|---|---|
| MDS (n=33) | 1.000±0.000 | 0.000±0.000 | 0.000±0.000 | 0.000±0.000 | 0.000±0.000 |
| L1TF (n=64) | 0.000±0.000 | 0.988±0.006 | 0.009±0.008 | 0.000±0.000 | 0.003±0.006 |
| SPECTRE_V1 (n=54) | 0.000±0.000 | 0.015±0.029 | 0.978±0.029 | 0.000±0.000 | 0.007±0.015 |
| SPECTRE_V4 (n=22) | 0.000±0.000 | 0.000±0.000 | 0.000±0.000 | 1.000±0.000 | 0.000±0.000 |

### allhw2

| held-out class | MDS | L1TF | SPECTRE_V1 | SPECTRE_V4 | BENIGN |
|---|---|---|---|---|---|
| MDS (n=33) | 1.000±0.000 | 0.000±0.000 | 0.000±0.000 | 0.000±0.000 | 0.000±0.000 |
| L1TF (n=64) | 0.000±0.000 | 0.988±0.006 | 0.003±0.006 | 0.000±0.000 | 0.009±0.008 |
| SPECTRE_V1 (n=54) | 0.000±0.000 | 0.011±0.022 | 0.974±0.032 | 0.000±0.000 | 0.015±0.021 |
| SPECTRE_V4 (n=22) | 0.000±0.000 | 0.000±0.000 | 0.000±0.000 | 1.000±0.000 | 0.000±0.000 |

## 2. Misplaced-fence control (still-vulnerable, fences at entry)

| tag | placement | class | n | predicted as true class | predicted BENIGN |
|---|---|---|---|---|---|
| w3_embed_on | entry | MDS | 33 | 0.012±0.024 | 0.000±0.000 |
| w3_embed_on | tail | MDS | 33 | 0.024±0.048 | 0.012±0.024 |
| w3_embed_on | entry | L1TF | 64 | 0.153±0.222 | 0.037±0.054 |
| w3_embed_on | tail | L1TF | 64 | 0.250±0.231 | 0.087±0.136 |
| w3_embed_on | entry | SPECTRE_V1 | 50 | 0.920±0.108 | 0.000±0.000 |
| w3_embed_on | tail | SPECTRE_V1 | 50 | 0.916±0.115 | 0.000±0.000 |
| w3_embed_on | shift | SPECTRE_V1 | 50 | 0.912±0.107 | 0.000±0.000 |
| w3_embed_on | entry | SPECTRE_V4 | 22 | 0.000±0.000 | 0.000±0.000 |
| w3_embed_on | tail | SPECTRE_V4 | 22 | 0.000±0.000 | 0.000±0.000 |
| w3_embed_on | shift | SPECTRE_V4 | 22 | 0.000±0.000 | 0.000±0.000 |
| mds_hw | entry | MDS | 33 | 0.927±0.143 | 0.073±0.143 |
| mds_hw | tail | MDS | 33 | 0.970±0.046 | 0.030±0.046 |
| mds_hw | entry | L1TF | 64 | 0.000±0.000 | 0.637±0.206 |
| mds_hw | tail | L1TF | 64 | 0.000±0.000 | 0.709±0.194 |
| mds_hw | entry | SPECTRE_V1 | 50 | 0.216±0.119 | 0.140±0.127 |
| mds_hw | tail | SPECTRE_V1 | 50 | 0.244±0.135 | 0.092±0.080 |
| mds_hw | shift | SPECTRE_V1 | 50 | 0.192±0.114 | 0.160±0.131 |
| mds_hw | entry | SPECTRE_V4 | 22 | 0.000±0.000 | 0.127±0.186 |
| mds_hw | tail | SPECTRE_V4 | 22 | 0.000±0.000 | 0.127±0.142 |
| mds_hw | shift | SPECTRE_V4 | 22 | 0.000±0.000 | 0.636±0.203 |
| l1tf_hw | entry | MDS | 33 | 0.000±0.000 | 0.339±0.385 |
| l1tf_hw | tail | MDS | 33 | 0.000±0.000 | 0.327±0.409 |
| l1tf_hw | entry | L1TF | 64 | 0.778±0.317 | 0.222±0.317 |
| l1tf_hw | tail | L1TF | 64 | 0.847±0.240 | 0.153±0.240 |
| l1tf_hw | entry | SPECTRE_V1 | 50 | 0.008±0.010 | 0.000±0.000 |
| l1tf_hw | tail | SPECTRE_V1 | 50 | 0.008±0.010 | 0.000±0.000 |
| l1tf_hw | shift | SPECTRE_V1 | 50 | 0.004±0.008 | 0.000±0.000 |
| l1tf_hw | entry | SPECTRE_V4 | 22 | 0.000±0.000 | 0.000±0.000 |
| l1tf_hw | tail | SPECTRE_V4 | 22 | 0.000±0.000 | 0.000±0.000 |
| l1tf_hw | shift | SPECTRE_V4 | 22 | 0.000±0.000 | 0.255±0.294 |
| spectre_v1_hw | entry | MDS | 33 | 0.000±0.000 | 1.000±0.000 |
| spectre_v1_hw | tail | MDS | 33 | 0.000±0.000 | 1.000±0.000 |
| spectre_v1_hw | entry | L1TF | 64 | 0.000±0.000 | 0.953±0.092 |
| spectre_v1_hw | tail | L1TF | 64 | 0.000±0.000 | 0.994±0.012 |
| spectre_v1_hw | entry | SPECTRE_V1 | 50 | 0.188±0.368 | 0.812±0.368 |
| spectre_v1_hw | tail | SPECTRE_V1 | 50 | 0.180±0.353 | 0.820±0.353 |
| spectre_v1_hw | shift | SPECTRE_V1 | 50 | 0.120±0.235 | 0.880±0.235 |
| spectre_v1_hw | entry | SPECTRE_V4 | 22 | 0.000±0.000 | 0.836±0.321 |
| spectre_v1_hw | tail | SPECTRE_V4 | 22 | 0.000±0.000 | 0.873±0.249 |
| spectre_v1_hw | shift | SPECTRE_V4 | 22 | 0.000±0.000 | 0.873±0.249 |
| spectre_v4_hw | entry | MDS | 33 | 0.000±0.000 | 1.000±0.000 |
| spectre_v4_hw | tail | MDS | 33 | 0.000±0.000 | 1.000±0.000 |
| spectre_v4_hw | entry | L1TF | 64 | 0.000±0.000 | 1.000±0.000 |
| spectre_v4_hw | tail | L1TF | 64 | 0.000±0.000 | 1.000±0.000 |
| spectre_v4_hw | entry | SPECTRE_V1 | 50 | 0.004±0.008 | 0.996±0.008 |
| spectre_v4_hw | tail | SPECTRE_V1 | 50 | 0.004±0.008 | 0.996±0.008 |
| spectre_v4_hw | shift | SPECTRE_V1 | 50 | 0.004±0.008 | 0.996±0.008 |
| spectre_v4_hw | entry | SPECTRE_V4 | 22 | 0.000±0.000 | 1.000±0.000 |
| spectre_v4_hw | tail | SPECTRE_V4 | 22 | 0.000±0.000 | 1.000±0.000 |
| spectre_v4_hw | shift | SPECTRE_V4 | 22 | 0.000±0.000 | 1.000±0.000 |
| allhw | entry | MDS | 33 | 0.000±0.000 | 1.000±0.000 |
| allhw | tail | MDS | 33 | 0.000±0.000 | 1.000±0.000 |
| allhw | entry | L1TF | 64 | 0.000±0.000 | 1.000±0.000 |
| allhw | tail | L1TF | 64 | 0.000±0.000 | 1.000±0.000 |
| allhw | entry | SPECTRE_V1 | 50 | 0.320±0.229 | 0.680±0.229 |
| allhw | tail | SPECTRE_V1 | 50 | 0.196±0.142 | 0.804±0.142 |
| allhw | shift | SPECTRE_V1 | 50 | 0.004±0.008 | 0.996±0.008 |
| allhw | entry | SPECTRE_V4 | 22 | 0.136±0.267 | 0.864±0.267 |
| allhw | tail | SPECTRE_V4 | 22 | 0.000±0.000 | 1.000±0.000 |
| allhw | shift | SPECTRE_V4 | 22 | 0.000±0.000 | 1.000±0.000 |
| allhw2 | entry | MDS | 33 | 1.000±0.000 | 0.000±0.000 |
| allhw2 | tail | MDS | 33 | 1.000±0.000 | 0.000±0.000 |
| allhw2 | entry | L1TF | 64 | 0.994±0.008 | 0.000±0.000 |
| allhw2 | tail | L1TF | 64 | 0.988±0.006 | 0.009±0.008 |
| allhw2 | entry | SPECTRE_V1 | 50 | 1.000±0.000 | 0.000±0.000 |
| allhw2 | tail | SPECTRE_V1 | 50 | 1.000±0.000 | 0.000±0.000 |
| allhw2 | shift | SPECTRE_V1 | 50 | 1.000±0.000 | 0.000±0.000 |
| allhw2 | entry | SPECTRE_V4 | 22 | 1.000±0.000 | 0.000±0.000 |
| allhw2 | tail | SPECTRE_V4 | 22 | 1.000±0.000 | 0.000±0.000 |
| allhw2 | shift | SPECTRE_V4 | 22 | 1.000±0.000 | 0.000±0.000 |

## 3. allhw: real recall (diagonal) and synthetic-twin FP

| class | real recall | twin FP [SYNTHETIC/UNVERIFIED] |
|---|---|---|
| MDS | 1.000±0.000 | 0.000±0.000 |
| L1TF | 0.988±0.006 | 0.000±0.000 |
| SPECTRE_V1 | 0.978±0.029 | 0.067±0.015 |
| SPECTRE_V4 | 1.000±0.000 | 0.000±0.000 |
