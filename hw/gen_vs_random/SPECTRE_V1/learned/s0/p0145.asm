.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 21910
and cl, sil
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnle .bb_0.3
jmp .bb_0.4
.bb_0.3:
adc ax, -614
jnle .bb_0.4
jmp .exit_0
.bb_0.4:
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
cmp rcx, 1
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
lea rax, qword ptr [rsi]
jns .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
