.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
lea dx, qword ptr [rax]
and cl, -57
sub sil, al
lea ax, qword ptr [rbx]
sub al, cl
and rbx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
