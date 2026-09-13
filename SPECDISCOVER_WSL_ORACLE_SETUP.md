# SpecDiscover — WSL2/Docker Oracle Infrastructure (Phase 4, continued)

*Sets up the Phase 4 leak-oracle stack (Spectector + InvisiSpec) on a Windows
machine via WSL2 for the first time, and re-derives the project's headline
double-confirmation result on fresh infrastructure. Written to be read on its
own; see `SPECDISCOVER_PHASE4_SUMMARY.md` for the original Mac-based Phase 4
work this continues.*

---

## The problem

Phase 4 built two working leak oracles (Spectector, a symbolic prover; and
InvisiSpec, a real gem5-execution oracle) on a Mac. That machine is Apple
Silicon (ARM), so all x86 oracle work there went through emulation, and the
project's own docs listed "get access to a real Intel/AMD machine" as the
**Priority 1** next step, needed to (a) validate on genuine x86 hardware and
(b) eventually unlock Revizor (real-hardware fuzzing) for the six
vulnerability classes neither simulator can model.

This session had access to a different machine — a Windows laptop with a
real Intel CPU (i5-8300H) — but no Linux environment, no Docker, and none of
the oracle infrastructure set up. The ask: get a Linux environment running on
it, generate more candidate attack samples, and validate the attack sequences
the project already has.

## What was addressed

1. **Stand up WSL2 + Docker on the Windows host**, working around this
   machine's real constraints: a nearly-full C: drive (16GB free), only
   7.9GB total RAM, and (as discovered mid-session) something that
   periodically interrupted long-running background processes.
2. **Build the two Phase 4 oracle images natively for x86_64** — both were
   previously only built for/tested on Apple Silicon via `--platform
   linux/arm64` cross-emulation.
3. **`Dockerfile.invisispec` didn't exist at all.** Despite
   `oracle/validators/invisispec_validator.py` depending on a
   `specdiscover-invisispec:pinned` image, no Dockerfile, build script, or
   source for it was anywhere in the repo — it had to be built from scratch.
4. **Regenerate missing model checkpoints and derived data** — this checkout
   was missing `spec/{base,x86_64,arm64}.json`, `spec/mlm.pt`, and
   `gen/generator.pt` (all gitignored, generated artifacts that hadn't been
   synced to this machine).
5. **Generate a larger batch of candidate attack gadgets** and **run the
   full oracle validation** across the canonical + synthesized attack corpus.

## Results

### Infrastructure: built and verified working
- WSL2 (Ubuntu 24.04) installed to the D: drive (avoiding the constrained
  C:), with Docker Engine running natively inside it — no Docker Desktop.
- **Spectector** — builds and runs correctly natively on x86_64 (`--platform
  linux/amd64`, was hardcoded to `arm64`).
