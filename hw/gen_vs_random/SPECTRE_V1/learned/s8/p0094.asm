.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
sbb cl, 105
cmovnle rax, rsi
sbb dl, dil
inc bl
or ecx, 11
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
xor ecx, 32
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 82
xchg sil, cl
and cl, 86
add cx, -103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
