.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov sil, dl
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
xchg dil, cl
or dx, 19
sub cl, -47
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], al
cmp al, dl
or al, dil
cmp si, -11
or rax, -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
