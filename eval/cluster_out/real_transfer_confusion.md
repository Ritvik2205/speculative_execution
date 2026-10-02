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

## 2. Misplaced-fence control (still-vulnerable, fences at entry)

| tag | class | n | predicted as true class | predicted BENIGN |
|---|---|---|---|---|
| w3_embed_on | MDS | 33 | 0.012±0.024 | 0.000±0.000 |
| w3_embed_on | L1TF | 64 | 0.153±0.222 | 0.037±0.054 |
| w3_embed_on | SPECTRE_V1 | 50 | 0.920±0.108 | 0.000±0.000 |
| w3_embed_on | SPECTRE_V4 | 22 | 0.000±0.000 | 0.000±0.000 |
| mds_hw | MDS | 33 | 0.927±0.143 | 0.073±0.143 |
| mds_hw | L1TF | 64 | 0.000±0.000 | 0.637±0.206 |
| mds_hw | SPECTRE_V1 | 50 | 0.216±0.119 | 0.140±0.127 |
| mds_hw | SPECTRE_V4 | 22 | 0.000±0.000 | 0.127±0.186 |
| l1tf_hw | MDS | 33 | 0.000±0.000 | 0.339±0.385 |
| l1tf_hw | L1TF | 64 | 0.778±0.317 | 0.222±0.317 |
| l1tf_hw | SPECTRE_V1 | 50 | 0.008±0.010 | 0.000±0.000 |
| l1tf_hw | SPECTRE_V4 | 22 | 0.000±0.000 | 0.000±0.000 |
| spectre_v1_hw | MDS | 33 | 0.000±0.000 | 1.000±0.000 |
| spectre_v1_hw | L1TF | 64 | 0.000±0.000 | 0.953±0.092 |
| spectre_v1_hw | SPECTRE_V1 | 50 | 0.188±0.368 | 0.812±0.368 |
| spectre_v1_hw | SPECTRE_V4 | 22 | 0.000±0.000 | 0.836±0.321 |
| spectre_v4_hw | MDS | 33 | 0.000±0.000 | 1.000±0.000 |
| spectre_v4_hw | L1TF | 64 | 0.000±0.000 | 1.000±0.000 |
| spectre_v4_hw | SPECTRE_V1 | 50 | 0.004±0.008 | 0.996±0.008 |
| spectre_v4_hw | SPECTRE_V4 | 22 | 0.000±0.000 | 1.000±0.000 |
| allhw | MDS | 33 | 0.000±0.000 | 1.000±0.000 |
| allhw | L1TF | 64 | 0.000±0.000 | 1.000±0.000 |
| allhw | SPECTRE_V1 | 50 | 0.320±0.229 | 0.680±0.229 |
| allhw | SPECTRE_V4 | 22 | 0.136±0.267 | 0.864±0.267 |

## 3. allhw: real recall (diagonal) and synthetic-twin FP

| class | real recall | twin FP [SYNTHETIC/UNVERIFIED] |
|---|---|---|
| MDS | 1.000±0.000 | 0.000±0.000 |
| L1TF | 0.988±0.006 | 0.000±0.000 |
| SPECTRE_V1 | 0.978±0.029 | 0.067±0.015 |
| SPECTRE_V4 | 1.000±0.000 | 0.000±0.000 |
