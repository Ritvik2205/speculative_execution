.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, cl
and rcx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rcx]
and dl, al
mov al, dil
add al, -32
cmp al, 75
test esi, -222751961
sbb bl, 121
cmp al, -106
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
