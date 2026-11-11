.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rcx]
add dil, dil
lea rdx, qword ptr [rax + rdi]
jmp .bb_0.1
.bb_0.1:
sub dl, cl
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
sub al, cl
lea cx, qword ptr [rax + rdi + 11]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
