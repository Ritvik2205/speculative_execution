# Real-world ground truth, benign x86, and RISC-V data — design (2026-11-05)

## Why

Reviewer-facing weaknesses 3, 4 and the RISC-V caveat in the project standing review
(conversation 2026-11-05; evidence in `eval/graph_anatomy/SYNTHESIS.md`):

- "Real" today = Revizor fuzzer programs on one i5-8300H. No real-world code with ground truth.
- No x86 BENIGN in training (all BENIGN is arm64); every mitigated x86 example contains a fence.
- The RISC-V corpus is transliterated from ARM (bigram test, 6/6 classes).

Deadline pressure is real (the user: "we are on a time crunch"), but the user will not trade
paper quality for speed. Scope is ordered so each stream is useful on its own.

## Goals

1. **Real-world evaluation set (held out, never trained on).** Gadgets from verifiable published
   sources, in the user's priority order:
   1. tied to a CVE / security advisory and its fixing patch (pre-patch = vulnerable,
      post-patch = mitigated pair), or from vendor guidance with paired examples;
   2. a publicly used dataset / benchmark other papers evaluate on (e.g. Kocher's examples,
      Spectector/Kasper/SpecFuzz suites);
   3. backup only: leaks on the i5 (existing Revizor reproduce harness).
   Author- or vendor-published PoCs count under 1/2.
