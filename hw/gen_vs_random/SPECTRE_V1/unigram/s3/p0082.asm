.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, cl
and rsi, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rsi]
add dl, -124 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
add bl, 125 # instrumentation
adc bl, dil
bt eax, 127
lea rsi, qword ptr [rdx]
setnp sil
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
lea rsi, qword ptr [rax]
xchg edx, eax
and rax, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rax]
lea cx, qword ptr [rbx]
sub dil, 2
imul bl
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 1
setns cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
