.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
test al, bl
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 112
sub dl, 96
mov cl, al
adc al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
