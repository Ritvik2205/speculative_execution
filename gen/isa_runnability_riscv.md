# Generator output: per-ISA architectural validity

20 samples per (class, ISA) from `generator_riscv.pt` (temperature 0.9, top-k 20, seed 0, arch-purity mask `assembler`). Rates are over SAMPLED candidates with Wilson 95% intervals.

**This is not a leak measurement.** `emulated_ok` means Unicorn executed the sequence to completion with no unhandled fault, i.e. it is real machine code. Unicorn models no speculation, no caches and no branch prediction, so it cannot say whether a sequence leaks. The point of the table is to separate *the generator cannot write valid code for this ISA* from *we have no leak oracle for this ISA*.

Emulation: enabled. `oracle_supported` is blank where no symbolic oracle covers the ISA.

| ISA | class | realized | assembles | oracle front end | emulates |
|---|---|---|---|---|---|
| x86_64 | BRANCH_HISTORY_INJECTION | 1.00 [0.84,1.00] | 1.00 [0.84,1.00] | 0.60 [0.39,0.78] | 0.60 [0.39,0.78] |
| x86_64 | INCEPTION | 1.00 [0.84,1.00] | 1.00 [0.84,1.00] | 0.70 [0.48,0.85] | 0.70 [0.48,0.85] |
| x86_64 | L1TF | 1.00 [0.84,1.00] | 1.00 [0.84,1.00] | 0.00 [-0.00,0.16] | 0.00 [-0.00,0.16] |
| x86_64 | MDS | 1.00 [0.84,1.00] | 1.00 [0.84,1.00] | 0.00 [-0.00,0.16] | 0.00 [-0.00,0.16] |
| x86_64 | RETBLEED | 1.00 [0.84,1.00] | 1.00 [0.84,1.00] | 0.70 [0.48,0.85] | 0.70 [0.48,0.85] |
| x86_64 | SPECTRE_RSB | 1.00 [0.84,1.00] | 1.00 [0.84,1.00] | 0.60 [0.39,0.78] | 0.60 [0.39,0.78] |
| x86_64 | SPECTRE_V1 | 1.00 [0.84,1.00] | 1.00 [0.84,1.00] | 0.90 [0.70,0.97] | 0.90 [0.70,0.97] |
| x86_64 | SPECTRE_V2 | 1.00 [0.84,1.00] | 1.00 [0.84,1.00] | 0.45 [0.26,0.66] | 0.45 [0.26,0.66] |
| x86_64 | SPECTRE_V4 | 1.00 [0.84,1.00] | 1.00 [0.84,1.00] | 0.70 [0.48,0.85] | 0.70 [0.48,0.85] |
| arm64 | BRANCH_HISTORY_INJECTION | 1.00 [0.84,1.00] | 1.00 [0.84,1.00] | -- | 0.75 [0.53,0.89] |
| arm64 | INCEPTION | 1.00 [0.84,1.00] | 1.00 [0.84,1.00] | -- | 0.45 [0.26,0.66] |
| arm64 | L1TF | 1.00 [0.84,1.00] | 0.95 [0.76,0.99] | -- | 0.95 [0.76,0.99] |
| arm64 | MDS | 1.00 [0.84,1.00] | 0.85 [0.64,0.95] | -- | 0.85 [0.64,0.95] |
| arm64 | RETBLEED | 1.00 [0.84,1.00] | 0.90 [0.70,0.97] | -- | 0.90 [0.70,0.97] |
| arm64 | SPECTRE_RSB | 1.00 [0.84,1.00] | 1.00 [0.84,1.00] | -- | 1.00 [0.84,1.00] |
| arm64 | SPECTRE_V1 | 0.95 [0.76,0.99] | 0.90 [0.70,0.97] | -- | 0.85 [0.64,0.95] |
| arm64 | SPECTRE_V2 | 1.00 [0.84,1.00] | 0.95 [0.76,0.99] | -- | 0.80 [0.58,0.92] |
| arm64 | SPECTRE_V4 | 1.00 [0.84,1.00] | 1.00 [0.84,1.00] | -- | 1.00 [0.84,1.00] |
| riscv64 | BRANCH_HISTORY_INJECTION | 1.00 [0.84,1.00] | 1.00 [0.84,1.00] | -- | 0.00 [-0.00,0.16] |
| riscv64 | INCEPTION | 1.00 [0.84,1.00] | 1.00 [0.84,1.00] | -- | 0.00 [-0.00,0.16] |
| riscv64 | L1TF | 1.00 [0.84,1.00] | 1.00 [0.84,1.00] | -- | 0.00 [-0.00,0.16] |
| riscv64 | MDS | 1.00 [0.84,1.00] | 1.00 [0.84,1.00] | -- | 0.00 [-0.00,0.16] |
| riscv64 | RETBLEED | 1.00 [0.84,1.00] | 1.00 [0.84,1.00] | -- | 0.00 [-0.00,0.16] |
| riscv64 | SPECTRE_RSB | 1.00 [0.84,1.00] | 1.00 [0.84,1.00] | -- | 0.05 [0.01,0.24] |
| riscv64 | SPECTRE_V1 | 1.00 [0.84,1.00] | 1.00 [0.84,1.00] | -- | 0.10 [0.03,0.30] |
| riscv64 | SPECTRE_V2 | 1.00 [0.84,1.00] | 1.00 [0.84,1.00] | -- | 0.05 [0.01,0.24] |
| riscv64 | SPECTRE_V4 | 1.00 [0.84,1.00] | 1.00 [0.84,1.00] | -- | 0.00 [-0.00,0.16] |

## Per-ISA totals

| ISA | sampled | realized | assembles | emulates | unique realized |
|---|---|---|---|---|---|
| x86_64 | 180 | 1.00 [0.98,1.00] | 1.00 [0.98,1.00] | 0.52 [0.44,0.59] | 180/180 = 1.00 |
| arm64 | 180 | 0.99 [0.97,1.00] | 0.95 [0.91,0.97] | 0.84 [0.78,0.89] | 179/179 = 1.00 |
| riscv64 | 180 | 1.00 [0.98,1.00] | 1.00 [0.98,1.00] | 0.02 [0.01,0.06] | 180/180 = 1.00 |

## Emulation outcomes (why a sequence did not run)

| ISA | outcome | count |
|---|---|---|
| x86_64 | ok | 93 |
| x86_64 | skipped | 87 |
| arm64 | ok | 151 |
| arm64 | fault_insn | 20 |
| arm64 | skipped | 8 |
| riscv64 | fault_insn | 176 |
| riscv64 | ok | 4 |

Note: the committed checkpoint was conditioned on x86_64, arm64, riscv64 only. riscv64 is supported by the code path (spec, realizer, tokenizer, emulator) but is not in this checkpoint's vocabulary, so it cannot be sampled here; that needs a generator retrained with the riscv corpus.

