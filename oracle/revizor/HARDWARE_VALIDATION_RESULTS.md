# Revizor real-hardware validation — session results (2026-08-11)

*Executes the plan in `DUAL_BOOT_VS_CLOUD_PLAN.md`. That plan was scoping-only
("nothing here has been executed"); this session found the dual-boot had
since actually happened — this repo's dev environment is now running natively
on `ritvik-asus-linux`, bare metal (not WSL2, not a VM), genuine
`GenuineIntel i5-8300H` (Coffee Lake, 8th gen). This is the exact target
machine the plan identified. This file is the changelog + honest results,
written to be read on its own.*

## What was built

Revizor's executor kernel module reads real hardware performance counters —
it needs a Linux kernel module built against the exact running kernel. Two
real bugs in the previously-written prep had to be fixed before anything ran:

1. **The Docker approach in `Dockerfile.revizor` doesn't work on this host.**
   The container's Ubuntu 24.04 toolchain (gcc 13.3.0) is too old for flags
   (`-fmin-function-alignment=16`) that only exist in gcc 15+ — which is what
   actually built this host's kernel (a very new release, kernel `7.0.0`).
   Bind-mounting the host's kernel headers into an older-toolchain container
   doesn't work: Kbuild passes compiler flags matching the *kernel's own*
   build compiler, and the container can't satisfy them. **Fix: build the
   kernel module natively on the host instead** (`scripts/native_setup.sh`,
   `scripts/build_load_module.sh`) — the host already has kernel headers and
   a matching gcc available via `build-essential`. Docker remains useful only
   for portability to other x86 hosts; on the actual target machine, native
   is simpler and avoids this whole class of mismatch.
2. **`Dockerfile.revizor`'s documented module path/name were stale.**
   README said `executor_km/x86/x86-executor.ko`; the real module (revizor
   2.0.0 / sca-fuzzer) builds at `rvzr/executor_km/rvzr_executor.ko` (module
   name `rvzr_executor`, not `x86-executor`).
3. **`rvzr download_spec -a x86-64 -o base_x86.json` with no `--extensions`
   flag produces a near-empty 9-instruction spec** (`clflush`/`clflushopt`/
   `int1` only) — nowhere near enough for the demo configs' instruction
   categories, and missing `lfence`/`mfence` that Revizor's own internal
   fenced-test-case builder needs, which crashes the fuzzer outright ("Unknown
   instruction lfence"). **Fix: `--extensions ALL_SUPPORTED`** (a canonical
   bundle Revizor defines: `BASE, SSE, SSE2, SSE3, SSE4, SSE4a, CLFLUSHOPT,
   CLFSH, RDTSCP, LONGMODE`) → 2274 instructions, includes fences.
4. **`rvzr fuzz -w <dir>` requires the working directory to already exist** —
   it does not create it, and fails outright if missing.
5. **No `testcases/` or top-level `config.yaml` were ever needed.** The
   README referenced `oracle/revizor/testcases/spectre_v2.asm` for `rvzr
   reproduce`, but the four canned `demo_configs/*.yaml` (V1, V4,
   foreshadow=L1TF, MDS) are self-contained `rvzr fuzz` campaigns — they
   generate randomized test programs on the fly from a listed set of
   instruction categories and a contract, no pre-written `.asm` required.

With those fixed: kernel module built and loaded cleanly (`rvzr_executor`,
confirmed via `lsmod`), no crashes, no hangs, no reboot needed for this part.

## Results — baseline pass, mitigations ON (current default OS state)

Ran each canned demo config with `-n 200 -i 100` (i.e. up to 200 randomly
generated test cases, 100+ inputs each), capped at 300s/class for this pass.

| Class | Test cases completed | Violations | Notes |
|---|---|---|---|
| **MDS** | 184/200 (timeout) | **3** | direct hardware-generation match per `DUAL_BOOT_VS_CLOUD_PLAN.md` |
| **SPECTRE_V1** | 73/200 (timeout) | **3** | known-good control — already double-confirmed via Spectector+InvisiSpec; finding it here validates the harness end-to-end |
| **SPECTRE_V4** | 200/200 (full run) | 0 | no violation this pass |
| **L1TF** | 17/200 (timeout) | **3** | direct hardware-generation match |

Every run printed `WARNING: [executor] SMT is on! You may experience false
positives.` — so a violation count alone isn't sufficient evidence; SMT
sibling-thread noise needed ruling out before treating MDS/L1TF as confirmed.

Raw artifacts (program.asm, report.txt with hardware traces + contract-trace
hash, reproduce.yaml, and the counterexample input_*.bin files for exact
reproduction) are under `results/baseline_260811_mitigations_on/<CLASS>/`.

## SMT disambiguation (in progress)

SMT can be toggled live via `/sys/devices/system/cpu/smt/control`, no reboot
— used to re-run MDS and L1TF with SMT fully off (`scripts/smt_off_rerun.sh`),
SMT restored to `on` automatically afterward.

- **MDS, SMT off: still 3/184 violations**, independently-generated random
  test cases (no fixed `program_generator_seed` in `detect-mds.yaml`), not a
  replay of the same programs. This is real evidence the MDS signal is not
  purely SMT-sibling noise — it survives SMT being fully disabled.
- **L1TF, SMT off: still 3/53 violations**, same story — independently
  regenerated test cases, violations persist. SMT was restored to `on`
  automatically after the run (confirmed via `/sys/devices/system/cpu/smt/control`).

