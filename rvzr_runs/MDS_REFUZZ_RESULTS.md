# MDS re-fuzz — i5-8300H (Coffee Lake), both SMT states

**Question this answers:** the recorded MDS violations do *not* reproduce on this
box (`REPRODUCE_RESULTS.md`: MDS 0/6 via `rvzr reproduce -i`). Is that because
the MDS channel has *closed* on this silicon (microcode / `MD_CLEAR`), or because
the specific recorded inputs no longer re-trigger it? Fresh contract-fuzzing
(`oracle/revizor/scripts/refuzz_mds.sh`) settles it: run new random programs under
the MDS contract and see if *any* violation appears.

This is Revizor's own contract fuzzing — random programs, htrace differences the
MDS contract forbids. No exploit, no secret exfiltration.

## Result: MDS is still live, under BOTH SMT states

| SMT | rounds planned | test case at first violation | violations | duration |
|---|---:|---:|---:|---:|
| on  | 1000 | 15 | **1** | 223 s |
| off | 1000 | 15 | **1** | 223 s |

Both runs stop at the first violation (`--nonstop` off), so "Test Cases: 15" is
where the leak was hit, not a cap. A violation appears within ~15 random programs
either way.

Box mitigation state at test time (`~/rvzr_hwlabel_cf/env.json`):
`mds = "Mitigation: Clear CPU buffers; SMT vulnerable"`.

## Findings

1. **The MDS channel has NOT closed on this box.** Fresh random programs produce
   an MDS contract violation quickly (≈15 test cases) with SMT **on** *and* with
   SMT **off**. So the 0/6 recorded-input non-reproduction is a property of the
   *recorded inputs* (input/microarchitectural-state fragility of `reproduce -i`),
   **not** of the hardware having been patched silent.
2. **SMT is not required.** The leak reproduces with the sibling hyperthreads
   offlined (`/sys/devices/system/cpu/smt/control = off`, CPUs 0–3 online), so on
   this box the detected MDS leakage is not solely an SMT cross-thread effect.
   (SMT-on still carries Revizor's standard false-positive banner, but the SMT-off
   run removes that caveat.)
3. **`MD_CLEAR` does not make Revizor's MDS contract hold here.** Despite the
   "Clear CPU buffers" mitigation being active, contract fuzzing still finds a
   forbidden htrace difference under the `ct` observation / `seq-assist` execution
   clause — the config this repo uses (`oracle/revizor/demo_configs/detect-mds.yaml`).

## Artifacts

- `smt_on/fuzz.log`, `smt_off/fuzz.log` — full fuzzer output + statistics.
- `smt_{on,off}/violation-*/program.asm` — the leaking program for each state
  (plus `reproduce.yaml` / `minimize.yaml` / `report.txt` to re-drive it). The
  400 `input_*.bin` per violation are left uncommitted (regenerable, ~4.8M each;
  not needed to inspect the gadget).

## Method note

`refuzz_mds.sh` passes the ALL_SUPPORTED instruction-set spec
(`base_x86.json`, 2274 instructions incl. `lfence`/`mfence`) via `-s`; that is
where the fences the fenced-test-case builder needs come from. There is no
`--extensions` flag on `rvzr fuzz` (that flag belongs to `rvzr download_spec`).
