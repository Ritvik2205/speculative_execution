.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rsi]
xor al, -89
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
sbb al, al
and dil, -114
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 2
sbb al, 33
and cl, 86
add ebx, -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