Both classes now have real evidence against SMT-sibling noise as the
explanation. This is not yet a formal proof (e.g. no cross-check against a
second independent oracle the way SPECTRE_V1/V4 got Spectector+InvisiSpec
double-confirmation in Phase 4) — it rules out the one specific confound
Revizor itself flagged, on real vulnerable-generation hardware, with
independently-reseeded random test-case generation each time. Artifacts:
`results/smt_off_260811_disambiguation/{MDS,L1TF}/`.

## Honest status / what's not yet done

- **SPECTRE_V2, RETBLEED, INCEPTION have no canned demo config.** Per
  `oracle/validators/revizor_validator.py`'s own comment, these need a custom
  fuzz campaign built by hand. INCEPTION is AMD-only (this is Intel — out of
  reach on this machine regardless). SPECTRE_V2/RETBLEED are both
  hardware-plausible here (`DUAL_BOOT_VS_CLOUD_PLAN.md`'s table) but
  currently OS-mitigated (`Mitigation: IBRS` for both) — not yet attempted.
- **The mitigation-off reboot pass (kernel boot params like `l1tf=off`,
  `mds=off`, `spectre_v2=off`) has not been done.** The baseline pass above
  already found violations *without* touching mitigations at all, which is a
  stronger result than expected going in — worth deciding, with the SMT-off
  result in hand, whether the reboot pass is still needed or whether the
  live-mitigated findings are sufficient.
- SPECTRE_V4 showed 0 violations this pass despite being previously
  double-confirmed via the simulator oracles (`SPECDISCOVER_UPDATE.md`'s
  Phase 4 section) — not yet investigated why (config too conservative?
  `program_size`/`avg_mem_accesses` too small? needs a longer run before
  concluding anything).
- No violations have yet been fed back into the generator/gadget pipeline as
  validated attack sequences (the original ask behind this whole pass) — that
  synthesis step is still open.

---

# V4 / SSB campaign — resolved (2026-09-07)

Closes the last open item above ("SPECTRE_V4 showed 0 violations this pass ...
not yet investigated why"). It was the config, not the hardware: the old
`detect-v4.yaml` enabled only BITBYTE/CMOV/LOGICAL at `program_size` 20, so
generated programs almost never contained the store -> dependent-load pair SSB
requires. The revised config (`demo_configs/detect-v4.yaml`, 2026-09-06) adds
BASE-DATAXFER + BASE-BINARY, forces straight-line code (`bb=1`), and widens the
window (`program_size` 48, `avg_mem_accesses` 20, entropy 24).

Run via `scripts/run_v4_ssb_campaign.sh` (steps 2-4 of `V4_SSB_RUNBOOK.md`) on
the i5-8300H, kernel 7.0.0-30-generic, `spec_store_bypass: disabled via prctl`
(i.e. un-mitigated by default for these processes). `-n 1000 -i 100`, 900s cap
per seed.

## Results

| arm | config | violations |
|---|---|---|
| **SSBP off** (un-mitigated) | seeds 1000000 / 2222222 / 3333333 / 4444444 / 5555555 | **15** (4, 2, 2, 4, 3) |
| **SSBP on** (mitigated control) | same program space | **0** |
| **SMT off** (un-mitigated) | same 5 seeds | **16** (5, 2, 2, 4, 3) |

Every seed produced violations; the two controls behave exactly as a real SSB
effect requires:

- **The mitigation closes it.** Flipping `x86_executor_enable_ssbp_patch` to
  true takes 15 violations -> 0. The leak is specifically speculative store
  bypass, not generic measurement noise or a harness artifact.
- **It survives SMT off.** 16 violations with hyperthreading fully disabled
  (vs 15 with it on) rules out sibling-thread leakage — this is single-thread
  SSB. SMT was restored to `on` afterwards.

## Why these are V4 and not V1

Checked mechanically over all 15 un-mitigated violating programs:
- **0/15 contain any conditional branch**, and each has exactly **1 basic
  block** — so no branch misprediction is available to explain the leak.
- **15/15 contain store->load pairs** on the `r14` sandbox.

With the CT-SEQ contract (models no speculation, hence forbids store bypass),
a divergence in straight-line code is unambiguously store bypass.

## Significance

This replaces the retracted simulator grounding. Per
`eval/v4_corrected_metric_2026-09-06.txt`, the earlier InvisiSpec/gem5 "V4 leaks
40/40" was a confident-hit-on-noise artifact (byte-verified: 0/40 correct),
because that gem5 config returns ~uniform load latencies and self-timed
Flush+Reload cannot separate hit from miss. V4/SSB is now grounded on **real
silicon with a mitigated control**, which the simulator never provided.

## Artifacts

`results/v4_ssb_260907/` — `ssbp_off/` (15), `smt_off/` (16),
`ssbp_on_control/` (config + the 0 result), and `campaign.log`. Each violation
dir keeps `program.asm`, `report.txt`, `org-config.yaml`, `reproduce.yaml`,
`minimize.yaml` and the 200 `input_*.bin` counterexamples for exact
`rvzr reproduce`. Total 76M — same retention as the 2026-08-11 dirs, but note
the size before committing.

## Next (not done here)

Step 6 of `V4_SSB_RUNBOOK.md`: convert the violating `program.asm` from Intel
syntax with the `r14`-relative sandbox to the AT&T form v54 records use, build
records (violating -> `SPECTRE_V4`, SSBP-on twin -> `BENIGN`, carrying
`oracle=revizor_hw`), and wire through `gen/v4_family/build_experiment.py`.
