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
