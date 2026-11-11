.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, cl
xor sil, 94
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 6
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
or bl, cl
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
xor al, 9
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
xor bl, sil
xor cl, 24
xor rax, -843636050
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
