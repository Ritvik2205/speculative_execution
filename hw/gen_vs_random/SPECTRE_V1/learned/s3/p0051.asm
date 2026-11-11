.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 47
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
adc bx, 86
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
sub dl, al
test al, -126
and rsi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rsi]
sub cl, dil
cmovl rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
