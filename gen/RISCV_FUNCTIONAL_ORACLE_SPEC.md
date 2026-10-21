# Spec: RISC-V functional oracle (QEMU-user / Spike)

Status: **QEMU-user backend implemented** (`gen/precheck.py` `RiscvQemuRunner`,
dispatched in `PreCheck.check` for `arch == "riscv64"`; tests
`tests/gen/test_riscv_qemu.py`). Spike cross-check backend: not yet built.
Target runtime: cluster — the dev Mac has no qemu / riscv linker, so locally the
backend is inert and stage C falls back to Unicorn (fail-open, verified by test).
Needs on the cluster: `qemu-riscv64-static` + a riscv static linker
(`clang`+`ld.lld` or `riscv64-linux-gnu-gcc`). Author seam: `gen/precheck.py`
stage C.

## 1. Problem

RISC-V generation is blocked at the **functional-execution** stage, not at
generation or assembly. Current measured rates (`gen/isa_runnability_riscv.md`,
20 samples/class from `generator_riscv.pt`):

| ISA | realized | assembles | emulates |
|---|---|---|---|
| x86_64 | 1.00 | 1.00 | 0.52 |
| arm64 | 0.99 | 0.95 | 0.84 |
| **riscv64** | **1.00** | **1.00** | **0.02** |

RISC-V realizes and **assembles at 1.00** (clang/llvm-mc accept full RV64GC via
`-mattr=+m,+a,+c,+zicbom`) but **emulates at 0.02** — 176/180 come back
`fault_insn`, 0 come back `fault_mem`. So the failure is **illegal-instruction
at execution**, not the "faulting loads" the old notes assumed. The cause is the
stage-C backend: Unicorn's RISC-V support (`UC_ARCH_RISCV`, `precheck.py:322`)
executes roughly the base integer subset and raises `UC_ERR_INSN_INVALID` /
`UC_ERR_EXCEPTION` on the M/A/C/Zicbom forms the generator freely emits (and
that llvm-mc just accepted). clang assembles RV64GC; Unicorn runs ~RV64I.

Net: we cannot currently tell *"the generator cannot write valid RISC-V"* from
*"our executor cannot run valid RISC-V"*. The evidence says it is the latter.

## 2. Goal

A drop-in **functional** oracle for `arch == "riscv64"` that executes a realized
gadget to completion under a full RV64GC implementation and returns the same
outcome vocabulary stage C already uses, so riscv64 reaches the x86/arm band
(~0.5–0.84 `ok`) instead of 0.02.

**This is not a leak oracle** — same caveat as Unicorn. It models no
speculation, no caches, no branch prediction. It answers only *"is this real,
executable machine code?"*, which is the axis that is currently broken for
RISC-V. Leak labelling for RISC-V remains out of scope (no symbolic oracle
covers the ISA; building a covert-channel exfil harness is the
exploit-policy wall, explicitly out).

## 3. Backend choice

**Primary: QEMU user-mode (`qemu-riscv64` / `qemu-riscv64-static`).** Implements
RV64GC fully, runs a Linux-userspace ELF directly, no proxy kernel. Outcome is
read from exit status + terminating signal. Lowest setup cost; one binary.

**Alternative: Spike (`spike` + `pk`).** The golden functional ISA simulator,
but needs the RISC-V proxy kernel and bbl/pk plumbing, and its fault reporting
is coarser (it prints and halts). Keep as a cross-check backend only; not the
default.

Both are **functional**, not microarchitectural — correct for this oracle's job.

## 4. Harness design (QEMU-user)

Unicorn runs *flat `.text` bytes* at a mapped address with every GPR seeded to a
pointer into mapped memory (`_SEED_PTR`) and demand-maps faulting pages
(`_on_unmapped`, capped at `_EMU_MAX_DEMAND_PAGES`). QEMU-user runs a *real
process*, so replicate those three properties in a tiny freestanding ELF:

1. **Entry stub** (hand-written RV64 asm, assembled with the gadget):
   - `mmap` (or a `.bss` reservation) a large RW buffer, e.g. 256 MiB, so most
     pointer-walks land in-bounds without a per-page fault handler — the pragmatic
     stand-in for Unicorn's demand paging.
   - Set the stack pointer into the middle of that buffer; set **every** GPR
     (x1–x31 except x0) to a pointer at the buffer's midpoint — mirrors
     `_setup`'s reg seeding so the body's loads/stores have valid bases.
   - Fall through into the gadget body.
