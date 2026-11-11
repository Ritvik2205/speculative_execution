.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jno .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rcx, -29
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
test bl, -8
test dil, -116
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
jl .bb_0.3
jmp .exit_0
.bb_0.3:
cmp cl, sil
lea di, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
