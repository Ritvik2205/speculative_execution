.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -103 # instrumentation
cmovbe si, si
cmp rdx, -19
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb eax, -417098439
jp .bb_0.2
jmp .exit_0
.bb_0.2:
cmp cl, dil
add eax, -1174744897
mov bl, dil
xor al, dil
movsx rbx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
