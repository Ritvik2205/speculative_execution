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
