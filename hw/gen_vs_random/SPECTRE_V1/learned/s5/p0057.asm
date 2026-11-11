.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
inc al
mov cl, sil
sbb sil, cl
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
test dil, -116
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
add al, -44
sbb al, -107
add cl, -127
and rcx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
