.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, cl
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
or al, dil
or sil, -47
neg bl
add dil, -84
or dx, 22
movsx cx, dl
sbb dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
