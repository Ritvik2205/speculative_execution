# Matched Spectre-V4 family — held-out structures (strides 11-12)

Cells: % of records, mean ± 95% t-CI across seeds. separation = vuln->V4 − safe->V4.

## v4fam_riscv64

| condition | slice | seeds | vuln->V4 | safe->V4 | **separation** | fenced->V4 | vuln->any attack |
|---|---|---|---|---|---|---|---|
| rv_embed_addrmo | all | 5 | 0 ± 0 | 0 ± 0 | **0 ± 0** | 0 ± 0 | 50 ± 22 |
| rv_embed_addrmo | riscv64/clang | 5 | 0 ± 0 | 0 ± 0 | **0 ± 0** | 0 ± 0 | 67 ± 59 |
| rv_embed_addrmo | riscv64/gcc | 5 | 0 ± 0 | 0 ± 0 | **0 ± 0** | 0 ± 0 | 40 ± 0 |
| rv_embed_v4s | all | 5 | 0 ± 0 | 0 ± 0 | **0 ± 0** | 0 ± 0 | 45 ± 21 |
| rv_embed_v4s | riscv64/clang | 5 | 0 ± 0 | 0 ± 0 | **0 ± 0** | 0 ± 0 | 53 ± 56 |
| rv_embed_v4s | riscv64/gcc | 5 | 0 ± 0 | 0 ± 0 | **0 ± 0** | 0 ± 0 | 40 ± 0 |
| rv_lv4s_embed_v4s | all | 5 | 5 ± 14 | 0 ± 0 | **5 ± 14** | 0 ± 0 | 60 ± 7 |
| rv_lv4s_embed_v4s | riscv64/clang | 5 | 13 ± 37 | 0 ± 0 | **13 ± 37** | 0 ± 0 | 93 ± 19 |
| rv_lv4s_embed_v4s | riscv64/gcc | 5 | 0 ± 0 | 0 ± 0 | **0 ± 0** | 0 ± 0 | 40 ± 0 |

## v4fam_x86arm

| condition | slice | seeds | vuln->V4 | safe->V4 | **separation** | fenced->V4 | vuln->any attack |
|---|---|---|---|---|---|---|---|
| rv_embed_addrmo | all | 5 | 0 ± 0 | 0 ± 0 | **0 ± 0** | 0 ± 0 | 43 ± 0 |
| rv_embed_addrmo | arm64/clang | 5 | 0 ± 0 | 0 ± 0 | **0 ± 0** | 0 ± 0 | 0 ± 0 |
| rv_embed_addrmo | x86_64/clang | 5 | 0 ± 0 | 0 ± 0 | **0 ± 0** | 0 ± 0 | 100 ± 0 |
| rv_embed_v4s | all | 5 | 0 ± 0 | 0 ± 0 | **0 ± 0** | 0 ± 0 | 43 ± 0 |
| rv_embed_v4s | arm64/clang | 5 | 0 ± 0 | 0 ± 0 | **0 ± 0** | 0 ± 0 | 0 ± 0 |
| rv_embed_v4s | x86_64/clang | 5 | 0 ± 0 | 0 ± 0 | **0 ± 0** | 0 ± 0 | 100 ± 0 |
| rv_lv4s_embed_v4s | all | 5 | 100 ± 0 | 75 ± 54 | **25 ± 54** | 20 ± 34 | 100 ± 0 |
| rv_lv4s_embed_v4s | arm64/clang | 5 | 100 ± 0 | 72 ± 54 | **28 ± 54** | 0 ± 0 | 100 ± 0 |
| rv_lv4s_embed_v4s | x86_64/clang | 5 | 100 ± 0 | 80 ± 56 | **20 ± 56** | 40 ± 68 | 100 ± 0 |

