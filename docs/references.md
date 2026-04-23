# SpecExec Research References

This document lists all academic papers, datasets, CVEs, and public codebases
referenced or used in the SpecExec vulnerability detection system.

---

## Core Speculative Execution Attack Papers

### Spectre Variants

**[SPECTRE_V1]** Kocher, P., Horn, J., Fogh, A., Genkin, D., Gruss, D., Haas, W.,
Hamburg, M., Lipp, M., Mangard, S., Prescher, T., Schwarz, M., & Yarom, Y.
"Spectre Attacks: Exploiting Speculative Execution."
*IEEE Symposium on Security and Privacy (S&P)*, 2019.
https://spectreattack.com/spectre.pdf
CVE-2017-5753 (Bounds Check Bypass)

**[SPECTRE_V2]** Kocher et al., same paper as above.
CVE-2017-5715 (Branch Target Injection)
Mitigation: Retpoline (Google Project Zero, 2018)

**[SPECTRE_V4]** Horn, J. "Speculative Execution, Variant 4: Speculative Store Bypass."
*Google Project Zero*, 2018.
https://bugs.chromium.org/p/project-zero/issues/detail?id=1528
CVE-2018-3639 (Speculative Store Bypass)

**[SPECTRE_RSB]** Koruyeh, E.M., Khasawneh, K., Song, C., & Abu-Ghazaleh, N.
"Spectre Returns! Speculation Attacks using the Return Stack Buffer."
*USENIX Workshop on Offensive Technologies (WOOT)*, 2018.
https://www.usenix.org/conference/woot18/presentation/koruyeh
CVE-2018-15572, CVE-2018-3693

### Meltdown and L1TF / Foreshadow

**[MELTDOWN/L1TF]** Lipp, M., Schwarz, M., Gruss, D., Prescher, T., Haas, W.,
Fogh, A., Horn, J., Mangard, S., Kocher, P., Genkin, D., Yarom, Y., & Hamburg, M.
"Meltdown: Reading Kernel Memory from User Space."
*USENIX Security Symposium*, 2018.
CVE-2017-5754

**[FORESHADOW]** Van Bulck, J., Minkin, M., Weisse, O., Genkin, D., Kasikci, B.,
Piessens, F., Silberstein, M., Wenisch, T.F., Yarom, Y., & Strackx, R.
"Foreshadow: Extracting the Keys to the Intel SGX Kingdom with Transient Out-of-Order Execution."
*USENIX Security Symposium*, 2018.
CVE-2018-3615, CVE-2018-3620, CVE-2018-3646 (L1 Terminal Fault)

### MDS (Microarchitectural Data Sampling)

**[MDS/RIDL]** Van Schaik, S., Milburn, A., Österlund, S., Frigo, P., Maisuradze, G.,
Razavi, K., Bos, H., & Giuffrida, C.
"RIDL: Rogue In-Flight Data Load."
*IEEE S&P*, 2019. CVE-2018-12127

**[FALLOUT]** Canella, C., Genkin, D., Giner, L., Gruss, D., Lipp, M., Minkin, M.,
Moghimi, D., Piessens, F., Schwarz, M., Sunar, B., Van Bulck, J., & Yarom, Y.
"Fallout: Leaking Data on Meltdown-resistant CPUs."
*ACM CCS*, 2019. CVE-2018-12126

**[ZOMBIELOAD]** Schwarz, M., Lipp, M., Moghimi, D., Van Bulck, J., Stecklina, J.,
Prescher, T., & Gruss, D.
"ZombieLoad: Cross-Privilege-Boundary Data Sampling."
*ACM CCS*, 2019. CVE-2018-12130

### RETBLEED

**[RETBLEED]** Wikner, J. & Razavi, K.
"RETBLEED: Arbitrary Speculative Code Execution with Return Instructions."
*USENIX Security Symposium*, 2022.
https://comsec.ethz.ch/research/microarch/retbleed/
CVE-2022-29900 (AMD), CVE-2022-29901 (Intel)

### INCEPTION / SRSO

