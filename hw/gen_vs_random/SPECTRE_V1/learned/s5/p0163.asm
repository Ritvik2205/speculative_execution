.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 55
lea bx, qword ptr [rbx]
and al, 33
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 40
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdi, qword ptr [rbx + rax]
sub al, dil
sbb edx, 105
cmovle rax, rdi
lea cx, qword ptr [rbx + rdx + 50177]
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
