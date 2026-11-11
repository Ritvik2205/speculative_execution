.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
cmp rsi, 53
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
cmp dil, sil
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
sbb eax, 1830317432
lea rcx, qword ptr [rdi]
not di
jnz .bb_0.3
jmp .exit_0
.bb_0.3:
sbb rsi, 35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
