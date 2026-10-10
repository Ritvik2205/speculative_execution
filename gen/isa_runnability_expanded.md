# Generator output: per-ISA architectural validity

24 samples per (class, ISA) from `generator_expanded.pt` (temperature 0.9, top-k 20, seed 0, arch-purity mask `assembler`). Rates are over SAMPLED candidates with Wilson 95% intervals.

**This is not a leak measurement.** `emulated_ok` means Unicorn executed the sequence to completion with no unhandled fault, i.e. it is real machine code. Unicorn models no speculation, no caches and no branch prediction, so it cannot say whether a sequence leaks. The point of the table is to separate *the generator cannot write valid code for this ISA* from *we have no leak oracle for this ISA*.

Emulation: enabled. `oracle_supported` is blank where no symbolic oracle covers the ISA.

| ISA | class | realized | assembles | oracle front end | emulates |
|---|---|---|---|---|---|
| x86_64 | BRANCH_HISTORY_INJECTION | 1.00 [0.86,1.00] | 1.00 [0.86,1.00] | 0.71 [0.51,0.85] | 0.71 [0.51,0.85] |
| x86_64 | INCEPTION | 1.00 [0.86,1.00] | 1.00 [0.86,1.00] | 0.83 [0.64,0.93] | 0.83 [0.64,0.93] |
| x86_64 | L1TF | 1.00 [0.86,1.00] | 1.00 [0.86,1.00] | 0.46 [0.28,0.65] | 0.08 [0.02,0.26] |
| x86_64 | MDS | 1.00 [0.86,1.00] | 1.00 [0.86,1.00] | 0.33 [0.18,0.53] | 0.00 [0.00,0.14] |
| x86_64 | RETBLEED | 1.00 [0.86,1.00] | 1.00 [0.86,1.00] | 0.75 [0.55,0.88] | 0.71 [0.51,0.85] |
| x86_64 | SPECTRE_RSB | 1.00 [0.86,1.00] | 1.00 [0.86,1.00] | 0.58 [0.39,0.76] | 0.58 [0.39,0.76] |
| x86_64 | SPECTRE_V1 | 1.00 [0.86,1.00] | 1.00 [0.86,1.00] | 0.96 [0.80,0.99] | 0.79 [0.60,0.91] |
| x86_64 | SPECTRE_V2 | 1.00 [0.86,1.00] | 1.00 [0.86,1.00] | 0.67 [0.47,0.82] | 0.67 [0.47,0.82] |
| x86_64 | SPECTRE_V4 | 1.00 [0.86,1.00] | 1.00 [0.86,1.00] | 0.75 [0.55,0.88] | 0.54 [0.35,0.72] |
| arm64 | BRANCH_HISTORY_INJECTION | 1.00 [0.86,1.00] | 1.00 [0.86,1.00] | -- | 0.71 [0.51,0.85] |
| arm64 | INCEPTION | 1.00 [0.86,1.00] | 0.92 [0.74,0.98] | -- | 0.46 [0.28,0.65] |
| arm64 | L1TF | 1.00 [0.86,1.00] | 0.92 [0.74,0.98] | -- | 0.92 [0.74,0.98] |
| arm64 | MDS | 1.00 [0.86,1.00] | 0.88 [0.69,0.96] | -- | 0.88 [0.69,0.96] |
| arm64 | RETBLEED | 1.00 [0.86,1.00] | 1.00 [0.86,1.00] | -- | 0.88 [0.69,0.96] |
| arm64 | SPECTRE_RSB | 1.00 [0.86,1.00] | 1.00 [0.86,1.00] | -- | 0.96 [0.80,0.99] |
| arm64 | SPECTRE_V1 | 1.00 [0.86,1.00] | 0.88 [0.69,0.96] | -- | 0.88 [0.69,0.96] |
| arm64 | SPECTRE_V2 | 1.00 [0.86,1.00] | 1.00 [0.86,1.00] | -- | 0.88 [0.69,0.96] |
| arm64 | SPECTRE_V4 | 1.00 [0.86,1.00] | 1.00 [0.86,1.00] | -- | 1.00 [0.86,1.00] |
| riscv64 | BRANCH_HISTORY_INJECTION | 1.00 [0.86,1.00] | 1.00 [0.86,1.00] | -- | 0.00 [0.00,0.14] |
| riscv64 | INCEPTION | 1.00 [0.86,1.00] | 1.00 [0.86,1.00] | -- | 0.00 [0.00,0.14] |
| riscv64 | L1TF | 1.00 [0.86,1.00] | 1.00 [0.86,1.00] | -- | 0.00 [0.00,0.14] |
| riscv64 | MDS | 1.00 [0.86,1.00] | 1.00 [0.86,1.00] | -- | 0.00 [0.00,0.14] |
| riscv64 | RETBLEED | 1.00 [0.86,1.00] | 1.00 [0.86,1.00] | -- | 0.00 [0.00,0.14] |
| riscv64 | SPECTRE_RSB | 1.00 [0.86,1.00] | 1.00 [0.86,1.00] | -- | 0.00 [0.00,0.14] |
| riscv64 | SPECTRE_V1 | 1.00 [0.86,1.00] | 1.00 [0.86,1.00] | -- | 0.12 [0.04,0.31] |
| riscv64 | SPECTRE_V2 | 1.00 [0.86,1.00] | 1.00 [0.86,1.00] | -- | 0.00 [0.00,0.14] |
| riscv64 | SPECTRE_V4 | 1.00 [0.86,1.00] | 1.00 [0.86,1.00] | -- | 0.00 [0.00,0.14] |

## Per-ISA totals

| ISA | sampled | realized | assembles | emulates | unique realized |
|---|---|---|---|---|---|
| x86_64 | 216 | 1.00 [0.98,1.00] | 1.00 [0.98,1.00] | 0.55 [0.48,0.61] | 216/216 = 1.00 |
| arm64 | 216 | 1.00 [0.98,1.00] | 0.95 [0.92,0.97] | 0.84 [0.78,0.88] | 216/216 = 1.00 |
| riscv64 | 216 | 1.00 [0.98,1.00] | 1.00 [0.98,1.00] | 0.01 [0.00,0.04] | 216/216 = 1.00 |

## Emulation outcomes (why a sequence did not run)

| ISA | outcome | count |
|---|---|---|
| x86_64 | ok | 118 |
| x86_64 | skipped | 71 |
| x86_64 | fault_insn | 27 |
| arm64 | ok | 181 |
| arm64 | fault_insn | 23 |
| arm64 | skipped | 10 |
| arm64 | no_code | 2 |
| riscv64 | fault_insn | 213 |
| riscv64 | ok | 3 |

Note: the committed checkpoint was conditioned on x86_64, arm64, riscv64 only. riscv64 is supported by the code path (spec, realizer, tokenizer, emulator) but is not in this checkpoint's vocabulary, so it cannot be sampled here; that needs a generator retrained with the riscv corpus.

