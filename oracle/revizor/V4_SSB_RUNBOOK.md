# Revizor V4 / SSB campaign — runbook for the i5-8300H

**Why:** the InvisiSpec/gem5 oracle does NOT reproduce Speculative Store Bypass
(byte-verified: V1 leaks 40/40, SSB 0/40 — the earlier "V4 40/40" was a
confident-hit artifact; see `eval/v4_corrected_metric_2026-09-06.txt`). SSB is a
real microarchitectural effect on silicon, so we ground V4 on the bare-metal
**i5-8300H** (Coffee Lake) where the prior MDS+L1TF violations were found. This
Mac (arm64) **cannot** run Revizor — the executor is an x86 Linux kernel module.

The prior V4 pass found **0/200** because the config was too narrow. The revised
`demo_configs/detect-v4.yaml` (2026-09-06) fixes that:
- adds `BASE-DATAXFER` + `BASE-BINARY` so store→dependent-load pairs appear,
- straight-line code (`bb=1`) so any violation is store-bypass (V4), not branch
  misprediction (V1) — this **isolates** SSB,
- wider window (`program_size 48`, `avg_mem_accesses 20`) + entropy 24.

Contract logic: `contract_execution_clause: seq` (no speculation modeled →
forbids store bypass) with `x86_executor_enable_ssbp_patch: false` (SSB left
un-mitigated on the CPU). Any bypass the silicon performs ⇒ violation.

## 0. Pull the revised config onto the box

```bash
cd ~/speculative_execution     # the repo checkout on the i5-8300H
git pull                       # gets the revised detect-v4.yaml + this runbook
```

## 1. One-time setup (skip if already done for the MDS/L1TF run)

```bash
bash oracle/revizor/scripts/native_setup.sh      # clones sca-fuzzer, venv, unicorn==1.0.3, base_x86.json
bash oracle/revizor/scripts/build_load_module.sh # builds + insmods rvzr_executor.ko
lsmod | grep rvzr_executor                        # confirm loaded
```

## 2. V4 / SSB fuzzing campaign (run as root)

Run several seeds — SSB is rarer than MDS/L1TF, so give it volume. Each seed is a
fresh program space; `-n` test cases per seed.

```bash
source ~/sca-fuzzer/venv/bin/activate
CFG=oracle/revizor/demo_configs/detect-v4.yaml
for seed in 1000000 2222222 3333333 4444444 5555555; do
  wd=~/rvzr_runs/v4_$seed; mkdir -p "$wd"
  sed "s/^program_generator_seed:.*/program_generator_seed: $seed/" "$CFG" > /tmp/v4_$seed.yaml
  sudo env "PATH=$PATH" rvzr fuzz \
      -s ~/sca-fuzzer/base_x86.json \
      -c /tmp/v4_$seed.yaml \
      -n 1000 -i 100 -w "$wd" --nonstop --timeout 900
done
```

A `violation-*/` subdir under any `$wd` = a **real, hardware-confirmed store
bypass**. `program.asm` in it is the minimized leaking gadget.

## 3. Mitigated control (proves the violations are SSB, not noise)

Re-run the SAME programs with SSB mitigated — they must STOP violating. This is
the safe/leak contrast the training labels need.

```bash
# copy the config, flip the patch on
sed 's/x86_executor_enable_ssbp_patch: false/x86_executor_enable_ssbp_patch: true/' \
    oracle/revizor/demo_configs/detect-v4.yaml > /tmp/v4_ssbp_on.yaml
wd=~/rvzr_runs/v4_ssbp_on; mkdir -p "$wd"
sudo env "PATH=$PATH" rvzr fuzz -s ~/sca-fuzzer/base_x86.json \
    -c /tmp/v4_ssbp_on.yaml -n 1000 -i 100 -w "$wd" --nonstop --timeout 900
# expect: 0 violations. If a violating program from step 2 no longer violates
# here, that confirms the leak was SSB (the mitigation closes it).
```

## 4. SMT-off re-test (rule out sibling-thread leakage)

For each violation found in step 2, re-test with SMT off — a real single-thread
SSB survives; a cross-thread artifact disappears.

```bash
echo off | sudo tee /sys/devices/system/cpu/smt/control
# re-run step 2 (or reproduce a specific violation dir with `rvzr reproduce`)
echo on  | sudo tee /sys/devices/system/cpu/smt/control   # restore afterwards
```

## 5. Record + push results back

```bash
# keep only the violation artifacts (small): org-config.yaml, reproduce.yaml,
# minimize.yaml, program.asm, report.txt, input_*.bin
mkdir -p oracle/revizor/results/v4_ssb_$(date +%y%m%d)
cp -r ~/rvzr_runs/v4_*/violation-* oracle/revizor/results/v4_ssb_$(date +%y%m%d)/
git add oracle/revizor/results/v4_ssb_* && git commit -m "revizor: V4/SSB HW violations (i5-8300H)" && git push
```

Also append a short summary (n violations, which seeds, SMT-off survival,
SSBP-on control result) to `oracle/revizor/HARDWARE_VALIDATION_RESULTS.md`.

## 6. Post-run: wire the HW verdict into training labels (Mac side)

Once violation `program.asm` files are pushed back, on the Mac:
1. **Convert Intel→AT&T.** Revizor emits Intel syntax with an `r14`-relative
   sandbox (`word ptr [r14+rsi]`); v54 records are AT&T (`(%r14,%rsi)`). Convert
   (e.g. `llvm-mc`/objconv, or a small rewriter) OR add Intel operand patterns to
   the spec engine. The mnemonics already match; only operand shape differs.
2. **Build records** (mirror `gen/v4_family/build_v4_family_records.py`):
   violating program → `label=SPECTRE_V4`, non-violating / SSBP-on twin →
   `BENIGN`, carry `oracle=revizor_hw`, `oracle_leak`, provenance.
3. **Wire + train** with `gen/v4_family/build_experiment.py` (already built):
   focused (V4 vs BENIGN) then integrated (oracle vs provenance labels).

## If step 2 STILL finds 0 violations

Then SSB may not be observable under this fuzzer/CPU config even un-patched
(microcode default SSBD, or the contract/instr mix still misses the pattern).
Fallbacks, in order: (a) widen instruction set toward `big-fuzz.yaml` while
keeping `bb=1`; (b) raise `program_size`/`avg_mem_accesses` further; (c) confirm
SSBD is actually off at the microcode/kernel level (`spec_store_bypass` in
`/proc/cpuinfo` flags, `PR_GET_SPECULATION_CTRL`); (d) fall back to authoring a
known-good SSB PoC and running it through `rvzr reproduce`.
```
