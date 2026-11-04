# riscv64 executes via QEMU RV64GC — result (F)

Date: 2026-11-01, cluster. `gen/isa_runnability_riscv_qemu.sbatch`, gen
`generator_expanded.pt`, 60/class × 9 classes = 540, arch-purity assembler.
Backend: `qemu-riscv64` (`-fuse-ld=lld`, canary passed). Source:
`gen/isa_runnability_riscv.md`.

## Headline: diagnosis confirmed — the decode wall is removed

The gaps doc assumed riscv executes 0.02 was faulting loads; a map agent
corrected it to Unicorn's RV64I decoder (0 memory faults). This run settles it.

| outcome | Unicorn (fallback) | QEMU RV64GC (real) |
|---|---|---|
| fault_insn | 527 | **0** |
| fault_mem | 2 | **530** |
| ok | 11 | 5 |
| timeout | 0 | 5 |

- **fault_insn 527 → 0** under QEMU: the bodies are valid RV64GC; the decode
  faults were purely Unicorn's ~RV64I limit. Diagnosis confirmed.
- **executes still ~0.01** (5/540): once decodable, the gadgets fault on
  **memory** (530 fault_mem) or loop (5 timeout).

## Why executes is still low — two causes, one flagged as not-comparable

1. **Backend asymmetry (not hidden).** The Unicorn `Emulator` (x86/ARM rows,
   0.52/0.84) demand-maps faulting pages (`_on_unmapped`, ≤64). `RiscvQemuRunner`
   runs a freestanding ELF against a fixed `.bss` buffer with **no demand
   paging** → any out-of-buffer address SIGSEGVs → fault_mem. So riscv's rate is
   stricter than and **not directly comparable** to x86/ARM.
2. **Realiser address realism.** The body clobbers a seeded base register or
   strides out of the buffer — the "faulting loads" the old notes guessed, which
   were wrong for the Unicorn 0.02 (decode) but are the actual residual now.

## Status / next steps (both code)
- **F's QEMU fix = DONE and validated**: it removed the executor-decode artifact
  (its stated purpose) and isolated the real residual. Required `lld` on the
  cluster (clang+system-ld cannot link riscv64: `unrecognised emulation mode:
  elf64lriscv`); `conda install -n specexec -c conda-forge lld` fixed it.
- **F2 (new):** give `RiscvQemuRunner` demand-paging parity with the Unicorn
  path (grow the buffer / catch SIGSEGV and extend the mapping) so the riscv
  number is apples-to-apples with x86/ARM.
- **F3 (new):** riscv realiser load-base sandboxing (pin/mask the base into the
  buffer, as `oracle/spec_emulator.py` does for x86). This is the ORIGINAL F
  idea — wrong for the 0.02 (decode) but correct for the post-QEMU residual.

## Reproduce
```
conda install -n specexec -c conda-forge lld   # once; qemu is system-wide
sbatch --export=ALL,GEN=gen/generator_expanded.pt gen/isa_runnability_riscv_qemu.sbatch
```
The sbatch guard runs the canary and aborts loud if the QEMU backend is not
actually active (prevents a silent Unicorn fallback re-measuring 0.02).

## F2 + F3 implemented (2026-11-01, pending cluster validation)

- **F3 (realiser load-base sandbox) — DONE, tested local.** `spec/riscv.json`
  adds `mem_base_reg: s11` (reserved, excluded from register_pool).
  `gen/realize.py` gains `Realizer(..., sandbox_mem_base=False)`: when on, every
  `<mem>`/`<mem-idx>` base is pinned to that reserved reg, which the body never
  clobbers, so the wrapper's seeded in-sandbox value survives and the load
  lands in-buffer. Default OFF (byte-identical to prior behaviour; the flag is
  inert for ISAs with no `mem_base_reg`, e.g. x86). `isa_runnability.py
  --sandbox-mem-base` runs it as the ablation column. Tests:
  `tests/gen/test_mem_sandbox.py` (6 pass).
- **F2 (QEMU demand paging) — DONE, self-validating, pending cluster.** A
  SIGSEGV->mmap handler in the wrapper (map the faulting page, retry, cap 64)
  gives the QEMU path the Unicorn demand paging. Opt-in via
  `SPECEXEC_RISCV_DEMAND_PAGE=1` AND gated on a faulting-body canary that must
  come back `ok` on the host (qemu-user signal delivery for a static -nostdlib
  riscv ELF is the unknown); if the canary fails it falls back to the plain
  wrapper, so a broken handler cannot silently degrade a measurement. Tests:
  `tests/gen/test_riscv_qemu.py` wrapper-shape + demand-mode (pure; execution is
  cluster-only).
- **Comparability note:** both x86/ARM (Unicorn demand paging) and riscv
  (F2 demand paging and/or F3 reserved base) ensure a load hits mapped memory;
  F3 changes generator output so it is reported as an ablation column, not as
  the headline comparable number, while F2 is the exact-mechanism match.

## Run the ablation
```
# baseline + F3 sandbox column (CPU; qemu system-wide, lld in specexec):
sbatch --export=ALL,GEN=gen/generator_expanded.pt gen/isa_runnability_riscv_qemu.sbatch
# add F2 demand paging too:
sbatch --export=ALL,GEN=gen/generator_expanded.pt,DEMAND=1 gen/isa_runnability_riscv_qemu.sbatch
```
Expected: F3 (`isa_runnability_riscv_sandbox.md`) drives fault_mem -> ~0 and
executes up sharply if clobbered bases are the cause; F2 should do the same for
the baseline (random-base) run IF its canary passes on the cluster.

## Ablation result (2026-11-01, cluster) — F2 and F3 both no-op; cause reframed

Ran baseline + F3 (`--sandbox-mem-base`) + F2 (`DEMAND=1`) on `generator_expanded.pt`,
60/class. **All three are byte-identical: fault_mem 530, ok 5, timeout 5.**

- **F3 (load-base sandbox) does nothing here** — verified the realiser DOES pin
  the base to s11 (local), but the emu counts don't move, so clobbered load
  bases are NOT the fault source.
- **F2 (demand paging) does nothing here** — DEMAND=1 == DEMAND=0, so the faults
  are not RW-demand-pageable.
- **Real cause = indirect control flow.** The realiser retargets DIRECT branches
  to a safe end-label but leaves `jalr`/`ret` untouched (for RETBLEED/RSB/
  INCEPTION/BHI the indirect branch *is* the gadget). Every GPR is seeded to
  `_buf_mid` (non-exec `.bss`), so an indirect transfer fetches non-executable
  memory -> SIGSEGV -> fault_mem. F3/F2 can't touch control flow.
- **x86/ARM are not a clean baseline.** Unicorn maps its sandbox RWX; an x86 jump
  into zeroed sandbox decodes as a benign `add [mem],al` and coasts to the insn
  budget = "executes", whereas the all-zero RV64 encoding is ILLEGAL, so the
  identical pattern faults. So part of the x86 0.52 / ARM 0.84 is the forgiving
  zero-encoding, not better generation.

**Conclusion:** riscv bodies are valid RV64GC (0 decode faults). A bare
user-mode emulator cannot score a return/indirect-branch gadget without a
harness that supplies valid branch targets -- that is the job of the riscv LEAK
ORACLE, not a runnability check. F2/F3 are kept in-tree (correct, tested) but do
not address this residual. No emulator/realiser tweak raises the number; the
metric is ill-posed for indirect/return classes under this emulator.
