.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dil
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
add dil, -75
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, 62
cmovle si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
