# Publicly Available Datasets for Training a GINE GNN to Classify Speculative-Execution Gadgets

## TL;DR
- The single most usable large labeled corpus is **FastSpec/SpectreGAN** — the authors state "Using mutational fuzzing, we produce a data set with more than 1 million Spectre-V1 gadgets which is the largest Spectre gadget data set built to date" (1.2M including GAN additions), with positives empirically verified via a real Flush+Reload PoC on an isolated core — but it is x86-assembly-only, Spectre-v1-only, unlicensed, and heavily biased toward Kocher-like patterns. **No public dataset offers verified, multi-class (v1/v2/Meltdown/Retbleed) labels ready for a GINE model; you will have to assemble a corpus from several sources and generate the graphs yourself.**
- The highest-confidence labels come from small, expert-authored or formally/empirically verified sets: **Kocher's 15 Spectre-v1 variants**, **Spectector benchmarks** (240 formally-verified assembly microbenchmarks), **Pitchfork test suites** (v1/v1.1/v4, symbolic-execution-verified), **transient.fail/transientfail** and **Google SafeSide** (hardware-confirmed PoCs across v1/v2/Meltdown/MDS), and **Retbleed** (hardware-confirmed Spectre-BTB/RSB).
- Established ML vulnerability datasets (Juliet/SARD, Devign, Draper VDISC, Big-Vul, DiverseVul) are **not useful** here — they contain essentially no verified speculative-execution samples and their labels are noisy (DiverseVul reports its own vulnerable labels are ~60% accurate; independent studies found ≥20% of Devign and ~45.7% of Big-Vul labels inaccurate).

## Key Findings
- **Verified positive labels are scarce but real.** The best-labeled data are small litmus/benchmark sets tied to detection-tool papers (Kocher, Spectector, Pitchfork, Revizor). Large scale exists only for Spectre-v1 (FastSpec).
- **Multi-class coverage requires stitching sources.** No single dataset covers v1 + v2 + Meltdown + Retbleed with verified labels. transient.fail and SafeSide are the closest to a multi-class, hardware-confirmed PoC collection, but they are small (tens of PoCs) and organized as runnable programs, not ML-ready samples.
- **Everything needs preprocessing.** All sources require compilation and/or graph extraction (CFG/DFG/PDG) to feed a GINE model. There is no released graph-representation dataset for speculative-execution gadgets.
- **Fuzzer outputs are labeled by construction but are hardware-CPU test cases, not code gadgets.** Revizor/SpecFuzz emit confirmed leaky sequences, but Revizor test cases are randomly generated asm for CPU testing and SpecFuzz outputs are branch/address reports, not a packaged labeled corpus.

## Details

### Category 1 — ML-for-security gadget datasets (highest priority)

**FastSpec / SpectreGAN** (vernamlab, EuroS&P 2021; arXiv 2006.14147; github.com/vernamlab/FastSpec)
- Contents: x86-64 assembly gadget programs. The paper states "Using mutational fuzzing, we produce a data set with more than 1 million Spectre-V1 gadgets which is the largest Spectre gadget data set built to date" (precise fuzzing figure ~1.1M; 1.2M total including SpectreGAN GAN-generated gadgets). The classifier training corpus combined generated gadgets with disassembled Linux libraries totaling 107 million lines of assembly / 370 million tokens, split 80/20 train/test.
- Classes covered: Spectre-v1 (Spectre-PHT / bounds-check bypass) only.
- Label verification: As the authors put it, "We extend 15 base Spectre examples to 1 million gadgets by applying a mutational fuzzing technique" — positives seeded from Kocher's 15 variants (+2 Spectector variants), expanded by mutational fuzzing, then empirically verified by running a Spectre-v1 Flush+Reload PoC attack on an isolated core; only gadgets that actually leaked the secret were kept. GAN outputs were compiled (GCC) and attack-tested too. Negatives = disassembled Linux libraries assumed benign (labeled 0), treated as noise. This is genuine empirical (cache-side-channel) verification, but with an acknowledged bias: verification only accepted gadgets using fixed multipliers (512/4096) and Kocher-like leakage, so diversity is limited and generated gadgets are "quite similar" to the 15 seeds.
- Access/format: Public GitHub repo with a `dataset/` folder containing subfolders of x86 assembly plus a `build.sh` build step. Note: I could not confirm by direct clone whether the full ~1.1M corpus is committed or only a sample plus generator; a `git clone` is required to verify physical file count.
- License: No license file — default all-rights-reserved copyright. Usable for research but no explicit redistribution grant; contact authors for anything beyond research use.
- Usability: Directly relevant and the only large-scale option, but assembly-only and single-class. Requires graph extraction from assembly. Note the "1.3 million" figure sometimes cited is the test-set true-positive count, not the dataset size.