2. **Benign x86_64 training data** from reputable sources. Provenance is sufficient as the label
   for now (the user's decision); the paper states that assumption.
3. **RISC-V gadgets with real provenance**, to keep RISC-V in the paper: published RISC-V
   speculation artifacts, plus published PoC / `c_vulns` C cross-compiled natively to riscv64,
   plus benign riscv64 from distribution packages.

## Non-goals

- Training on the real-world evaluation set.
- Buying RISC-V hardware now (C910 board stays future work unless a reviewer demands it).
- Proving benign code gadget-free (Spectector/i5 checks on benign are out of scope for now).

## Anti-goals (failure even if it "works")

- Any sample without a retraceable source (URL + commit/version + CVE/paper + licence).
- Leakage between eval and train: the same function/PoC (or a near duplicate) on both sides.
- A new shortcut: benign windows whose length, compiler, or fence content differs systematically
  from the attack windows (the RISC-V length confound, the "fence ⇒ safe" confound).
- Benign that contains patched gadgets (`lfence`, `array_index_nospec`, retpoline thunks, `verw`
  sequences) — those are mitigated attacks, not benign.

## Decided

- **Ground-truth rule:** published/CVE/dataset first, i5 leak as backup (user).
- **Benign label = reputable provenance** (user).
- **Keep RISC-V, gather wherever possible** (user).
- **Source discovery:** Haiku 5.5 search swarm, catalogue-only, outputs in
  `docs/data_sources/*.md` (kernel_patches, other_patches, academic_datasets, poc_collections,
  vendor_guidance, benign_sources, riscv_sources, misc_sources). The user reviews the catalogue
  before any bulk download.

## Shape of the build (builder's latitude within this)

Every stream writes JSONL in the existing record format (`sequence`, `label`, `arch`, `group`,
`source`) plus a `provenance` object: `{url, commit_or_version, cve, paper, licence, retrieved}`.

**Stream A — real-world eval (`eval/data/realworld_*.jsonl`).**
- CVE-patch pairs: fetch pre/post versions of the patched function, compile both (x86_64 gcc and
  clang, -O2 at minimum, the kernel's own flags where the source is kernel), extract the
  function's assembly, and label pre = class from the CVE, post = mitigated (scored as safe).
- Datasets/benchmarks and PoCs: compile as published; keep the gadget function only (not the
  timing/driver harness, which our strip_boilerplate already treats as boilerplate).
- Group = source item (one CVE, one PoC repo), so CIs cluster correctly.
- Scored by `eval/score_hwlabel_variants.py`-style harness against always-attack and the mechanism
  rule, leak/safe primary, mechanism-family secondary (V1 branch / V4 store-bypass /
  MDS+L1TF fault-assist).

**Stream B — benign x86_64 (`v54/data/benign_x86_*.jsonl`).**
- Packages from the recommended distribution(s) in `benign_sources.md` (Fedora/CentOS Stream as
  the RHEL lineage, Debian), plus upstream sources compiled at -O0..-O3 with gcc and clang.
- Disassemble with symbols, split per function, window to 25–45 instructions, matching the
  attack length distribution; drop fence/nospec/retpoline/verw-containing functions; dedupe
  by normalised sequence; cap per package so no single project dominates.
- Hold out whole packages for a benign test split.

**Stream C — RISC-V (`spec/data` or `eval/data/riscv_*`).**
- Published RISC-V artifacts from `riscv_sources.md` (eval-side when they carry ground truth).
- Cross-compile published PoC C and `c_vulns` C to riscv64 (Homebrew LLVM or a Debian riscv64
  cross-gcc Docker image; Apple clang has no RISC-V backend). Labelled "compiled from published
  PoC source", not hardware-confirmed.
- Benign riscv64 from Debian/Fedora riscv64 packages, same windowing and filters as Stream B.
- Re-run the bigram ISA-independence test (`eval/isa_fingerprint.py`) on the new corpus; it must
  no longer look ARM-transliterated.

## Settled after the builder check (builder's calls marked)

- **Tier 1 includes non-CVE upstream fix commits** (user: "tied to a CVE *or patch*"). The paper
  reports CVE-tied and patch-only items separately, since smatch-prompted defensive fixes may
  include false positives.
- **Which model is scored (call):** Stream B/C feed the real-data retrain pool (allhw3 successor,
  `docs/PLAN_REAL_DATA_RETRAIN_2026-11-05.md`) with a `--x86-mem-reads` arm, 5 seeds on the
  cluster. Stream A scores those new models and, as the H0 baseline, every existing checkpoint
  under its own reproduce gate.
- **Fence-only safe side (call):** CVE post-patch items are kept, but Stream A must also hold
  fence-free safe items (the Stream B benign test split), and every model must beat a
  fence-count bar and an opcode bar on Stream A, as in the hwlabel harness.
- **Class coverage (call):** CVE pairs are mostly V1. Other classes come from author/vendor PoCs
  and benchmarks; flag-toggled pairs (`-mretpoline`, `-mfunction-return=thunk`) are a separate,
  clearly labelled "compiler-mitigation" subset, not CVE pairs. Results are reported per class
  with n.
- **Toolchain parity (call):** no objdump-of-distro-binaries vs `clang -S` mix. Benign and attack
  code are both compiled from source on Linux (Docker; Debian *source* packages for Stream B/C)
  with the same gcc/clang `-S`, then the existing neutralisation pass. objdump of binaries only as
  a fallback, applied to attack and benign alike.
- **Eval unit (call):** function-level score = max over 25–45-instruction windows; the window
  holding the patched line is also scored, so numbers compare with the hwlabel results.
- **RISC-V split (call):** cross-compiled `c_vulns` / PoC C goes to TRAIN; published RISC-V
  artifacts (Security-RISC, boom-attacks, phantom-trails samples) go to EVAL. Dedupe treats one
  C source compiled for any ISA/compiler as one item, so a source never appears on both sides.
- **Review gate (call):** the user said start everything; single-source fetches (one repo, one
  commit set) may start now, bulk package downloads wait for the catalogue review.

## Validation every stream must pass

- Provenance complete on 100% of rows.
- Dedupe against all training data (exact + normalised-sequence near-duplicate).
- Length distribution of benign vs attack windows reported; no significant gap.
- Feature gate (`./scripts/run_feature_gate.sh`) unaffected (data only, no spec change).
- Retrain arms use `--x86-mem-reads` (branch `fix/x86-mem-read-loads`).

## Order (deadline)

1. Catalogue (running) → user review.
2. Stream A CVE-patch pairs + public benchmarks (biggest paper value).
3. Stream B benign x86.
4. Stream C RISC-V.
