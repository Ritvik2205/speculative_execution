# Revizor real-hardware oracle — prep + run guide

Revizor tests a **real CPU** against a leakage contract and detects speculative
leaks. It is the credible way to validate the 6 vendor-specific classes the
simulators cannot model (SPECTRE_V2, BHI, RETBLEED, INCEPTION, L1TF, MDS).

## ⚠️ Hardware requirement (read first)

Revizor's executor is a **Linux kernel module** that reads hardware performance
counters and controls speculation on the physical CPU. It therefore requires:

- **A real x86 Intel/AMD machine running Linux, with root.** Bare-metal, or a
  cloud **bare-metal** instance (e.g. AWS EC2 `*.metal`). Ordinary cloud VMs and
  containers-on-arm (this repo's dev machine is an Apple M5 / arm64) **cannot**
  run it — an emulated x86 container has no real Intel/AMD microarchitecture, so
  the leaks physically do not exist there.
- Revizor even imports `/proc/cpuinfo` at startup — it does not run on macOS at
  all. Everything here is prepared to run on the x86 Linux box.

### Per-class hardware matrix (what actually leaks where)

Many of these are microcode-mitigated on current silicon → on a fully-patched
CPU Revizor will (correctly) report **no leak**. To *confirm* a class leaks you
need matching **vulnerable** hardware (or mitigations disabled where legal/safe
for research):

| Class | Vendor | CPU generation needed | Notes |
|---|---|---|---|
| SPECTRE_V2 | Intel/AMD | most pre-mitigation x86 | BTB target injection |
| BHI | Intel | newer Intel (post-eIBRS) | branch-history injection |
| RETBLEED | Intel 6–8th gen / AMD Zen 1–2 | specific | RSB/return |
| INCEPTION | AMD Zen 1–4 | AMD only | phantom RAS (SRSO) |
| L1TF | Intel | ~Skylake/Coffee Lake, pre-2019 | terminal fault; mitigated since |
| MDS | Intel | pre-2019 Intel | fill-buffer sampling; mitigated since |

SPECTRE_V1 and SPECTRE_V4 are already double-confirmed via the simulator +
symbolic oracles (`oracle/validators/`), so they are not the target here.

## What is prepared in this repo

- `demo_configs/*.yaml` — self-contained `rvzr fuzz` campaigns (contract +
  instruction categories) for SPECTRE_V1, SPECTRE_V4, L1TF
  (`detect-foreshadow.yaml`), MDS, and INCEPTION (`tsa-sq/`, `tsa-l1d/`,
  AMD-only). No pre-written `.asm` test cases needed — these generate random
  test programs on the fly and check for contract violations. SPECTRE_V2 /
  RETBLEED have no canned config yet (per `oracle/validators/revizor_validator.py`
  — needs a hand-built fuzz campaign).
- `scripts/` — the actual working setup, run natively on an x86 host (see
  below); `oracle/validators/revizor_validator.py` — a `RevizorValidator` that
  plugs into the same cross-validation framework as Spectector/InvisiSpec,
  gated to run only on x86 hardware.
- `Dockerfile.revizor` — kept for portability to other x86 hosts, but **does
  not work out of the box on a bleeding-edge kernel** (see
  `HARDWARE_VALIDATION_RESULTS.md` — the container's toolchain can be too old
  for the flags the host kernel's Kbuild expects). On the actual target
  machine, native build is simpler; see `scripts/`.

## Run on the x86 machine (native — recommended)

```bash
# 1. install Revizor into a venv + download the full instruction spec
#    (download_spec needs --extensions ALL_SUPPORTED, or you'll get a
#    near-empty 9-instruction spec that's missing even lfence/mfence)
bash oracle/revizor/scripts/native_setup.sh

# 2. build + load the executor kernel module against the running kernel
#    (module is rvzr/executor_km/rvzr_executor.ko, NOT executor_km/x86/x86-executor.ko)
bash oracle/revizor/scripts/build_load_module.sh

# 3. run a detection campaign (working dir must already exist — rvzr won't create it)
source ~/sca-fuzzer/venv/bin/activate
mkdir -p ~/rvzr_runs/v1 && sudo env "PATH=$PATH" rvzr fuzz \
    -s ~/sca-fuzzer/base_x86.json \
    -c oracle/revizor/demo_configs/detect-v1.yaml \
    -n 200 -i 100 -w ~/rvzr_runs/v1 --nonstop
```

A detected **contract violation** = the CPU leaks under speculation for that
test case (a confirmed real-hardware leak). No violation on a patched CPU = the
mitigation holds (not a tool failure). Revizor warns if SMT is on — treat a
violation count as provisional until re-checked with SMT off
(`/sys/devices/system/cpu/smt/control`, no reboot needed) to rule out
sibling-thread noise; see `HARDWARE_VALIDATION_RESULTS.md`.

## Docker path (for a different/portable x86 host)

```bash
docker build -t revizor:pinned -f oracle/revizor/Dockerfile.revizor oracle/revizor
docker run --privileged -v /lib/modules:/lib/modules -v /usr/src:/usr/src \
    -v "$PWD":/work revizor:pinned bash
#   inside: cd /opt/revizor/rvzr/executor_km && make && insmod rvzr_executor.ko
```

Mount `/usr/src` too, not just `/lib/modules` — the `build` symlink under
`/lib/modules/<kernel>/` points there, and the module build fails without it.

## Honest status

**Executed** — see `HARDWARE_VALIDATION_RESULTS.md` for the actual run
against real i5-8300H (Coffee Lake) hardware: MDS and L1TF showed real
contract violations (MDS confirmed to survive SMT-off re-testing), SPECTRE_V1
was independently reconfirmed on real hardware (already known-good from the
simulator oracles), SPECTRE_V4 showed none this pass. SPECTRE_V2/RETBLEED and
a mitigation-off pass remain open.