**SpecTaint "Spectre Samples Dataset" and "Real-world V2 Dataset"** (NDSS 2021)
- Contents: A curated Spectre samples dataset plus a "Real-world V2" dataset built by injecting known Spectre gadgets into real programs (LAVA-style injection), giving ground-truth gadget locations.
- Classes: Spectre-v1 (BCB) gadgets, C/binary level.
- Label verification: Injected gadgets provide provable ground truth (known injected locations = true positives). Strong for evaluation.
- Access: Tied to the SpecTaint paper; verify current public availability of the dataset artifact (the tool/paper are published; dataset release should be confirmed on the authors' page).
- Usability: Good for supervised labels if released; requires compilation/graph extraction.

### Category 2 — Expert-authored / formally-verified gadget corpora (highest label quality)

**Kocher's 15 Spectre-v1 variants** (paulkocher.com Microsoft compiler Spectre mitigation writeup)
- Contents: 15 hand-written C Spectre-v1 gadget variants (the canonical seed set used by nearly every tool). Expert-authored, universally treated as ground-truth vulnerable.
- Classes: Spectre-v1 (PHT/BCB), including v1.1/v1.2 relatives in some extensions.
- Access: Source C on Kocher's site; compiled assembly widely redistributed (Spectector, Pitchfork repos). Small (15 cases) — use as seeds/anchors, not bulk.

**Spectector benchmarks** (github.com/spectector/spectector-benchmarks)
- Contents: 240 x86 assembly microbenchmarks = the 15 Kocher variants compiled with Clang, Intel icc, and MSVC at different optimization/mitigation levels; plus the Xen hypervisor case study (LLVM IR + assembly). ~87% Assembly.
- Classes: Spectre-v1, with patched (FEN/SLH) vs unpatched versions — useful vulnerable/non-vulnerable pairs.
- Label verification: Formally verified by Spectector's speculative non-interference analysis; labels are principled, not heuristic.
- Access: Public GitHub. Directly usable as assembly; the patched/unpatched pairs are ideal for binary classification. Small but high quality.

**Pitchfork test suites** (github.com/cdisselkoen/pitchfork, PLSysSec/pitchfork-angr, PLSysSec/haybale-pitchfork)
- Contents: Original Kocher cases plus new Spectre-v1 and Spectre-v1.1 test cases specifically designed to leak only under speculation (cleaner labels than raw Kocher, which leak sequentially too). haybale-pitchfork operates on LLVM IR/bitcode.
- Classes: Spectre-v1, v1.1, v4 (STL).
- Label verification: Symbolic-execution-verified (speculative constant-time violations). High quality.
- Access: Public GitHub, open source. C source + binaries + LLVM bitcode workflow — usable for source, binary, or IR graph extraction.

**BINSEC/Haunted, KLEESpectre, Binsec/Rel benchmarks** — additional symbolic-execution benchmark suites covering Spectre-PHT and Spectre-STL with patched/unpatched variants; LLVM bytecode (KLEESpectre) or binary (Haunted). Useful supplementary verified samples.

### Category 3 — Hardware-confirmed PoC collections (multi-class breadth)

**transient.fail / transientfail** (github.com/IAIK/transientfail, USENIX Sec 2019)
- Contents: PoC implementations across the transient-execution classification tree (Spectre-PHT/BTB/RSB/STL, Meltdown variants), C/asm, with helper libraries (libcache, libpte).
- Label verification: Empirically demonstrated on Intel Skylake/Coffee Lake/Whiskey Lake CPUs.
- Access: Public GitHub. Multi-class but small (tens of PoCs); requires compilation and graph extraction. Best source for verified v2/RSB/Meltdown labels.

**Google SafeSide** (github.com/google/safeside)
- Contents: Literate-programming PoCs targeting Spectre (all variants), Meltdown, Speculative Store Bypass, L1TF, MDS; portable across GCC/Clang/MSVC and OSes.
- Label verification: Designed to reliably reproduce the leak where present. Dual-licensed BSD-3-Clause / GPLv2 (clear, permissive licensing — a plus over FastSpec).
- Access: Public GitHub. Multi-class, hardware-oriented; small count, needs compilation/graph extraction.

**Retbleed** (github.com/comsec-group/retbleed, USENIX Sec 2022; CVE-2022-29900/29901)
- Contents: Spectre-BTB via return instructions PoCs for AMD (Zen/Zen+/Zen2) and Intel, kernel modules, gadget/return finders.
- Label verification: Hardware-confirmed exploits; the canonical verified Retbleed source.
- Access: Public GitHub. C/asm; the only verified Retbleed source. Requires heavy preprocessing; primarily an exploit, gadget extraction is manual.

**Kasper** (github.com/vusec/kasper + kasper-results, NDSS 2022)
- Contents: A generalized transient-execution gadget scanner. Per the paper, "Even though the kernel is heavily hardened against transient execution attacks, Kasper finds 1379 gadgets that are not yet mitigated. We confirm our findings by demonstrating an end-to-end proof-of-concept exploit for one of the gadgets found by Kasper." Results are published in the kasper-results repo (log parsing + MongoDB aggregation).
- Label verification: Taint-analysis-modeled, not all hardware-confirmed. The project page states: "Although Kasper cannot guarantee that all the reported gadgets are fully exploitable, to demonstrate its usefulness, we came up with a proof-of-concept exploit for one of the gadgets that is pervasive throughout the codebase and non-trivial to mitigate." Treat these as noisy positives (candidate gadgets).
- Access: Public GitHub. Real kernel gadgets but weaker labels and Linux-kernel-specific.

**Other PoC repos:** IAIK/ZombieLoad (MDS), jzell001/Transient-Execution-Attacks (aggregation of PoCs). InSpectre Gadget (vusec/inspectre-gadget, USENIX Sec 2024) — Spectre-v2 disclosure gadget analysis with exploitability reasoning; outputs CSVs of gadgets with exploitability, useful as labeled v2 data.

### Category 4 — Microarchitectural fuzzing outputs

**Revizor** (github.com/microsoft/sca-fuzzer, formerly hw-sw-contracts/revizor; ASPLOS 2022 + "Hide and Seek with Spectres" S&P 2023)
- Contents: Model-based relational testing fuzzer; emits contract-violating x86 asm test cases. The revizor-artifact repo ships handwritten reference test cases (spectre_v1.asm, spectre_v1.1.asm, spectre_v2.asm, spectre_v4.asm, spectre_v5.asm, mds-lfb.asm, mds-sb.asm) plus auto-generated `generated.asm` violation cases.
- Classes: Spectre v1/v1.1/v2/v4/v5, MDS, LVI.
- Label verification: Violations confirmed on real CPUs via hardware traces (Prime+Probe) with priming to eliminate false positives — genuinely verified leaks by construction.
- Access: Public GitHub (MIT-style). The handwritten .asm litmus tests are directly usable, verified, multi-class samples — small but excellent labels. Bulk fuzzer output is generated locally, not shipped as a large corpus.

**SpecFuzz** (github.com/tudinfse/SpecFuzz + OleksiiOleksenko/SpecFuzz, USENIX Sec 2020)
- Contents: Instruments programs to simulate speculation and fuzzes for out-of-bounds speculative accesses; outputs vulnerable branch/address reports.
- Label verification: Dynamically detected (probabilistic; known to over-report — many false positives per SpecTaint). Outputs are reports, not a packaged labeled code corpus.
- Access: Public GitHub. Would need substantial work to turn into labeled gadget samples.

### Category 5 — Established ML vulnerability datasets (checked; NOT useful)
- **Juliet Test Suite / SARD (NIST):** 118 CWEs in C/C++, CC0 public domain, but no verified speculative-execution/transient-execution test cases (Spectre maps to hardware CWEs like CWE-1303 that Juliet does not cover with code). Not useful.
- **Devign, Draper VDISC, Big-Vul, DiverseVul, ReVeal, CVEfixes, CrossVul:** Large C/C++ function-level vuln datasets, but labels are commit-heuristic or static-analyzer-derived and noisy — the DiverseVul paper reports "The vulnerable function labels are 60% accurate in DiverseVul... whereas BigVul has very low label accuracy, only 25%," and Croft et al. ("Data Quality for Software Vulnerability Datasets," arXiv 2301.05456) found "at least 20% of labels for the Devign dataset and 45.7% of labels for the BigVul dataset to be inaccurate." They are not organized by microarchitectural class and contain essentially no verified speculative-execution samples. Not useful for this task.

## Recommendations
1. **Build a two-tier corpus.** Tier 1 (high-confidence labels for training/eval anchors): Spectector benchmarks (formally verified, patched/unpatched pairs), Pitchfork suites (v1/v1.1/v4), Revizor handwritten litmus tests (v1/v1.1/v2/v4/v5/MDS/LVI), Kocher 15. Tier 2 (scale, Spectre-v1 only): FastSpec/SpectreGAN. Use Tier 1 to validate that models trained partly on Tier 2 generalize beyond Kocher-like patterns.
2. **For multi-class (v2/Meltdown/Retbleed) labels**, harvest transient.fail, SafeSide, Retbleed, ZombieLoad, and InSpectre Gadget CSVs. Expect tens-to-hundreds of samples per class; augment via compilation across compilers/optimization levels (the Spectector approach: one source → many labeled assembly variants) to grow each class.
3. **Preprocessing pipeline:** compile C/IR to a common representation, then extract CFG + data-flow/PDG graphs (e.g., via LLVM, angr, or BAP) with instruction-level node features. GINE needs edge features — encode edge types (control vs data-flow, true/false branch, def-use) as edge attributes. Normalize registers/immediates/labels the way FastSpec did (`<reg>`, `<imm>`, `<label>`) to reduce vocabulary.
4. **Mitigate FastSpec bias:** because its positives cluster around Kocher patterns and fixed multipliers, hold out non-FastSpec sources (Spectector Xen, Pitchfork crypto, Kasper kernel gadgets) as a cross-distribution test set. If model accuracy collapses there, the model has learned FastSpec artifacts, not gadget semantics.
5. **Resolve licensing before publishing:** FastSpec has no license (research use only, contact authors); SafeSide (BSD/GPL) and SARD (CC0) are safe to redistribute; most others are academic repos — cite and check each.
6. **Benchmarks that change the plan:** If you need >10k verified multi-class samples, no public source provides them — you would need to run Revizor/SpecFuzz yourself to generate confirmed leaky sequences, or generate-and-verify (FastSpec-style Flush+Reload) for classes beyond v1. If Spectre-v1 detection alone suffices, FastSpec + Spectector + Pitchfork is enough to start immediately.

## Caveats
- "Verified" means different things: formally verified (Spectector, Pitchfork — property proofs, which can differ from real-CPU behavior), empirically hardware-confirmed (FastSpec Flush+Reload, transient.fail, SafeSide, Retbleed, Revizor), and taint/heuristic candidate labels (Kasper, SpecFuzz, oo7). Prioritize the first two; treat the third as weak labels.
- I could not confirm by direct clone whether FastSpec's `dataset/` ships the full ~1.1M gadgets or a sample + generator; verify with `git clone` before assuming scale.
- Several tool papers release the tool but not a packaged dataset (oo7 ships Kocher tests only; SpecFuzz ships reports, not a corpus). Flagged above where the "dataset" is really just tool output.
- Class imbalance and near-duplication are serious risks: FastSpec gadgets are highly similar to each other; dedupe (e.g., graph isomorphism / hashing) before splitting to avoid train/test leakage — the same problem that inflated metrics in Big-Vul/Devign.
- No graph-format dataset exists; all graph extraction is on you, and the choice of graph representation will materially affect GINE performance.