.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 84
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rdi]
cmp cl, sil
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
and cl, bl
lea bx, qword ptr [rdx + rax]
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
sbb al, 104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
