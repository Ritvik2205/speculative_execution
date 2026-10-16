# Generator output: per-ISA architectural validity

30 samples per (class, ISA) from `generator_lencond_x.pt` (temperature 0.9, top-k 20, seed 0, arch-purity mask `assembler`). Rates are over SAMPLED candidates with Wilson 95% intervals.

**This is not a leak measurement.** `emulated_ok` means Unicorn executed the sequence to completion with no unhandled fault, i.e. it is real machine code. Unicorn models no speculation, no caches and no branch prediction, so it cannot say whether a sequence leaks. The point of the table is to separate *the generator cannot write valid code for this ISA* from *we have no leak oracle for this ISA*.

Emulation: DISABLED (unicorn missing). `oracle_supported` is blank where no symbolic oracle covers the ISA.

| ISA | class | realized | assembles | oracle front end | emulates |
|---|---|---|---|---|---|
| x86_64 | BRANCH_HISTORY_INJECTION | 1.00 [0.89,1.00] | 1.00 [0.89,1.00] | 0.70 [0.52,0.83] | 0.00 [-0.00,0.11] |
| x86_64 | INCEPTION | 1.00 [0.89,1.00] | 1.00 [0.89,1.00] | 0.87 [0.70,0.95] | 0.00 [-0.00,0.11] |
| x86_64 | L1TF | 0.97 [0.83,0.99] | 0.97 [0.83,0.99] | 0.07 [0.02,0.21] | 0.00 [-0.00,0.11] |
| x86_64 | MDS | 1.00 [0.89,1.00] | 1.00 [0.89,1.00] | 0.30 [0.17,0.48] | 0.00 [-0.00,0.11] |
| x86_64 | RETBLEED | 1.00 [0.89,1.00] | 1.00 [0.89,1.00] | 0.90 [0.74,0.97] | 0.00 [-0.00,0.11] |
| x86_64 | SPECTRE_RSB | 1.00 [0.89,1.00] | 1.00 [0.89,1.00] | 0.73 [0.56,0.86] | 0.00 [-0.00,0.11] |
| x86_64 | SPECTRE_V1 | 1.00 [0.89,1.00] | 1.00 [0.89,1.00] | 0.90 [0.74,0.97] | 0.00 [-0.00,0.11] |
| x86_64 | SPECTRE_V2 | 1.00 [0.89,1.00] | 1.00 [0.89,1.00] | 0.57 [0.39,0.73] | 0.00 [-0.00,0.11] |
| x86_64 | SPECTRE_V4 | 1.00 [0.89,1.00] | 1.00 [0.89,1.00] | 0.70 [0.52,0.83] | 0.00 [-0.00,0.11] |
| arm64 | BRANCH_HISTORY_INJECTION | 1.00 [0.89,1.00] | 0.93 [0.79,0.98] | -- | 0.00 [-0.00,0.11] |
| arm64 | INCEPTION | 1.00 [0.89,1.00] | 1.00 [0.89,1.00] | -- | 0.00 [-0.00,0.11] |
| arm64 | L1TF | 0.97 [0.83,0.99] | 0.93 [0.79,0.98] | -- | 0.00 [-0.00,0.11] |
| arm64 | MDS | 1.00 [0.89,1.00] | 1.00 [0.89,1.00] | -- | 0.00 [-0.00,0.11] |
| arm64 | RETBLEED | 1.00 [0.89,1.00] | 0.97 [0.83,0.99] | -- | 0.00 [-0.00,0.11] |
| arm64 | SPECTRE_RSB | 1.00 [0.89,1.00] | 1.00 [0.89,1.00] | -- | 0.00 [-0.00,0.11] |
| arm64 | SPECTRE_V1 | 0.97 [0.83,0.99] | 0.93 [0.79,0.98] | -- | 0.00 [-0.00,0.11] |
| arm64 | SPECTRE_V2 | 1.00 [0.89,1.00] | 0.97 [0.83,0.99] | -- | 0.00 [-0.00,0.11] |
| arm64 | SPECTRE_V4 | 1.00 [0.89,1.00] | 1.00 [0.89,1.00] | -- | 0.00 [-0.00,0.11] |
| riscv64 | BRANCH_HISTORY_INJECTION | 1.00 [0.89,1.00] | 1.00 [0.89,1.00] | -- | 0.00 [-0.00,0.11] |
| riscv64 | INCEPTION | 1.00 [0.89,1.00] | 1.00 [0.89,1.00] | -- | 0.00 [-0.00,0.11] |
| riscv64 | L1TF | 1.00 [0.89,1.00] | 1.00 [0.89,1.00] | -- | 0.00 [-0.00,0.11] |
| riscv64 | MDS | 1.00 [0.89,1.00] | 1.00 [0.89,1.00] | -- | 0.00 [-0.00,0.11] |
| riscv64 | RETBLEED | 1.00 [0.89,1.00] | 1.00 [0.89,1.00] | -- | 0.00 [-0.00,0.11] |
| riscv64 | SPECTRE_RSB | 1.00 [0.89,1.00] | 1.00 [0.89,1.00] | -- | 0.00 [-0.00,0.11] |
| riscv64 | SPECTRE_V1 | 1.00 [0.89,1.00] | 1.00 [0.89,1.00] | -- | 0.00 [-0.00,0.11] |
| riscv64 | SPECTRE_V2 | 1.00 [0.89,1.00] | 1.00 [0.89,1.00] | -- | 0.00 [-0.00,0.11] |
| riscv64 | SPECTRE_V4 | 1.00 [0.89,1.00] | 1.00 [0.89,1.00] | -- | 0.00 [-0.00,0.11] |

## Per-ISA totals

| ISA | sampled | realized | assembles | emulates | unique realized |
|---|---|---|---|---|---|
| x86_64 | 270 | 1.00 [0.98,1.00] | 1.00 [0.98,1.00] | 0.00 [0.00,0.01] | 269/269 = 1.00 |
| arm64 | 270 | 0.99 [0.97,1.00] | 0.97 [0.94,0.98] | 0.00 [0.00,0.01] | 268/268 = 1.00 |
| riscv64 | 270 | 1.00 [0.99,1.00] | 1.00 [0.99,1.00] | 0.00 [0.00,0.01] | 269/270 = 1.00 |

## Emulation outcomes (why a sequence did not run)

| ISA | outcome | count |
|---|---|---|
| x86_64 | skipped | 269 |
| arm64 | skipped | 268 |
| riscv64 | skipped | 270 |

Note: the committed checkpoint was conditioned on x86_64, arm64, riscv64 only. riscv64 is supported by the code path (spec, realizer, tokenizer, emulator) but is not in this checkpoint's vocabulary, so it cannot be sampled here; that needs a generator retrained with the riscv corpus.

