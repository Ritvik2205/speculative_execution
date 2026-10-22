# Generator output: per-ISA architectural validity

40 samples per (class, ISA) from `generator.pt` (temperature 0.9, top-k 20, seed 0, arch-purity mask `off`). Rates are over SAMPLED candidates with Wilson 95% intervals.

**This is not a leak measurement.** `emulated_ok` means Unicorn executed the sequence to completion with no unhandled fault, i.e. it is real machine code. Unicorn models no speculation, no caches and no branch prediction, so it cannot say whether a sequence leaks. The point of the table is to separate *the generator cannot write valid code for this ISA* from *we have no leak oracle for this ISA*.

Emulation: enabled. `oracle_supported` is blank where no symbolic oracle covers the ISA.

| ISA | class | realized | assembles | oracle front end | emulates |
|---|---|---|---|---|---|
| x86_64 | BRANCH_HISTORY_INJECTION | 1.00 [0.91,1.00] | 1.00 [0.91,1.00] | 0.85 [0.71,0.93] | 0.85 [0.71,0.93] |
| x86_64 | INCEPTION | 1.00 [0.91,1.00] | 1.00 [0.91,1.00] | 0.88 [0.74,0.95] | 0.88 [0.74,0.95] |
| x86_64 | L1TF | 1.00 [0.91,1.00] | 1.00 [0.91,1.00] | 0.03 [0.00,0.13] | 0.03 [0.00,0.13] |
| x86_64 | MDS | 1.00 [0.91,1.00] | 1.00 [0.91,1.00] | 0.03 [0.00,0.13] | 0.03 [0.00,0.13] |
| x86_64 | RETBLEED | 1.00 [0.91,1.00] | 1.00 [0.91,1.00] | 0.95 [0.83,0.99] | 0.95 [0.83,0.99] |
| x86_64 | SPECTRE_RSB | 1.00 [0.91,1.00] | 1.00 [0.91,1.00] | 0.88 [0.74,0.95] | 0.88 [0.74,0.95] |
| x86_64 | SPECTRE_V1 | 1.00 [0.91,1.00] | 1.00 [0.91,1.00] | 0.93 [0.80,0.97] | 0.90 [0.77,0.96] |
| x86_64 | SPECTRE_V2 | 1.00 [0.91,1.00] | 1.00 [0.91,1.00] | 0.72 [0.57,0.84] | 0.72 [0.57,0.84] |
| x86_64 | SPECTRE_V4 | 1.00 [0.91,1.00] | 1.00 [0.91,1.00] | 0.95 [0.83,0.99] | 0.95 [0.83,0.99] |
| arm64 | BRANCH_HISTORY_INJECTION | 1.00 [0.91,1.00] | 1.00 [0.91,1.00] | -- | 0.65 [0.50,0.78] |
| arm64 | INCEPTION | 1.00 [0.91,1.00] | 1.00 [0.91,1.00] | -- | 0.38 [0.24,0.53] |
| arm64 | L1TF | 1.00 [0.91,1.00] | 1.00 [0.91,1.00] | -- | 0.93 [0.80,0.97] |
| arm64 | MDS | 0.95 [0.83,0.99] | 0.95 [0.83,0.99] | -- | 0.80 [0.65,0.90] |
| arm64 | RETBLEED | 1.00 [0.91,1.00] | 1.00 [0.91,1.00] | -- | 1.00 [0.91,1.00] |
| arm64 | SPECTRE_RSB | 1.00 [0.91,1.00] | 1.00 [0.91,1.00] | -- | 1.00 [0.91,1.00] |
| arm64 | SPECTRE_V1 | 0.97 [0.87,1.00] | 0.97 [0.87,1.00] | -- | 0.90 [0.77,0.96] |
| arm64 | SPECTRE_V2 | 1.00 [0.91,1.00] | 1.00 [0.91,1.00] | -- | 0.62 [0.47,0.76] |
| arm64 | SPECTRE_V4 | 1.00 [0.91,1.00] | 1.00 [0.91,1.00] | -- | 1.00 [0.91,1.00] |

## Per-ISA totals

| ISA | sampled | realized | assembles | emulates | unique realized |
|---|---|---|---|---|---|
| x86_64 | 360 | 1.00 [0.99,1.00] | 1.00 [0.99,1.00] | 0.69 [0.64,0.73] | 360/360 = 1.00 |
| arm64 | 360 | 0.99 [0.98,1.00] | 0.99 [0.98,1.00] | 0.81 [0.76,0.85] | 356/357 = 1.00 |

## Emulation outcomes (why a sequence did not run)

| ISA | outcome | count |
|---|---|---|
| x86_64 | ok | 247 |
| x86_64 | skipped | 112 |
| x86_64 | no_code | 1 |
| arm64 | ok | 291 |
| arm64 | fault_insn | 64 |
| arm64 | no_code | 2 |

Note: the committed checkpoint was conditioned on x86_64, arm64 only. riscv64 is supported by the code path (spec, realizer, tokenizer, emulator) but is not in this checkpoint's vocabulary, so it cannot be sampled here; that needs a generator retrained with the riscv corpus.

