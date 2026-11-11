.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -38
sbb al, -52
xor dl, -123
xchg rdi, rcx
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
dec bl
adc edx, -125
jmp .bb_0.1
.bb_0.1:
sub dl, sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
or al, -47
adc bl, 79
sbb al, 70
or cl, -55
neg dil
test eax, 1947430392
or edx, 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
