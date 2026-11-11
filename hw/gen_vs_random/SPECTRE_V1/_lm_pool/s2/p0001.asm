.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, sil
mov bl, dil
xor dil, dil
sub cl, -21
cmovb bx, cx
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 71
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add dil, -75
add cl, al
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edi
and rdi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdi]
test al, 48
and rsi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rsi]
adc al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
