.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
or ebx, 49
add al, al
and rax, -109
and sil, dl
bt rdx, rax
jmp .bb_0.1
.bb_0.1:
setle al
xor cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
