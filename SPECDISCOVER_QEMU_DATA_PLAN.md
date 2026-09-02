# Plan — QEMU build matrix for real, diverse gadget data across arch × compiler × mitigation

*2026-09-02. Addresses the measured data gaps: RISC-V has no real idiomatic attack
data (the corpus is an ARM transliteration), the BENIGN class was arm64-only (the
x86-benign fix costs a significant −1.92pp because we only have one benign source),
and SPECTRE_V4/RSB have one family each. The idea: compile real vulnerable and
benign C across many (architecture × compiler-version × mitigation-flag) cells in a
controlled emulated environment, so an **unpatched** toolchain emits the gadget a
**patched** one removes — giving real, diverse, paired positive/negative data.*

---

## 0. What QEMU is, and the one thing it is NOT — read first

QEMU (TCG/user-mode or system-mode) is a **functional** emulator. It models
architectural state — registers, memory, instruction semantics — and nothing
below it: **no speculative execution, no branch predictor, no caches, no timing.**

**Therefore QEMU cannot confirm a speculative-execution leak.** A Spectre gadget
run under QEMU produces the *architecturally correct* result with no transient
window and no cache side channel — it never "leaks." Any plan that treats a
QEMU run as evidence a gadget is exploitable is wrong. We already have the tools
that *do* provide leak ground truth — Spectector (symbolic, x86), gem5 and
InvisiSpec (microarchitectural), Revizor (real-hardware fuzzing) — as Docker
images. **QEMU's job is to produce and validate the candidate binaries; the
oracle's job is to say whether they leak.** Keep the two roles separate.

What QEMU genuinely buys, that cross-compilers alone do not:

- **Arch-native and old toolchains that only run on their own ISA** — an old
  riscv64 or aarch64 `gcc`/distro that has no host build; run it inside a
  system-mode VM of that arch.
- **Full-OS / libc / library diversity** — different glibc, different distro
  versions, real headers — so compiled code looks like real software, not
  freestanding stubs (our current mbedTLS-with-stub-headers harvest is thin).
- **Functional validation** — run the compiled gadget to confirm it executes and
  does what its source says (a *functional* check, never a leak check).
- **CPU-model diversity** — `qemu-system-* -cpu <model>` (cortex-a72, sifive-u54,
  …) and `-march` targets, for microarchitecture-flavoured codegen.

## 1. The insight that makes this worth doing: the mitigation is the label

The same vulnerable C, compiled two ways, gives a **paired** positive/negative that
differ *only* in the mitigation — the cleanest supervision we can manufacture:

| build | what the compiler emits | label |
|---|---|---|
| mitigations OFF (old gcc, or modern with flags off) | the raw gadget — indirect branch with no retpoline, no `lfence`, no load-hardening | the vulnerability class |
| mitigations ON (retpoline / `lfence` / SLH) | the gadget neutralized — thunked branch, speculation barrier inserted | mitigated / hard-negative |

This is largely **flag-driven on a modern compiler**, which is more controllable
than hunting old binaries:

- **x86 gcc**: `-mindirect-branch=thunk` / `=thunk-extern` (retpoline),
  `-mfunction-return=thunk`, `-mindirect-branch-register`,
  `-mlfence-before-indirect-branch=all` (Spectre-v2/RETBLEED surface).
- **x86 clang**: `-mretpoline`, `-mspeculative-load-hardening` (SLH — Spectre-v1).
- **arm64**: `-mtrack-speculation`, `-mharden-sls=all` (straight-line speculation).
- **riscv64**: fewer mitigation flags exist (the ISA is young) — here old-vs-new
  *compiler version* and `-O0..-O3` carry most of the diversity.

Old **compiler versions** (via QEMU system images) add authenticity and reach
mitigations that predate a given flag, but the flag matrix on one modern compiler
already produces the paired data. Use both; lead with flags.

## 2. The build matrix

