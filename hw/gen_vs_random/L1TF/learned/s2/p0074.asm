.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, dx
jmp .bb_0.1
.bb_0.1:
and cx, 127
inc dil
add dl, al
and al, dl
and rdi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdi]
dec al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
