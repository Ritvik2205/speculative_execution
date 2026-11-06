# RISC-V speculation / side-channel sources (catalogue)

Scope: sources only, verified by WebFetch on 2026-11-05 unless marked "not verified". No data downloaded, no code written.
Purpose: replace the ARM-transliterated RISC-V corpus with gadgets that have verifiable provenance.

## Main table

| # | Name | Paper (venue, year) | Artifact URL (status) | What it contains | Count | Core | HW / RTL confirmed? | Licence |
|---|---|---|---|---|---|---|---|---|
| 1 | Security-RISC (A Security RISC) | IEEE S&P 2023 | https://github.com/cispa/Security-RISC (verified) | 22 experiment folders incl. `spectre/` (C910 exploit) and `spectre-v1/` (speculative fetch histogram) | 22 folders; ~2 Spectre-related; no v2/v4/RSB | T-Head C906/C908/C910, SiFive U74 | Yes, real silicon | MIT (full text not shown) |
| 2 | RISCover-artifacts (GhostWrite) | RISCover, CCS 2025 | https://github.com/cispa/RISCover-artifacts (verified) | Differential fuzzer framework, `findings/` PoCs incl. GhostWrite reproducer, `bug_analysis/`, mitigations. **Not Spectre**: GhostWrite is an architectural physical-write bug | Not stated | C910 (silicon), C906 (RTL only), openc910 sim | C910 silicon yes; C906 halt sim only; README says vector ext. not enabled in sim | MIT |
| 3 | Phantom Trails | USENIX Security 2025 (per README) | https://github.com/vusec/phantom-trails (verified) | Pre-silicon fuzzer (AFL++/libAFL, BFSAN LLVM fork, Spike, BOOM harness). `Samples/` = PoCs + Spectre-LP docs | Not stated | BOOM (RTL sim) | No; simulation only. README claims a new BOOM-specific Spectre variant | Not stated (verify LICENSE before use) |
| 4 | SpecDoctor | CCS 2022 | https://github.com/compsec-snu/specdoctor (verified) | RTL transient-execution testing framework; `Fuzzer/`, `PoC/` | Not stated | RISC-V BOOM, NutShell | RTL sim | Not stated |
| 5 | DifuzzRTL | S&P 2021 (venue from memory, not verified) | https://github.com/compsec-snu/difuzz-rtl (verified, branch `sim`) | Differential fuzzer; `Benchmarks/Verilog/` designs, no seed corpus listed | Not a gadget corpus | Rocket, BOOM | RTL sim | BSD-3-Clause |
| 6 | Cascade | USENIX Security 2024 | https://github.com/comsec-group/cascade-artifacts (verified). Main fuzzer `cascade-meta` not verified | Artifact Docker/logs; programs are generated at run time, none shipped | Not stated | Rocket (Chipyard) | Simulation only (Verilator/Questasim) | Not stated |
| 7 | boom-attacks | Not a paper (BOOM project) | https://github.com/riscv-boom/boom-attacks (verified) | Spectre v1 `condBranchMispred.c`, Spectre v2 `indirBranchMispred.c` (working); RSB `returnStackBuffer.c` (broken) | 3 (2 working) | BOOM (commit 8bb0e34f) | BOOM RTL/FPGA-style; not stated | LICENSE present, type not shown |
| 8 | XiangShan Spectre (necst) | ACA 2025 + CVE-2025-63094 | https://github.com/necst/aca25-xiangshan-spectre (verified, branch `paper-ready`) | `spectre-v1/` workload, `cachehitmisstime/` (not described) | 2 dirs | XiangShan Nanhu/Kunminghu | XiangShan simulator (`build/emu`), no FPGA/silicon claim | Not stated |
| 9 | CTSRD Test-Suite-Transient-Execution | CARRV 2021 | https://github.com/CTSRD-CHERI/Test-Suite-Transient-Execution (verified) | RISC-V and CHERI-RISC-V assembly tests for transient attacks, tailored to Toooba | Not stated | Toooba (RiscyOO), not BOOM | Simulation | Not stated |
| 10 | BlessedRebus RISCV-Attacks | None (blog/projects) | https://github.com/BlessedRebuS/RISCV-Attacks (verified) | About 12 PoCs, mostly non-speculative; one Spectre PoC on C910 | ~12 total, 1 speculative | C910, U74, Milk-V Duo | Anecdotal board runs | Not stated |
| 11 | IntroSpectre | Venue not verified (author PDF at moeinghaniyoun.github.io) | No code repo found (not verified) | Gadget Fuzzer + Leakage Analyzer on BOOM | Not stated | BOOM (Verilator) | Verilator sim | n/a |
| 12 | Specure | arXiv 2410.22555 (Rostami et al.) | No code link found in search (paper verified on arXiv) | Hybrid fuzzing + IFT on BOOM | Not stated | BOOM | Sim | n/a |
| 13 | DejaVuzz | ASPLOS 2025 (per arXiv comments), arXiv 2504.20934 | No artifact link on arXiv page (verified) | Pre-silicon fuzzer, 5 bugs, 6 CVEs | Not stated | BOOM, XiangShan | Not stated | n/a |
| 14 | Spectre on RISC-V Silicon | USENIX Security 2026 (Bognar, Weber, Schwarz, Van Bulck) | Not located (Distinguished Artifact Award per LinkedIn; link is shortened, not followed) | Spectre-PHT/BTB/RSB/STL PoCs, kernel-memory leak, gadget audit | Not stated | SiFive P550, T-Head C910/C920 | **Yes, silicon** | Not stated |
| 15 | Linux riscv Spectre v1 / KVM patches | LKML / linux-riscv, Dec 2025 to Mar 2026 | lore/lkml threads (verified via search, not fetched) | Kernel gadget mitigations and fixes, not test programs | n/a | C910/C920, P550 | Mixed | GPL-2.0 (kernel) |
| 16 | vusec/riscv-transient-attacks (Phantom Trails sample set) | USENIX Security 2025 (Phantom Trails sample set, per the repo) | https://github.com/vusec/riscv-transient-attacks (verified) | Whole-file RISC-V transient-execution PoC sources | Not stated | BOOM / XiangShan (per Phantom Trails) | No | Not stated (repo declares none) |

