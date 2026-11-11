.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bl
sub al, -89
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
or cl, bl
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
js .bb_0.3
jmp .exit_0
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 70
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rcx]
lea rcx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