One cell = (arch, compiler+version, mitigation set, opt level, source). Enumerate
concretely and cheaply first, expand later.

- **arch**: x86_64, arm64, **riscv64** (the priority — real idiomatic RISC-V is the
  biggest gap).
- **toolchain**: a modern gcc and clang per arch with the mitigation flags above,
  plus 1–2 older gcc versions per arch from distro images (e.g. gcc 6 pre-retpoline
  vs gcc 12) where it adds a mitigation era we can't get from flags.
- **mitigation**: {none} × {retpoline} × {lfence/SLH} × {sls-harden (arm)} — only
  the combinations valid for the arch.
- **opt level**: O0, O1, O2, O3, Os (already how we get codegen diversity).
- **source**:
  - *vulnerable*: the project's own PoCs (`c_vulns/`), the harvested real RISC-V
    PoCs, and the Kocher/Spectector/SafeSide gadgets already in the pipeline.
  - *benign*: mbedTLS (have it) **plus** a broader real-software set compiled with
    full libc under system-mode — coreutils-style programs, zlib, busybox — to fix
    the benign monoculture behind the −1.92pp cost.

## 3. Execution environment (how to actually run it here)

QEMU and the cross-toolchains are **not installed on this Mac**, and host
cross-compilers are missing — but **Docker is present**, which is the clean path:

- **`docker buildx` + `binfmt_misc` (QEMU under the hood)** runs `--platform
  linux/arm64`, `linux/riscv64`, `linux/amd64` containers transparently — each a
  full distro with its native gcc/clang and glibc. This *is* QEMU user-mode
  emulation, containerised and reproducible, and it gives the compiler+libc matrix
  with no host installs.
- **`dockcross`** images give ready cross-toolchains per target.
- For old-toolchain or full-system needs, pinned **`qemu-system-*` images** boot a
  distro of the required vintage; snapshot for reproducibility.
- Everything runs in a container → the "controlled environment" the plan asks for:
  pinned image digests, no network during build, deterministic flags.

## 4. Harvest → label → verify pipeline (reuse what exists)

For each matrix cell, compile to assembly and run it through the harvesters we
already have, extended per this plan:

1. **Compile** to `.s` (and to an object for the link-ready check).
2. **Extract** functions → windows — reuse `spec/harvest_real_riscv.py`
   `split_functions`, `_neutralize`, `clean_seq`.
3. **Label**: vulnerability class from the *source* PoC; mitigation state from the
   *build flags*; a mitigated build of a vulnerable source becomes a labelled
   hard-negative (or its own MITIGATED class — decide in Phase 6).
4. **Structurally verify** the gadget survived the compiler (the O2-gadget-deletion
   guard already in `harvest_real_riscv.verify_structure`) — a mitigated build
   *should* fail the raw-gadget structure check; that is the signal, recorded, not
   an error.
5. **Independence-gate** RISC-V output with `eval/isa_independence_check.py` —
   real riscv64 compiled from real C by a real riscv64 compiler must pass where the
   transliterated corpus fails. This is the check that proves we finally have
   *idiomatic* RISC-V.
6. **Dedup** against `v54_train`, the locked test, and every held-out validation
   set; **neutralize** symbols.

## 5. Leak ground truth — the oracle, not QEMU

Where an oracle exists, confirm a sample of the *vulnerable* cells actually leaks,
so the source+flag label is not taken on faith:

- **x86_64**: Spectector (fast, symbolic) on a sample — already wired
  (`gen/b1_oracle_structure.py`, `oracle/`).
- **x86_64 deeper / arm**: gem5, InvisiSpec (Docker images present, slow).
- **any arch, real silicon**: Revizor (bare-metal, slowest, final confirmation).

