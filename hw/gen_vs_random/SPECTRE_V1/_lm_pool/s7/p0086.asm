.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 23118
lea cx, qword ptr [rdx]
and dil, 98
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
sub sil, cl
lea rbx, qword ptr [rsi + rdx + 43294]
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
add al, sil
lea rax, qword ptr [rbx + rsi + 39]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea rax, qword ptr [rdx]
xor cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
