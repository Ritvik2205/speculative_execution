# Phase 4 — gem5 Execution Oracle (Design)

**Status:** design, approved 2026-07-28. Ready for implementation plan.

**Roadmap ref:** `/Users/ritvikgupta/.claude/plans/compressed-whistling-goblet.md`, Phase S4 (the
"simulator-in-the-loop confirmation" bar). Closes gap **G10** (no real leak oracle
anywhere in the pipeline) and answers gap **G8** (hand-authored attack labels are
unverified ground truth) from `SPECDISCOVER_VERIFICATION_GAPS.md`.

**Prereqs done:** Phase 0 (spec engine), Phase 1 (learned features + rigor pass),
Phase 2 (conditioned generator). Phase 3 (ranker) is designed and parked *on this
phase* — see `docs/superpowers/specs/2026-07-22-phase3-ranker-design.md`.

---

## Purpose

Every "ground truth" in SpecDiscover today is one of: (a) the hand-written rules
themselves, (b) a syntactic oracle (llvm-mc/capstone — knows encoding, not
security semantics), or (c) another learned model. **Nothing confirms a labeled
attack actually leaks under real speculative execution.**

Phase 4 builds that missing oracle: run each hand-labeled c_vulns attack in a
cycle-level microarchitectural simulator (gem5) with a speculative out-of-order
CPU and a real cache hierarchy, and measure whether a Flush+Reload covert channel
actually recovers the planted secret **because of speculation**. Output is a
per-sample leak label plus a continuous leak signal:

    oracle.measure(program, arch) -> { leak: bool, leak_signal: float, ... }

Two consumers:
1. **G8/G10 answer** — the headline: what fraction of the hand-labeled c_vulns
   corpus actually leaks in simulation, reported per class, honestly including
   non-leakers.
2. **Phase 3 ranker** — `leak_signal` is the regression target the parked ranker
   was blocked on.

---

## Target sample set

The **labeled c_vulns corpus** — `c_vulns/c_code/*.c` (and its prebuilt
`c_vulns/executables/`, `c_vulns/asm_code/*.s`). These are the hand-authored
ground-truth attacks the classifier trains on, so validating them tests the
labels themselves.

They are **self-contained Flush+Reload PoCs**, not gadget fragments: each plants a
secret (e.g. `secret_inception_data = 'I'`), owns a probe array, runs the attack,
and calls a `perform_measurement()` that times reloads and prints recovered-vs-
actual. This is what makes them directly runnable in gem5 SE mode.

**Dedup first.** The 1406 `.s` files are ~15–40 distinct underlying programs
replicated across arch (x86_64 / arm64 / riscv) and optimization level
(O0–O3/Os). `oracle/catalog.py` collapses them to the distinct-program set; the
oracle runs on distinct programs, and results are attributed back to every
member file for the corpus-wide headline.

**ISA scope:** x86_64 first (richest PoC set, primary training ISA), then arm64.
RISC-V is skipped — its corpus is contaminated with verbatim inline ARM64 asm
(G6), so those files do not contain RISC-V attack code to simulate.

---

## Oracle mechanism

**gem5, SE (syscall-emulation) mode.** Each distinct PoC is statically compiled
for the guest ISA and run under two CPU models:

- **O3 (speculative):** gem5's out-of-order core (`X86O3CPU` / `ArmO3CPU`) plus a
  classic cache hierarchy (L1I, L1D, L2). This core issues speculative loads that
  fill the cache and are **not** rolled back from the cache on misspeculation —
  the exact condition that makes Spectre-class Flush+Reload recover a secret.
  (Well-precedented: gem5 is a standard vehicle for Spectre microarch research.)
- **In-order (control):** `TimingSimpleCPU`, same cache hierarchy, no speculation.
  A correct Spectre leak must **vanish** here.

The leak signal is defined as the **difference** between the two — see below.

### Host / container

gem5 does not build natively on macOS. It runs in a Docker `linux/arm64`
container (native on the Apple M5 host — the guest ISA gem5 simulates is a
build-time choice independent of the host ISA, so no slow x86-on-arm host
emulation is involved). Pin one gem5 version; build `X86` and `ARM` guests
(`scons build/X86/gem5.opt build/ARM/gem5.opt`).