**[INCEPTION]** Trujillo, D., Wikner, J., & Razavi, K.
"INCEPTION: Exposing New Attack Surfaces with Training in Transient Execution."
*USENIX Security Symposium*, 2023.
https://comsec.ethz.ch/research/microarch/inception/
CVE-2023-20569 (AMD SRSO — Speculative Return Stack Overflow)

### BHI / Branch History Injection

**[BHI]** Barberis, E., Frigo, P., Muench, M., Bos, H., & Giuffrida, C.
"Branch History Injection: On the Effectiveness of Hardware Mitigations Against
Cross-Privilege Spectre-v2 Attacks."
*USENIX Security Symposium*, 2022.
https://vusec.net/projects/bhi-spectre-bhb
CVE-2022-0001 (BHI — Branch History Injection)
CVE-2022-0002 (IBHB — Intra-mode Branch History Bypass)

### DOWNFALL / GDS

**[DOWNFALL]** Moghimi, D.
"Downfall: Exploiting Speculative Data Gathering in Intel Optimized Routines."
*USENIX Security Symposium*, 2023.
https://downfall.page
CVE-2022-40982 (Gather Data Sampling — GDS)

---

## Vulnerability Detection ML Papers

**[DEVIGN]** Zhou, Y., Liu, S., Siow, J., Du, X., & Liu, Y.
"Devign: Effective Vulnerability Identification by Learning Comprehensive Program
Semantics via Graph Neural Networks."
*NeurIPS*, 2019.
Dataset: https://github.com/epicosy/devign

**[VULDEEPECKER]** Li, Z., Zou, D., Xu, S., Ou, X., Jin, H., Wang, S., Deng, Z., & Zhong, Y.
"VulDeePecker: A Deep Learning-Based System for Vulnerability Detection."
*NDSS*, 2018.

**[BIGVUL]** Fan, J., Li, Y., Wang, S., & Nguyen, T.N.
"A C/C++ Code Vulnerability Dataset with Code Changes and CVE Summaries."
*MSR*, 2020.
Dataset: https://github.com/ZeoVan/MSR_20_Code_vulnerability_CSV_Dataset

**[LINEVUL]** Fu, M., & Tantithamthavorn, C.
"LineVul: A Transformer-Based Line-Level Vulnerability Prediction."
*MSR*, 2022.

**[SPECTECTOR]** Guarnieri, M., Köpf, B., Morales, J.F., Reineke, J., & Sánchez, A.
"Spectector: Principled Detection of Speculative Information Flows."
*IEEE S&P*, 2020.
Tool: https://github.com/spectector/spectector

**[SPECFUZZ]** Oleksenko, O., Trach, B., Silberstein, M., & Fetzer, C.
"SpecFuzz: Bringing Spectre-type Vulnerabilities to the Surface."
*USENIX Security*, 2020.

**[BINSEC_HAUNTED]** Daniel, L., Bardin, S., & Rezk, T.
"Hunting the Haunter — Efficient Relational Symbolic Execution for Spectre with HauntedRelSE."
*NDSS*, 2021.

**[SUPERGNN]** Zhao, C., Dong, T., & Wu, X.
"Combining Graph Neural Networks with Expert Knowledge for Smart Contract
Vulnerability Detection."
*IEEE TNNLS*, 2021.

---

## Graph Neural Network Architectures

**[GINE]** Hu, W., Fey, M., Zitnik, M., Dong, Y., Ren, H., Liu, B., Catasta, M., & Leskovec, J.
"Strategies for Pre-training Graph Neural Networks."
*ICLR*, 2020. (Introduces GINE — GIN with Edge features)

**[SUPCON]** Khosla, P., Tian, Y., Wang, X., Krishnan, D., Isola, P., Ramesh, A.,
Liu, C., Setlur, S., Krishnamurthy, D., & Maji, S.
"Supervised Contrastive Learning."
*NeurIPS*, 2020.

**[JUMPING_KNOWLEDGE]** Xu, K., Li, C., Tian, Y., Sonobe, T., Kawarabayashi, K., & Jegelka, S.
"Representation Learning on Graphs with Jumping Knowledge Networks."
*ICML*, 2018.

**[GRAPHSAGE]** Hamilton, W., Ying, Z., & Leskovec, J.
"Inductive Representation Learning on Large Graphs."
*NeurIPS*, 2017.

