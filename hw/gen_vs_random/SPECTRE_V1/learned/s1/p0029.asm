.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 6
sub dil, -111
sub al, dil
jmp .bb_0.1
.bb_0.1:
adc sil, -77
jmp .bb_0.2
.bb_0.2:
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
xchg edx, eax
cmovnbe rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
