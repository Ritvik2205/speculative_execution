.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rax, rsi
sbb eax, -403815802
and ax, 37
and bl, 89
test cl, 92
jmp .bb_0.1
.bb_0.1:
jp .bb_0.2
jmp .exit_0
.bb_0.2:
xor al, cl
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
and rcx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rcx]
dec dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
