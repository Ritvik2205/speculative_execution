.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb al, al
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
and cl, cl
xchg edi, edx
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
adc bl, 86
adc cl, -34
jmp .bb_0.2
.bb_0.2:
adc dil, sil
test rax, 404297506
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