2. **Gadget body** = the realized sequence (labels kept; `.Lgen_spec_end`
   terminator already appended by the realizer where used).
3. **Exit**: after the body, `li a7, 93; li a0, 0; ecall` (RV64 `exit(0)`), so a
   gadget that runs to completion ends with a clean exit.
4. **Instruction cap**: QEMU has no "max instructions" knob like Unicorn's
   `count`. Enforce a **wall-clock timeout** on the subprocess (mirror
   `_EMU_TIMEOUT_US` → a ~0.2–1 s subprocess timeout); timeout → `timeout`.

Build the ELF statically (`clang -target riscv64 -march=rv64gc -nostdlib
-static` + `lld`, or `riscv64-linux-gnu-gcc -nostdlib -static`). Cache the
assembled body like `_assemble_obj` does, then only the link + run is per-run.

### Outcome mapping (`run(code, "riscv64") -> (outcome, detail, pages)`)

Keep the existing vocabulary so this is a drop-in for `Emulator.run`:

| QEMU result | outcome |
|---|---|
| exit code 0 (reached the `ecall`) | `ok` |
| terminated by `SIGILL` | `fault_insn` |
| terminated by `SIGSEGV` / `SIGBUS` | `fault_mem` |
| subprocess wall-clock timeout | `timeout` |
| qemu missing / link failed / spawn error | *fail open* (see §6) |
| empty body | `no_code` |

`pages` (Unicorn's demand-page count) has no QEMU analogue → return 0.

## 5. Integration seam

Minimal, additive, no change to x86/arm:

- New class `RiscvQemuRunner` in `gen/precheck.py` (or a sibling
  `gen/riscv_qemu.py` imported there) exposing `run(code, arch) -> (outcome,
  detail, pages)` with the signature of `Emulator.run`.
- In `Emulator.run` (or `PreCheck.__init__`), **dispatch on arch**: `riscv64`
  → `RiscvQemuRunner` when available; `x86_64`/`arm64` → Unicorn unchanged.
- Selection is capability-probed once (like the clang canary in
  `realize.py`): `shutil.which("qemu-riscv64")` + a one-shot "does a trivial
  `exit(0)` ELF run" canary. If either fails, **fall open**: leave stage C's
  riscv path on Unicorn (or mark `oracle_supported` blank), exactly as today —
  never hard-fail a toolchain-poor host.

No new dependency is imposed on x86/arm runs or on the dev Mac.

## 6. Fail-open / environment

Mirror the realizer's clang gate: absent `qemu-riscv64`, absent riscv linker,
or a canary that does not produce a clean `exit(0)` all disable the QEMU backend
and leave the existing behaviour untouched. The dev Mac has **no** qemu / riscv
clang backend / llvm-mc, so this backend is a **cluster-only** path; locally it
is a documented no-op and the unit tests exercise only the outcome-mapping and
canary logic (pure, no qemu needed).

## 7. Validation plan (cluster)

1. Install `qemu-user` (`qemu-riscv64-static`) + a riscv linker in the
   `specexec` env / sif.
2. Re-run `gen/isa_runnability.py` for riscv64 (the same 20/class protocol that
   produced the 0.02 number) with the QEMU backend active.
3. **Pass bar**: riscv64 `emulates` moves from 0.02 into the x86/arm band
   (≥ ~0.4 overall, i.e. the extension-illegal `fault_insn` wall is gone). The
   residual `fault_mem` / `fault_insn` then reflects *genuine* bad generator
   output, which is the real, measurable signal we want.
4. Regenerate `gen/isa_runnability_riscv.md` with the new column and note the
   backend (`emulator: qemu-riscv64`) in the header.
5. Sanity cross-check a handful with Spike; they should agree on `ok` vs fault.

## 8. Scope, non-goals, policy

- **Functional only.** No speculation, no cache timing, no covert channel. Not
  an exploit harness; in-policy (contrast the V4 silicon cross-validation, which
  needed a Flush+Reload exfil harness and was ruled out).
- Does **not** give RISC-V leak labels. Training on RISC-V still lacks a leak
  oracle; this unblocks the *runnable/valid* axis only, which is the
  prerequisite for any later RISC-V leak work.
- Pairs with the ARM/RISC-V inline validity-gate fix in `gen/realize.py`
  (`_assembles` now fires for arm64 and, where the backend exists, riscv64),
  which reduces how many ill-formed lines reach stage C in the first place.
