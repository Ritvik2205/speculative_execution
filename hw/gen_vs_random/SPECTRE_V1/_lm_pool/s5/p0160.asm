.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 47
cmp sil, dil
add bl, dl
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
cmp cl, 67
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and dl, -109
and dl, -92
jle .bb_0.3
jmp .exit_0
.bb_0.3:
sbb al, dil
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
