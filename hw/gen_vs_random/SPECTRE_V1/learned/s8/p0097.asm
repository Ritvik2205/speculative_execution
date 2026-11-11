.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 2806
adc dl, 107
inc dil
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 4
lea rcx, qword ptr [rdi]
jmp .bb_0.1
.bb_0.1:
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
sub sil, -18
lea rsi, qword ptr [rbx + rax + 83]
lea ax, qword ptr [rdi]
inc eax
lea rdx, qword ptr [rcx + rsi + 7]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
