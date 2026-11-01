# Generator output: per-ISA architectural validity

60 samples per (class, ISA) from `generator_expanded.pt` (temperature 0.9, top-k 20, seed 0, arch-purity mask `assembler`). Rates are over SAMPLED candidates with Wilson 95% intervals.

**This is not a leak measurement.** `emulated_ok` means Unicorn executed the sequence to completion with no unhandled fault, i.e. it is real machine code. Unicorn models no speculation, no caches and no branch prediction, so it cannot say whether a sequence leaks. The point of the table is to separate *the generator cannot write valid code for this ISA* from *we have no leak oracle for this ISA*.

Emulation: enabled. `oracle_supported` is blank where no symbolic oracle covers the ISA.

| ISA | class | realized | assembles | oracle front end | emulates |
|---|---|---|---|---|---|
| riscv64 | BRANCH_HISTORY_INJECTION | 1.00 [0.94,1.00] | 1.00 [0.94,1.00] | -- | 0.02 [0.00,0.09] |
| riscv64 | INCEPTION | 1.00 [0.94,1.00] | 1.00 [0.94,1.00] | -- | 0.05 [0.02,0.14] |
| riscv64 | L1TF | 1.00 [0.94,1.00] | 1.00 [0.94,1.00] | -- | 0.00 [-0.00,0.06] |
| riscv64 | MDS | 1.00 [0.94,1.00] | 1.00 [0.94,1.00] | -- | 0.00 [-0.00,0.06] |
| riscv64 | RETBLEED | 1.00 [0.94,1.00] | 1.00 [0.94,1.00] | -- | 0.02 [0.00,0.09] |
| riscv64 | SPECTRE_RSB | 1.00 [0.94,1.00] | 1.00 [0.94,1.00] | -- | 0.00 [-0.00,0.06] |
| riscv64 | SPECTRE_V1 | 1.00 [0.94,1.00] | 1.00 [0.94,1.00] | -- | 0.00 [-0.00,0.06] |
| riscv64 | SPECTRE_V2 | 1.00 [0.94,1.00] | 1.00 [0.94,1.00] | -- | 0.00 [-0.00,0.06] |
| riscv64 | SPECTRE_V4 | 1.00 [0.94,1.00] | 1.00 [0.94,1.00] | -- | 0.00 [-0.00,0.06] |

## Per-ISA totals

| ISA | sampled | realized | assembles | emulates | unique realized |
|---|---|---|---|---|---|
| riscv64 | 540 | 1.00 [0.99,1.00] | 1.00 [0.99,1.00] | 0.01 [0.00,0.02] | 539/540 = 1.00 |

## Emulation outcomes (why a sequence did not run)

| ISA | outcome | count |
|---|---|---|
| riscv64 | fault_mem | 530 |
| riscv64 | ok | 5 |
| riscv64 | timeout | 5 |

Note: the committed checkpoint was conditioned on x86_64, arm64, riscv64 only. riscv64 is supported by the code path (spec, realizer, tokenizer, emulator) but is not in this checkpoint's vocabulary, so it cannot be sampled here; that needs a generator retrained with the riscv corpus.

