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

## What is prepared in this repo (runs the moment you have x86 HW)

- `Dockerfile.revizor` — an x86 image with Revizor installed and the x86-64 ISA
  spec downloaded. Build/run it **on your x86 Linux host**.
- `config.yaml` — contract + executor config (set `executor: x86-64-intel` or
  `x86-64-amd` per your CPU).
- `testcases/` — our attack classes expressed as Revizor test cases (see
  `testcases/README.md`); use with `rvzr reproduce`.
- `oracle/validators/revizor_validator.py` — a `RevizorValidator` that plugs into
  the same cross-validation framework as Spectector/InvisiSpec, gated to run only
  on x86 hardware.

## Run on the x86 machine

```bash
# 1. build the image on the x86 host
docker build -t revizor:pinned -f oracle/revizor/Dockerfile.revizor oracle/revizor

# 2. run privileged so the executor kernel module can load + read perf counters
docker run --privileged -v /lib/modules:/lib/modules -v "$PWD":/work revizor:pinned bash

#   inside, build + load the executor kernel module (matches the host kernel):
cd /opt/revizor/rvzr/executor_km/x86 && make && insmod x86-executor.ko

# 3. reproduce a specific attack test case against the CPU
rvzr reproduce -s /opt/revizor/base_x86.json -c /work/oracle/revizor/config.yaml \
    -t /work/oracle/revizor/testcases/spectre_v2.asm -i 100

#   Or fuzz to search for leaks of a contract:
rvzr fuzz -s /opt/revizor/base_x86.json -c /work/oracle/revizor/config.yaml -n 100 -i 10 -w ./violations
```

A detected **contract violation** = the CPU leaks under speculation for that
test case (a confirmed real-hardware leak). No violation on a patched CPU = the
mitigation holds (not a tool failure).

## Honest status

This prep is **plug-and-run pending x86 hardware**. On the Apple-Silicon dev
machine only the hardware-free **model backend** (Unicorn) can be exercised as a
smoke test; the real leak confirmation requires the physical Intel/AMD CPU.
