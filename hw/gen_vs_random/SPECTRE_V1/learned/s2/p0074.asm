.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, dil
sbb cl, 105
sbb dil, -106
mov sil, cl
and rdi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdi]
add al, -47
sbb ecx, 79
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, cl
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