## Also seen, not verified

- Gonzalez et al., CARRV 2019 "Replicating and Mitigating Spectre on BOOM" (carrv.github.io PDF). Code not checked.
- Sabbagh, Fei, Kaeli, CARRV 2021: ports open PoCs to SonicBOOM. Code not checked.
- SpecLFB (gitee.com/chip-security/SpecLFB): defence on SonicBOOM/gem5. Not a gadget source.
- Revizor RISC-V / the 2025 gem5 RISC-V Spectre-v1 mitigations paper: not searched.
- youzi27/ChipFuzz: curated list, no programs (verified). Useful only for finding tools.
- TheHuzz (arXiv 2201.09941): no code link found.
- awesome-hardware-fuzzing (forestfoxx): curated index, not checked.

## Notes

1. **Realistic gadget count.** The verified artifacts are hand-written PoCs, not labelled corpora. Counted items: Security-RISC 2 Spectre folders, boom-attacks 2 working, XiangShan 1 Spectre workload, BlessedRebus 1 speculative PoC. Unknown counts: Phantom Trails `Samples/`, SpecDoctor `PoC/`, CTSRD suite. Realistic total from released hand-written PoCs is **on the order of 10 to 50 programs**. This is not enough to train a classifier.
2. **Scale must come from fuzzers, with oracle labels.** Phantom Trails, SpecDoctor and DifuzzRTL are the viable generators for BOOM. Cascade and RISCover are for Rocket and C910 respectively. Generated programs need an independent oracle, such as Spectector or the existing hardware-label pipeline, before they count as labelled.
3. **Provenance is strongest for silicon.** Security-RISC (C910, S&P 2023) and RISCover (C910 GhostWrite) have hardware confirmation. The USENIX 2026 silicon artifact would be the best single source once its URL is located.
4. **Licences.** Several repos show no licence (Phantom Trails, SpecDoctor, Cascade, XiangShan, CTSRD, boom-attacks). Check the LICENSE file before redistributing any derived data. Only DifuzzRTL (BSD-3) and Security-RISC/RISCover (MIT) are clear from the page.
5. **Core coverage gap.** No verified source covers CVA6 transient execution. OpenTitan has no speculation-specific test suite found. The XiangShan and BOOM sources are RTL sim only.
6. **Not confirmed:** the USENIX 2026 artifact repo, the Cascade main repo, the TheHuzz code, and the Linux patch authorship (search surfaced no "Gerlach" among the paper authors; attribution unverified).
