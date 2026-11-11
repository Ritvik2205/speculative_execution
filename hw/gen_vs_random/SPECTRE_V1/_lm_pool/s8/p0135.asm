.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
sbb dl, 127
cmp rax, 1189904463
and bl, 124
sbb cl, dil
cmp cl, al
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and dl, dl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
test dil, -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
