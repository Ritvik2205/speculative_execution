# Generator output: per-ISA architectural validity

40 samples per (class, ISA) from `generator.pt` (temperature 0.9, top-k 20, seed 0, arch-purity mask `off`). Rates are over SAMPLED candidates with Wilson 95% intervals.

**This is not a leak measurement.** `emulated_ok` means Unicorn executed the sequence to completion with no unhandled fault, i.e. it is real machine code. Unicorn models no speculation, no caches and no branch prediction, so it cannot say whether a sequence leaks. The point of the table is to separate *the generator cannot write valid code for this ISA* from *we have no leak oracle for this ISA*.

Emulation: enabled. `oracle_supported` is blank where no symbolic oracle covers the ISA.

| ISA | class | realized | assembles | oracle front end | emulates |
|---|---|---|---|---|---|
| x86_64 | BRANCH_HISTORY_INJECTION | 1.00 [0.91,1.00] | 1.00 [0.91,1.00] | 0.78 [0.62,0.88] | 0.75 [0.60,0.86] |
| x86_64 | INCEPTION | 1.00 [0.91,1.00] | 1.00 [0.91,1.00] | 0.85 [0.71,0.93] | 0.85 [0.71,0.93] |
| x86_64 | L1TF | 1.00 [0.91,1.00] | 1.00 [0.91,1.00] | 0.03 [0.00,0.13] | 0.03 [0.00,0.13] |
| x86_64 | MDS | 1.00 [0.91,1.00] | 1.00 [0.91,1.00] | 0.05 [0.01,0.17] | 0.05 [0.01,0.17] |
| x86_64 | RETBLEED | 1.00 [0.91,1.00] | 1.00 [0.91,1.00] | 0.88 [0.74,0.95] | 0.88 [0.74,0.95] |
| x86_64 | SPECTRE_RSB | 1.00 [0.91,1.00] | 1.00 [0.91,1.00] | 0.78 [0.62,0.88] | 0.78 [0.62,0.88] |
| x86_64 | SPECTRE_V1 | 0.95 [0.83,0.99] | 0.95 [0.83,0.99] | 0.88 [0.74,0.95] | 0.85 [0.71,0.93] |
| x86_64 | SPECTRE_V2 | 1.00 [0.91,1.00] | 1.00 [0.91,1.00] | 0.70 [0.55,0.82] | 0.70 [0.55,0.82] |
| x86_64 | SPECTRE_V4 | 1.00 [0.91,1.00] | 1.00 [0.91,1.00] | 0.72 [0.57,0.84] | 0.72 [0.57,0.84] |
| arm64 | BRANCH_HISTORY_INJECTION | 1.00 [0.91,1.00] | 0.25 [0.14,0.40] | -- | 0.20 [0.10,0.35] |
| arm64 | INCEPTION | 1.00 [0.91,1.00] | 0.40 [0.26,0.55] | -- | 0.35 [0.22,0.50] |
| arm64 | L1TF | 1.00 [0.91,1.00] | 0.10 [0.04,0.23] | -- | 0.10 [0.04,0.23] |
| arm64 | MDS | 1.00 [0.91,1.00] | 0.10 [0.04,0.23] | -- | 0.10 [0.04,0.23] |
| arm64 | RETBLEED | 1.00 [0.91,1.00] | 0.20 [0.10,0.35] | -- | 0.15 [0.07,0.29] |
| arm64 | SPECTRE_RSB | 1.00 [0.91,1.00] | 0.30 [0.18,0.45] | -- | 0.30 [0.18,0.45] |
| arm64 | SPECTRE_V1 | 1.00 [0.91,1.00] | 0.62 [0.47,0.76] | -- | 0.62 [0.47,0.76] |
| arm64 | SPECTRE_V2 | 1.00 [0.91,1.00] | 0.50 [0.35,0.65] | -- | 0.42 [0.29,0.58] |
| arm64 | SPECTRE_V4 | 1.00 [0.91,1.00] | 0.03 [0.00,0.13] | -- | 0.03 [0.00,0.13] |

## Per-ISA totals

| ISA | sampled | realized | assembles | emulates | unique realized |
|---|---|---|---|---|---|
| x86_64 | 360 | 0.99 [0.98,1.00] | 0.99 [0.98,1.00] | 0.62 [0.57,0.67] | 358/358 = 1.00 |
| arm64 | 360 | 1.00 [0.99,1.00] | 0.28 [0.23,0.33] | 0.25 [0.21,0.30] | 360/360 = 1.00 |

## Emulation outcomes (why a sequence did not run)

| ISA | outcome | count |
|---|---|---|
| x86_64 | ok | 224 |
| x86_64 | skipped | 132 |
| x86_64 | fault_insn | 1 |
| x86_64 | no_code | 1 |
| arm64 | skipped | 260 |
| arm64 | ok | 91 |
| arm64 | fault_insn | 6 |
| arm64 | no_code | 3 |

Note: the committed checkpoint was conditioned on x86_64, arm64 only. riscv64 is supported by the code path (spec, realizer, tokenizer, emulator) but is not in this checkpoint's vocabulary, so it cannot be sampled here; that needs a generator retrained with the riscv corpus.