---

## leak_signal definition

Per run, collect the reload-latency vector `r[0..N-1]` over the probe-array cache
lines, with the planted-secret line at index `s`:

- **SNR** = `(mean(r_others) − r[s]) / std(r_others)` — how many standard
  deviations faster the secret line reloads than the rest. Continuous.
- **`leak_signal := max(0, SNR_O3 − SNR_inorder)`** — the speculative-only signal.
  Subtracting the in-order run removes any architectural (non-speculative)
  cache footprint, so ordinary data-dependent access can't masquerade as a
  Spectre leak. This is the value Phase 3 regresses.
- **`leak` (binary)** := `recovered_byte_ok AND (SNR_O3 − SNR_inorder) > τ`, where
  `recovered_byte_ok` means the PoC's F+R actually recovered the planted secret
  value and τ is a fixed separation threshold calibrated on the positive/negative
  controls (not hand-tuned per class).

**Signal sources (hybrid, approved):**
- Binary leak + recovered-byte accuracy come from the **PoC's own stdout**
  (`recovered: X` vs `actual: Y`) — no per-gadget surgery.
- The continuous per-line reload-latency vector comes from **gem5 itself** — a
  cache probe listener (or `stats.txt` per-set access latencies) read out of the
  simulator, honoring `m5` ROI markers when a PoC has them and falling back to
  whole-run otherwise. This gives a clean SNR independent of the PoC's noisy
  in-simulator `rdtsc` threshold.

---

## Controls (rigor)

- **O3 vs in-order, every sample** — primary control; leak must be speculative.
- **Positive control** — `spectre_v1` must leak on O3 and ~0 in-order. If it
  doesn't, the harness is broken; nothing else is trustworthy.
- **Negative control** — a BENIGN program and a fence-serialized variant of a
  known leaker (lfence / `dsb sy;isb` before the transient load) must read ~0 on
  both CPUs.
- **Secret-jitter** — gem5 SE is deterministic given a fixed config, so there is
  no training-style seed variance to average. Instead vary the *planted secret*
  across runs and require the oracle to recover the **actual** secret each time,
  not a fixed constant — this rules out a "recovers a hard-coded value" artifact.

---

## Components — new `oracle/` package

- `oracle/docker/Dockerfile`, `oracle/docker/build_gem5.sh` — pinned gem5;
  `scons build/X86/gem5.opt` (+ ARM). One-time image build.
- `oracle/catalog.py` — dedup c_vulns → distinct-program set, tag each with
  (class, arch, opt), static-compile for the guest ISA.
- `oracle/gem5_se.py` — the config script gem5 executes: O3 + classic cache,
  switchable `TimingSimpleCPU`, cache-probe listener for reload latencies,
  `m5` ROI support.
- `oracle/run_oracle.py` — host driver: for each distinct PoC × {O3, in-order} ×
  arch, launch the container, collect stdout + `m5out/stats.txt`.
- `oracle/leak_signal.py` — compute SNR, `leak_signal`, binary `leak` per the
  definitions above.
- `oracle/results/leak_labels.jsonl` — one row per (source program, arch, class):
  `{leak, leak_signal, snr_o3, snr_inorder, recovered_ok, secret, gem5_version,
  cpu_o3, cpu_inorder, member_files:[...]}`. The artifact Phase 3 consumes and the
  G8/G10 report is built from.
- `oracle/validate_oracle.py` — runs the three controls, then the corpus-wide
  agreement report (oracle-leak vs hand label), per class.

Do NOT touch the classifier / spec / generator code. The oracle is a standalone
consumer of the corpus and a producer of `leak_labels.jsonl`.

---

## Class coverage — honest scope

All 9 classes are attempted, **with explicit per-class caveats.** gem5's O3 core
reliably models **cache-timing speculation driven by a mispredicted conditional /
squashed transient load** — i.e. the SPECTRE_V1 mechanism, and by extension
SPECTRE_V4 (store-to-load) and the cache-side-channel back-half shared by every
class. It does **not** faithfully model several vendor-specific microarchitectural
structures the other classes exploit:

