.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
and rax, 2134929425
lea cx, qword ptr [rax]
mov al, dl
cmp cl, 51
cmp rcx, 93
add al, -47
sub rcx, 13
cmp cl, 75
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
cmovle rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
