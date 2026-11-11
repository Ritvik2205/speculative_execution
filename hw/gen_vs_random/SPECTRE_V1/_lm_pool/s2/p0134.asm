.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 84
cmp ebx, -33
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
lea si, qword ptr [rax]
lea bx, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 84
lea rcx, qword ptr [rbx + rdx + 93]
jl .bb_0.2
jmp .exit_0
.bb_0.2:
sbb edx, 105
cmp cl, 55
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
imul rdi, rbx, 95
sub cl, -21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