| Class | Mechanism | gem5 adjudicable? |
|---|---|---|
| SPECTRE_V1 | Conditional-branch bypass → F+R | **Yes** (primary, well-precedented) |
| SPECTRE_V4 | Speculative store bypass (STL) | **Likely** — depends on store-buffer/mem-dep model config |
| SPECTRE_V2 | Indirect-branch target injection (BTB) | **Partial** — gem5's BTB/indirect predictor is generic, not a real BTB-poisoning target |
| BHI | Branch-history injection | **No** — no branch-history-buffer poisoning model |
| RETBLEED | Return-address (RSB) confusion | **Partial** — depends on gem5 RAS model behavior under overflow |
| INCEPTION | AMD SRSO / phantom RAS | **No** — vendor-specific, unmodeled |
| L1TF | Terminal-fault L1 read past permission | **No** — needs fault/TLB microarch gem5 SE mode does not model |
| MDS | Intel line-fill-buffer / port leak | **No** — unmodeled microarch buffer |

**A null (no-leak) result for a "No"/"Partial" class means the simulator does not
model that structure — NOT that the gadget is benign.** The report states this per
class. The scientifically load-bearing claims are the **"Yes"** rows (a real,
independent confirmation that those labels leak) and the **controls** (the signal
is speculative). The "No" rows are reported as *simulator coverage gaps*, which is
itself a genuine finding: it quantifies exactly which of the hand-authored labels
this class of oracle can and cannot vouch for, and motivates the hardware/POC
tier as future work.

This is deliberately the honest framing this project has held throughout: attempt
everything, then label each result by what the tool can actually adjudicate,
rather than reporting an unqualified "N% of attacks confirmed."

---

## Verification bar — Phase 4 is done when

1. gem5 builds and runs in the container; **all three controls pass** (spectre_v1
   leaks on O3 and not in-order; BENIGN and fence-serialized read ~0 on both).
2. The distinct-PoC corpus (both arches, all 9 classes attempted) is scored and
   `oracle/results/leak_labels.jsonl` is emitted.
3. **Headline report** (`oracle/validate_oracle.py`): per-class leak rate on the
   real corpus, each row tagged with its adjudicability from the table above; the
   aggregate "confirmed-leaking fraction" reported **only over gem5-adjudicable
   classes**, with the unmodeled classes listed separately as coverage gaps.
4. `leak_signal` distribution is sane: continuous, separates the O3 positive
   control from in-order, and is consumable by the Phase 3 regression head.

---

## Risks / open questions

- **Runtime.** O3 SE runs are slow (order minutes each). Distinct-PoC set
  (~15–40 × 2 CPUs × 2 arches) is a manageable batch; scoring the full 1406 is a
  longer background job, run once and cached in the manifest.
- **Static compilation.** SE mode wants static binaries. Some PoCs use libc
  features (`mmap`, `signal`, `setjmp`) — verify each links static under the
  container toolchain; PoCs that can't be made SE-runnable are recorded as
  `status: unrunnable`, not silently dropped.
- **PoC self-report reliability.** The PoC's own `rdtsc` threshold can be noisy in
  simulation; that is exactly why the continuous SNR comes from gem5's cache state
  rather than the PoC's timing. Binary `recovered_ok` still uses the PoC's own
  recovery, cross-checked against the gem5 SNR sign.
- **τ calibration.** The binary threshold is fixed from the positive/negative
  controls, not tuned per class, to avoid circularity.
- **Cache-model choice.** Classic vs Ruby cache — start classic (simpler,
  sufficient for F+R); note Ruby as a later fidelity upgrade if a class needs
  coherence-level effects.

---

## Explicitly out of scope

- Real-hardware confirmation (the ultimate bar) — future tier; this phase is the
  simulator tier only.
- Phase 4b static contract-checker — considered and deferred; gem5 is the
  approved mechanism for this phase.
- Improving the generator's 2.3% syntactic-validity rate (G9) — separate work;
  the oracle validates the *corpus*, not generated candidates, in this phase.
