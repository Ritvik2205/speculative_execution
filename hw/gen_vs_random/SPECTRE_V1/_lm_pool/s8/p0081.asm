.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
add al, 3
jb .bb_0.1
jmp .exit_0
.bb_0.1:
xchg cl, dl
sub al, -66
or dl, 41
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
add cl, cl
sbb cl, 105
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax], 53
lea rcx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
