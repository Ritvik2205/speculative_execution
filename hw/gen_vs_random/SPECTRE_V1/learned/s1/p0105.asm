.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 47
test sil, 47
mov cl, al
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
test bl, -8
mov dil, cl
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
or rax, -3
sub al, -1
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
jle .bb_0.2
jmp .exit_0
.bb_0.2:
sub cl, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