- **InvisiSpec** — built from nothing. Along the way, found and fixed four
  real, previously-undiagnosed bugs in the 2018-era gem5 fork's build:
  - `gcc-x86-64-linux-gnu` (an ARM-host cross-compiler package) doesn't exist
    on native x86_64 and isn't needed there.
  - **Root-caused a SCons/Python 2 incompatibility**: SCons 3.0.1 has
    `from __future__ import print_function` in its own module chain, and
    Python 2's `compile()` inherits `__future__` flags from the *calling*
    frame by default — so every old-style `print "..."` statement in this
    2018-era tree became a `SyntaxError` the moment SCons compiled it, even
    though the same file parses fine in isolation. Fixed by running 2to3's
    print/except fixers across the whole tree (including extensionless
    `SConstruct`/`SConscript` files, which 2to3 doesn't walk by default) and
    then making `from __future__ import print_function` explicit in all
    1,072 build-script files, since which loading path inherits the flag
    turned out to be inconsistent even within SCons itself.
  - Missing runtime library (`libpython2.7.so.1.0`, needed because gem5
    embeds a Python interpreter for its config system) and missing compiler
    toolchain in the final trimmed image (the validator compiles PoCs in the
    same container it runs gem5 in).
  - **The "guest kernel-release bump" gap** flagged but not resolved in
    `SPECDISCOVER_UPDATE.md`: gem5's syscall-emulation mode fakes `uname()`
    with a hardcoded kernel release of `"3.0.0"`, which is below glibc
    2.27's minimum ABI requirement — every statically-linked test binary
    aborted immediately with `FATAL: kernel too old`, before any simulation
    happened. Bumped to `4.15.0`; now automated in
    `oracle/docker/build_invisispec_incremental.sh` so a fresh build
    reproduces the fix rather than needing it reapplied by hand.
- Because Docker `RUN` layers are all-or-nothing and this specific host
  interrupts long-running background processes roughly every 15–20 minutes
  regardless of build parallelism, the gem5 compile step was restructured
  (`oracle/docker/build_invisispec_incremental.sh`) to run against a
  host-persisted source directory instead of inside a single Docker layer,
  so SCons's own incremental dependency tracking lets each retry resume
  instead of starting over.

### Validation: the headline result reproduces on fresh hardware
Ran `oracle/run_spectector_batch.py` and `oracle/run_cross_validation.py`
(both oracles, full canonical + synthesized gadget set, 17 gadgets):

| Gadget | Spectector | InvisiSpec | Verdict |
|---|---|---|---|
| `synth_SPECTRE_V1` | leak | leak | **double-confirmed** |
| `synth_SPECTRE_V4` | leak | leak | **double-confirmed** |
| `ref_spectre_full` (reference control) | — | **leak** (40/40 secret bytes recovered) | confirmed |
| `canon_spectre_1`, `canon_bhi`, `canon_retbleed` | unrunnable* | safe | as expected, under-tuned |
| `synth_BENIGN`, `synth_SPECTRE_V2`, `synth_L1TF`, `synth_MDS`, `synth_BHI`, `synth_RETBLEED`, `synth_INCEPTION`, `canon_spectre_2`, `canon_mds`, `canon_l1tf`, `canon_inception` | unrunnable* / safe | unrunnable | structural — needs real hardware (see below) |

\* "unrunnable" for Spectector on canonical gadgets means no minimal
analyzable victim was generated for them, not a failure.

This is the same result the project found on the Mac: **SPECTRE_V1 and
SPECTRE_V4 are the two classes confirmed to leak under both a formal proof
and real speculative execution** — now independently re-derived from
infrastructure built from scratch on different (real x86) hardware. The
remaining six classes exploit vendor-specific microarchitecture (branch
predictors, fill buffers, return-stack buffers) that a generic simulated
core cannot model — already correctly identified as a hardware-only gap in
prior work, confirmed again here rather than newly discovered.

### Generation: 1,000 new candidate gadgets
`spec/mlm.pt` and `gen/generator.pt` had to be retrained from scratch (no
checkpoints existed in this checkout) using the real 7,203-record dataset.
Training reproduced the documented pattern (hand-58 features beat MLM-alone
and hand+MLM; class/arch conditioning lift ~5.8x, matching the prior ~5.7x).
The retrained generator then produced **1,000 candidate gadgets** (10
classes × 2 architectures × 50 samples), **99.9% PDG-parseable**.

### A methodology bug found and fixed while validating
`InvisiSpecValidator`'s default timeout (1800s / 30min, calibrated on the
original Mac's reported "~10min/gadget" pace) was silently reporting real
leaks as `unrunnable`/timeout on this slower hardware — caught because the
reference PoC had already been directly confirmed to leak (40/40 bytes) in
~50–90 minutes, then showed up as a timeout in the batch run. Fixed to 5400s
(90min) in both `oracle/run_cross_validation.py` and
`oracle/build_leak_dataset.py`. Without this fix, a full validation run on
this class of hardware would have under-reported real leaks.

## What's still open

- **`build_leak_dataset.py --full`** (the tuning-knob sensitivity grid) not
  re-run this session — lower priority, since the prior Mac-based run
  (`oracle/results/leak_dataset_FINDINGS.md`) already found leak status
  doesn't depend on gadget tuning for V1/V4.
- **Real-hardware validation (Revizor)** for the six non-adjudicable classes
  is still unbuilt. This machine's real Intel CPU makes it newly possible in
  principle, but only via bare-metal Linux — WSL2 is a Hyper-V VM and cannot
  expose raw MSRs / physical performance counters the way Revizor's executor
  kernel module needs. Options (dual-boot this laptop vs. a rented bare-metal
  cloud instance) were scoped in conversation but not committed to a plan
  file yet.
- **`models/gadgets/rf_multiclass.joblib`** and the ~75,948-gadget mined
  corpus referenced in `UPDATE.md` remain absent from this checkout (only
  `rf_metrics.json` survives); not on the critical path for oracle
  validation, so not pursued this session.

## Reproduce

| Step | Command |
|---|---|
| Spectector build | `bash oracle/docker/build_spectector.sh` |
| InvisiSpec build (resumable) | `bash oracle/docker/build_invisispec_incremental.sh` |
| Spectector batch | `python3 oracle/run_spectector_batch.py` |
| Full cross-validation | `python3 oracle/run_cross_validation.py` (add `--demo` for a 3-gadget smoke test) |
| Retrain MLM + generator | `python3 spec/train_mlm.py --epochs 10 --save spec/mlm.pt` then `python3 gen/train_generator.py` |
| Generate a gadget batch | `python3 gen/generate_batch.py --n 50` |
