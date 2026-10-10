# Pre-oracle gate: does it pay?

Samples: 4379 rows with a Spectector verdict -> 3921 unique realized sequences after dedupe (2 dropped for conflicting verdicts). LEAK 1974 / SAFE 277 / UNRUNNABLE 1670.

Stated target, fixed before measuring: remove $\geq$ 80% of UNRUNNABLE while losing $\leq$ 2% of LEAK.

Emulation stage: ENABLED. Rates carry Wilson 95% intervals.

**Ceiling to keep in mind:** these sidecars are post-realizer, and the realizer already drops instructions that do not assemble, so stage A is near-saturated here by construction. Its measured contribution is a lower bound on its value for raw generator output.

| rule | unrunnable removed | leak lost | safe lost | calls saved | retained adjudicable |
|---|---|---|---|---|---|
| A: assembles | 0.000 [-0.000,0.002] 0/1670 | 0.000 [-0.000,0.002] 0/1974 | 0.000 [0.000,0.014] 0/277 | 0.000 [-0.000,0.001] 0/3921 | 0.574 (2251/3921) |
| B: oracle front end | 0.174 [0.157,0.193] 291/1670 | 0.008 [0.005,0.013] 15/1974 | 0.054 [0.033,0.087] 15/277 | 0.082 [0.074,0.091] 321/3921 | 0.617 (2221/3600) |
| C: emulates | 0.008 [0.005,0.013] 13/1670 | 0.006 [0.003,0.010] 11/1974 | 0.000 [0.000,0.014] 0/277 | 0.006 [0.004,0.009] 24/3921 | 0.575 (2240/3897) |
| A+B | 0.174 [0.157,0.193] 291/1670 | 0.008 [0.005,0.013] 15/1974 | 0.054 [0.033,0.087] 15/277 | 0.082 [0.074,0.091] 321/3921 | 0.617 (2221/3600) |
| A+B+C (full gate) | 0.182 [0.164,0.201] 304/1670 | 0.013 [0.009,0.019] 26/1974 | 0.054 [0.033,0.087] 15/277 | 0.088 [0.080,0.097] 345/3921 | 0.618 (2210/3576) |

Base rate without any gate: 0.574 (2251/3921) of oracle calls return a verdict.

**Target NOT MET:** the full gate removes 18.2% of UNRUNNABLE (target $\geq$ 80%) and loses 1.3% of LEAK (target $\leq$ 2%).

## Full gate by class

| class | n | unrunnable removed | leak lost |
|---|---|---|---|
| RETBLEED | 600 | 0.120 [0.097,0.149] 72/599 | n/a |
| SPECTRE_V1 | 2185 | 0.122 [0.096,0.154] 59/484 | 0.015 [0.010,0.022] 26/1701 |
| SPECTRE_V2 | 600 | 0.276 [0.239,0.316] 141/511 | n/a |
| SPECTRE_V4 | 536 | 0.421 [0.316,0.533] 32/76 | 0.000 [0.000,0.014] 0/273 |

## Full gate by RL round

| RL round | n | unrunnable removed | leak lost |
|---|---|---|---|
| 0 | 746 | 0.249 [0.210,0.292] 105/422 | 0.018 [0.007,0.044] 4/227 |
| 1 | 800 | 0.143 [0.111,0.183] 52/363 | 0.008 [0.003,0.024] 3/363 |
| 2 | 797 | 0.173 [0.136,0.218] 56/324 | 0.023 [0.012,0.041] 10/442 |
| 3 | 771 | 0.165 [0.127,0.213] 47/284 | 0.013 [0.006,0.029] 6/446 |
| 4 | 807 | 0.159 [0.121,0.207] 44/277 | 0.006 [0.002,0.018] 3/496 |

## Stage outcomes by verdict

| verdict | assembles=False | unsupported on live path | emulation outcome |
|---|---|---|---|
| leak | 0/1974 | 15/1974 | ok 1948, skipped 15, fault_insn 9, no_code 2 |
| safe | 0/277 | 15/277 | ok 262, skipped 15 |
| unrunnable | 0/1670 | 291/1670 | ok 1366, skipped 291, no_code 12, fault_insn 1 |

## What stage B rejects (mnemonic on the reachable path, all verdicts)

| mnemonic | count |
|---|---|
| `endbr64` | 241 |
| `rdtsc` | 77 |
| `clflush` | 45 |
| `syscall` | 23 |
| `rdtscp` | 12 |
| `cpuid` | 7 |
| `clflushopt` | 5 |
| `prefetcht0` | 5 |
| `prefetchnta` | 4 |
| `xend` | 4 |
| `jnc` | 3 |
| `add` | 1 |

These are instructions Spectector's x86 table genuinely lacks. `bt`/`bts`/`btr`/`btc` are present in its source but commented out, and `rdtsc`, `verw` and `movntdqa` are absent entirely -- which is also why the symbolic oracle cannot adjudicate the MDS and L1TF families at all.