**Match the oracle to the mitigation — proven on the first cell**
(`qemu_data/mitigation_pair_x86_RESULT.md`): a SPECTRE_V1 gadget compiled with vs
without an `lfence` was confirmed leak vs safe by Spectector end-to-end. But
Spectector models the PHT and serialization barriers only — it reports SPECTRE_V2/
retpoline pairs safe/unsupported, and it flags SLH-hardened code as *unsafe* even
though the loads are masked. So pair the oracle to the mitigation: **lfence →
Spectector; retpoline (V2) and SLH → gem5 / InvisiSpec** (microarchitectural). SLH
builds are labelled by construction (the flag) and confirmed on a microarch oracle,
never on Spectector.

The mitigated cell should come back **safe** on the same oracle — a paired
leak/safe confirmation on the same source is the strongest label we can produce.

## 6. Integration & the gaps each part closes

| gap (measured) | what this produces | check |
|---|---|---|
| RISC-V is a transliteration; 0% real attack recall | real idiomatic riscv64 gadgets from real C | independence gate passes; keep the 4 real PoCs held out |
| BENIGN was arm64-only; fix costs −1.92pp | diverse real x86/arm benign at scale, from many compilers+libc | multi-seed locked test recovers vs Run B |
| SPECTRE_V4/RSB one family each | many compiler/flag variants per class | family count up; effective-n up |
| classifier can't see mitigations | paired vulnerable/mitigated examples | new: does it distinguish gadget from thunked gadget |

Integration is **incremental and measured**, not a bulk dump:

- Address the benign imbalance first (cheapest, and we have the −1.92pp baseline to
  beat): add tuned-count diverse x86 benign, 5-seed, confirm FP stays low *and*
  macro-F1 recovers. This directly answers the open Run-B question.
- Then RISC-V positives: mix real idiomatic riscv64 into training, measure on the
  held-out real PoCs (never trained on), watch for the transliteration confound
  lifting.
- Keep every `spec/data/*_validation.jsonl` **held out**; QEMU data is training
  data, the real PoCs stay the anchor.

## 7. Risks & guardrails

- **QEMU is not a leak oracle** (§0). Labels are source+flag-derived, oracle-
  confirmed only where a real oracle runs. Never state a QEMU-run gadget "leaks."
- **Provenance / independence**: real-compiler RISC-V must pass the bigram
  independence gate before it is trusted as non-transliterated.
- **No test leakage**: dedup every cell against the locked test and all held-out
  validation sets; the 4 real RISC-V PoCs are never training data.
- **Class balance**: the −1.92pp cost was over-correction toward benign — add data
  with a target balance, sweep counts, class-weight if needed; do not repeat the
  bulk-benign mistake.
- **Emulation ≠ silicon codegen**: `-cpu` model affects scheduling, not semantics;
  functional emulation is fine for producing *code*, but "runs under QEMU" is not
  "exploitable on hardware."
- **Reproducibility**: pin image digests, compiler versions, flags; record the full
  cell spec in each record so any sample is rebuildable.
- **Cost**: the matrix is combinatorially large — start with a thin, high-value
  slice (riscv64 positives; x86 benign diversity; one mitigation pair per x86
  class) and expand only where a measured gap remains.

## 8. First concrete steps

1. Stand up the containerised toolchain matrix: `docker buildx` multi-arch build of
   a tiny image per (arch) carrying gcc+clang; verify riscv64/arm64/amd64 each
   compile a hello-world and one PoC to `.s`.
2. Reproduce **one mitigation pair** end to end on x86: a SPECTRE_V2 PoC compiled
   with and without `-mindirect-branch=thunk`; run both through Spectector; confirm
   leak vs safe. This validates the whole idea on the cheapest cell before scaling.
3. Generate a first **real riscv64** batch from the harvested PoCs across gcc opt
   levels; run `eval/isa_independence_check.py` to confirm it is idiomatic (passes
   where the transliterated corpus fails).
4. Generate a **diverse x86 benign** batch; rerun the 5-seed benign-balance
   experiment to see if broader benign lifts macro-F1 back toward baseline.