---

## Datasets Used

**[NIST_SARD]** National Institute of Standards and Technology.
"Software Assurance Reference Dataset (SARD)."
https://samate.nist.gov/SARD/

**[LINUX_KERNEL]** Torvalds, L. et al.
"Linux Kernel" (git history mined for pre-patch CVE gadgets).
https://github.com/torvalds/linux
Used: commits for CVE-2017-5753, CVE-2017-5715, CVE-2018-12127, CVE-2022-29900,
      CVE-2022-0001, CVE-2023-20569 — pre-patch C functions extracted and compiled.

**[SPECTRE_GADGETS_GITHUB]** Various GitHub repositories containing Spectre/Meltdown PoC code.
Used in Phase 2 (compiler diversity) and Phase 4 (PoC scraping).
Key repos: `IAIK/meltdown`, `crozone/spectre-demo`, `Eugnis/spectre-attack`,
           `paboldin/meltdown-exploit`

---

## Security Advisories and CVE References

| CVE | Name | Class | Year |
|-----|------|-------|------|
| CVE-2017-5753 | Spectre Variant 1 | SPECTRE_V1 | 2018 |
| CVE-2017-5715 | Spectre Variant 2 | SPECTRE_V2 | 2018 |
| CVE-2017-5754 | Meltdown | L1TF | 2018 |
| CVE-2018-3639 | Spectre Variant 4 / SSB | SPECTRE_V4 | 2018 |
| CVE-2018-3615/3620/3646 | L1TF / Foreshadow | L1TF | 2018 |
| CVE-2018-15572 | Spectre RSB | SPECTRE_RSB | 2018 |
| CVE-2018-3693 | Spectre Variant 1.1 / RSB | SPECTRE_RSB | 2018 |
| CVE-2018-12126 | MSBDS / Fallout | MDS | 2019 |
| CVE-2018-12127 | MLPDS / RIDL | MDS | 2019 |
| CVE-2018-12130 | MFBDS / ZombieLoad | MDS | 2019 |
| CVE-2022-29900 | RETBLEED (AMD) | RETBLEED | 2022 |
| CVE-2022-29901 | RETBLEED (Intel) | RETBLEED | 2022 |
| CVE-2022-0001 | BHI | BRANCH_HISTORY_INJECTION | 2022 |
| CVE-2022-0002 | IBHB | BRANCH_HISTORY_INJECTION | 2022 |
| CVE-2022-40982 | Downfall / GDS | DOWNFALL | 2023 |
| CVE-2023-20569 | INCEPTION / SRSO (AMD) | INCEPTION | 2023 |

---

## Tools and Frameworks

**GCC** — GNU Compiler Collection (versions 12+)
Used for cross-compilation (x86_64-linux-gnu-gcc, aarch64-linux-gnu-gcc)

**Clang/LLVM** — version 14
Used for additional compilation variants

**Docker** — Ubuntu 22.04 base image
Used to provide consistent cross-compilation environment for ARM64 hosts

**PyTorch Geometric** — Fey, M. & Lenssen, J.E.
"Fast Graph Representation Learning with PyTorch Geometric."
*ICLR Workshop on Representation Learning on Graphs and Manifolds*, 2019.

---

## How Citations Map to the Pipeline

| Pipeline Component | Key References |
|---|---|
| Attack class definitions | [SPECTRE_V1/V2/V4], [MELTDOWN/L1TF], [FORESHADOW], [MDS/RIDL], [RETBLEED], [INCEPTION], [BHI], [SPECTRE_RSB], [DOWNFALL] |
| PDG representation | [DEVIGN] (uses CPG), [SPECTECTOR] (information flow graphs) |
| GINE model | [GINE], [JUMPING_KNOWLEDGE] |
| Contrastive loss | [SUPCON] |
| C source gadgets | c_vulns/c_code/*.c — implementations based on the above CVE papers |
| Linux kernel gadgets | [LINUX_KERNEL] — pre-patch functions from CVE fix commits |
| Evaluation methodology | [DEVIGN] (group-aware splits), [BIGVUL] (dataset integrity practices) |
