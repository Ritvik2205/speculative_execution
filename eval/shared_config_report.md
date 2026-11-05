# Shared-config confound test

Old corpus: per-class Revizor configs (opcode bar 0.97 = class given away by config). Shared corpus: one instruction set + shape for all classes; COND_BR stays V1-only, so **the clean test is MDS / L1TF / V4 ("excl. V1")**. Held-out split is by generator seed.

## Inventory

| class | shared records | seed groups | train | heldout | old per-class records |
|---|---|---|---|---|---|
| MDS | 66 | 10 | 33 | 33 | 160 |
| L1TF | 64 | 10 | 33 | 31 | 229 |
| SPECTRE_V4 | 7 | 6 | 3 | 4 | 116 |
| SPECTRE_V1 | 87 | 10 | 43 | 44 | 220 |

## Branch tell (share of programs with a conditional branch)

| class | old configs | shared config |
|---|---|---|
| MDS | 0.000 | 0.000 |
| L1TF | 0.000 | 0.000 |
| SPECTRE_V4 | 0.000 | 0.000 |
| SPECTRE_V1 | 1.000 | 1.000 |

## Opcode bar (scaled opcode-count LR)

| scorer | acc | acc excl. V1 | MDS | L1TF | SPECTRE_V4 | SPECTRE_V1 |
|---|---|---|---|---|---|---|
| cross-config: train old, test all shared | 0.674 | 0.467 | 0.000 | 1.000 | 0.000 | 1.000 |
| within shared: train shared-train, test heldout | 0.509 | 0.309 | 0.242 | 0.419 | 0.000 | 0.818 |

Reading: if cross-config drops far below 0.97 the old 0.97 was the config; if within-shared excl. V1 stays high, opcodes still carry class under one ISA.

### Cross-config models (trained on old per-class configs) on all shared gadgets

| arm | seeds | acc | acc excl. V1 | diff vs opcode bar excl. V1 [95% CI, by seed group] |
|---|---|---|---|---|
| allhw | 5 | 0.611 ± 0.055 | 0.375 ± 0.088 | -0.092 [-0.151, -0.038] |
| allhw2 | 5 | 0.636 ± 0.035 | 0.412 ± 0.058 | -0.055 [-0.101, -0.019] |
| b1 | 5 | 0.297 ± 0.167 | 0.001 ± 0.003 | -0.466 [-0.661, -0.254] |

### Models trained on shared-train, scored on shared heldout (T2)

| arm | seeds | acc | acc excl. V1 | diff vs opcode bar excl. V1 [95% CI, by seed group] |
|---|---|---|---|---|
| shared_gine | 5 | 0.679 ± 0.006 | 0.482 ± 0.028 | +0.174 [0.058, 0.256] |
