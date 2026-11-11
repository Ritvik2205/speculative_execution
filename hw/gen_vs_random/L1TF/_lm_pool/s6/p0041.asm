.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 7954
lea rbx, qword ptr [rdi + rdx + 42]
lea rbx, qword ptr [rsi + rax]
or di, 88
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb al, cl
jl .bb_0.2
jmp .exit_0
.bb_0.2:
add cl, 88
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
