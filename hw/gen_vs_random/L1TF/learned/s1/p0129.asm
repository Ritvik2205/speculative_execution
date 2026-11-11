.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 48
adc dil, 120
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rbx]
adc dil, 120
jmp .bb_0.2
.bb_0.2:
xor cl, dil
and rcx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
sub dl, 105
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
