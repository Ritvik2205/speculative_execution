.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rdx, -19
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
setnb al
sbb bl, 79
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
sbb al, 49
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
