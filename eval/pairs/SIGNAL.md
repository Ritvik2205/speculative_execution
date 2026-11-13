# Signal-awareness of the leak detectors

For each program a model calls leaking (score above 0.5), instructions are deleted for as long as the call stays "leaking" (delta debugging to 1-minimality). A reduced program with fewer than two memory-touching instructions cannot contain a transient leak, so the last column is a lower bound on how often the call does not rest on the leak. Reduced programs are shorter than anything in training; read the numbers as a probe of what the score depends on, not as accuracy.

## opcode counts, boosted (v57), 1 seed

| programs | n | called leaking | median length | median reduced length | reduced to one instruction | reduced program cannot leak |
|---|---|---|---|---|---|---|
| v57 test, labelled LEAK | 200 | 184 (0.92) | 23.0 | 1.0 | 101 | 184 (1.00) |
| v57 test, labelled SAFE | 200 | 2 (0.01) | 39.0 | 1.0 | 2 | 2 (1.00) |
| hardware programs, leaking on the i5 | 200 | 200 (1.00) | 35.0 | 2.0 | 92 | 200 (1.00) |
| hardware programs, mitigated on the i5 | 200 | 200 (1.00) | 44.0 | 1.0 | 141 | 200 (1.00) |
| injected, oracle-confirmed leaking | 200 | 0 (0.00) | nan | nan | 0 | 0 (nan) |

Most common reduced programs, v57 test, labelled LEAK: `ret` × 73, `nop ; nop ; nop ; ret` × 28, `andq ; andq ; andq` × 22, `lfence` × 15, `shlq` × 11, `andq ; andb` × 10, `andb ; andq` × 9, `nop ; nop ; ret ; nop` × 3.
Most common reduced programs, v57 test, labelled SAFE: `ret` × 1, `shlq` × 1.
Most common reduced programs, hardware programs, leaking on the i5: `lfence` × 92, `andq ; andq ; andq` × 65, `andb ; andq` × 25, `andq ; andb` × 5, `andq ; subb ; addb ; andq` × 2, `jmp ; addb ; andq ; subb` × 1, `andq ; cmpq ; addb ; andq` × 1, `testb ; andq ; addb ; leaw` × 1.
Most common reduced programs, hardware programs, mitigated on the i5: `lfence` × 141, `andq ; andq ; andq` × 39, `andb ; andq` × 7, `andq ; andb` × 6, `testb ; andq ; addb ; leaw` × 1, `andq ; addb ; subb ; andq` × 1, `jmp ; andq ; addb ; andq` × 1, `cmoveq ; andq ; subb` × 1.

## Graph model (10 seeds per arm, 60 programs per group)

Same procedure, run on the cluster (`eval/pairs/signal_gine.py`). Cells are mean ± standard deviation over the 10 seeds.
The graph model gives no prediction for a program of fewer than three instructions, so reduction stops at three: the reduced length is a floor of the pipeline, not a choice of the model.

| model | group | called leaking (of 60) | reduced program cannot leak (share of those called leaking) | median reduced length |
|---|---|---|---|---|
| graph model | v57 test, labelled LEAK | 56.0 ± 0.0 | 0.54 ± 0.02 (10 seeds) | 3.0 |
| graph model | v57 test, labelled SAFE | 1.2 ± 1.0 | 0.55 ± 0.46 (7 seeds) | 3 |
| graph model | hardware programs, leaking on the i5 | 60.0 ± 0.0 | 0.89 ± 0.02 (10 seeds) | 3.0 |
| graph model | hardware programs, mitigated on the i5 | 59.7 ± 0.9 | 0.86 ± 0.02 (10 seeds) | 3.0 |
| graph model | injected, oracle-confirmed leaking | 0.3 ± 0.7 | 0.50 ± 0.71 (2 seeds) | 3.0 |
| graph model, branch edges | v57 test, labelled LEAK | 56.0 ± 0.0 | 0.51 ± 0.03 (10 seeds) | 3.0 |
| graph model, branch edges | v57 test, labelled SAFE | 1.0 ± 0.8 | 0.43 ± 0.45 (7 seeds) | 3 |
| graph model, branch edges | hardware programs, leaking on the i5 | 60.0 ± 0.0 | 0.89 ± 0.01 (10 seeds) | 3.0 |
| graph model, branch edges | hardware programs, mitigated on the i5 | 60.0 ± 0.0 | 0.85 ± 0.02 (10 seeds) | 3.0 |
| graph model, branch edges | injected, oracle-confirmed leaking | 0.4 ± 0.7 | 0.67 ± 0.58 (3 seeds) | 3 |

Most common reduced programs (opcodes only, summed over both arms and all seeds):

- v57 test, labelled LEAK: `nop ; nop ; ret` (179), `movq ; popq ; ret` (51), `clflush ; addq ; ret` (40), `nop ; ret ; nop` (40), `addq ; popq ; ret` (35)
- v57 test, labelled SAFE: `nop ; leave ; ret` (8), `movl ; movsbl ; andl` (3), `movl ; xorl ; ret` (3), `call ; addq ; ret` (3), `popq ; popq ; ret` (1)
- hardware programs, leaking on the i5: `lfence ; lfence ; lfence` (220), `addb ; sets ; lfence` (40), `addb ; lfence ; sets` (20), `andq ; lfence ; orb` (20), `subl ; andq ; sbbb` (20)
- hardware programs, mitigated on the i5: `lfence ; orb ; lfence` (40), `xorb ; andq ; testb` (40), `lfence ; mulb ; imulq` (20), `andq ; lock ; lfence` (20), `lfence ; orl ; lfence` (20)
- injected, oracle-confirmed leaking: `movzbl ; movq ; movq` (2), `movq ; leaq ; .lgen_spec_end:` (2), `movq ; leaq ; leaq` (2), `movzbl ; popq ; popq` (1)
