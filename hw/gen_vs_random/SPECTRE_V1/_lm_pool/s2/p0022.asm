.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
sub cl, sil
add sil, sil
sbb al, sil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -127
mov cl, sil
lea cx, qword ptr [rdx]
lea bx, qword ptr [rdx + rdi + 22131]
adc al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
