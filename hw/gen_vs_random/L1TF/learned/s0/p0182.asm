.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 14
xor cl, al
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
xor dl, sil
sbb bl, al
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], -98
movzx eax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
