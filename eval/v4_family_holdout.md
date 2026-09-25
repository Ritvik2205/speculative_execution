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
| rv_lv4s_learned_adv_v4s | all | 5 | 20 ± 24 | 33 ± 28 | **-13 ± 12** | 22 ± 26 | 50 ± 36 |
| rv_lv4s_learned_adv_v4s | riscv64/clang | 5 | 47 ± 56 | 65 ± 52 | **-18 ± 28** | 60 ± 68 | 73 ± 54 |
| rv_lv4s_learned_adv_v4s | riscv64/gcc | 5 | 4 ± 11 | 8 ± 14 | **-4 ± 11** | 0 ± 0 | 36 ± 27 |
| rv_lv4s_learned_v4s | all | 5 | 30 ± 21 | 36 ± 18 | **-6 ± 7** | 20 ± 14 | 40 ± 23 |
| rv_lv4s_learned_v4s | riscv64/clang | 5 | 73 ± 45 | 75 ± 31 | **-2 ± 21** | 53 ± 37 | 73 ± 45 |
| rv_lv4s_learned_v4s | riscv64/gcc | 5 | 4 ± 11 | 4 ± 11 | **0 ± 0** | 0 ± 0 | 20 ± 25 |
| rv_lv4x_embed_v4s | all | 5 | 0 ± 0 | 0 ± 0 | **0 ± 0** | 0 ± 0 | 52 ± 37 |
| rv_lv4x_embed_v4s | riscv64/clang | 5 | 0 ± 0 | 0 ± 0 | **0 ± 0** | 0 ± 0 | 80 ± 56 |
| rv_lv4x_embed_v4s | riscv64/gcc | 5 | 0 ± 0 | 0 ± 0 | **0 ± 0** | 0 ± 0 | 36 ± 27 |
| rv_lv4x_learned_v4s | all | 5 | 35 ± 20 | 36 ± 31 | **-1 ± 20** | 18 ± 24 | 48 ± 20 |
| rv_lv4x_learned_v4s | riscv64/clang | 5 | 80 ± 23 | 70 ± 56 | **10 ± 45** | 47 ± 63 | 80 ± 23 |
| rv_lv4x_learned_v4s | riscv64/gcc | 5 | 8 ± 22 | 8 ± 22 | **0 ± 0** | 0 ± 0 | 28 ± 22 |

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
| rv_lv4s_learned_adv_v4s | all | 5 | 91 ± 16 | 70 ± 26 | **21 ± 16** | 52 ± 40 | 91 ± 16 |
| rv_lv4s_learned_adv_v4s | arm64/clang | 5 | 100 ± 0 | 60 ± 35 | **40 ± 35** | 45 ± 56 | 100 ± 0 |
| rv_lv4s_learned_adv_v4s | x86_64/clang | 5 | 80 ± 37 | 87 ± 37 | **-7 ± 19** | 60 ± 35 | 80 ± 37 |
| rv_lv4s_learned_v4s | all | 5 | 91 ± 24 | 75 ± 43 | **16 ± 34** | 35 ± 51 | 91 ± 24 |
| rv_lv4s_learned_v4s | arm64/clang | 5 | 100 ± 0 | 84 ± 27 | **16 ± 27** | 30 ± 51 | 100 ± 0 |
| rv_lv4s_learned_v4s | x86_64/clang | 5 | 80 ± 56 | 60 ± 68 | **20 ± 56** | 40 ± 52 | 80 ± 56 |
| rv_lv4x_embed_v4s | all | 5 | 100 ± 0 | 68 ± 34 | **32 ± 34** | 0 ± 0 | 100 ± 0 |
| rv_lv4x_embed_v4s | arm64/clang | 5 | 100 ± 0 | 48 ± 54 | **52 ± 54** | 0 ± 0 | 100 ± 0 |
| rv_lv4x_embed_v4s | x86_64/clang | 5 | 100 ± 0 | 100 ± 0 | **0 ± 0** | 0 ± 0 | 100 ± 0 |
| rv_lv4x_learned_v4s | all | 5 | 100 ± 0 | 57 ± 40 | **42 ± 40** | 2 ± 7 | 100 ± 0 |
| rv_lv4x_learned_v4s | arm64/clang | 5 | 100 ± 0 | 44 ± 32 | **56 ± 32** | 0 ± 0 | 100 ± 0 |
| rv_lv4x_learned_v4s | x86_64/clang | 5 | 100 ± 0 | 80 ± 56 | **20 ± 56** | 5 ± 14 | 100 ± 0 |

