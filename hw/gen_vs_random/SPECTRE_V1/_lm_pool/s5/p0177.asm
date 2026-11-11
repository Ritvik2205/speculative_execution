.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -127
sub sil, -18
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
jnle .bb_0.4
jmp .bb_0.5
.bb_0.4:
jle .bb_0.5
jmp .bb_0.6
.bb_0.5:
jnp .bb_0.6
jmp .exit_0
.bb_0.6:
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
