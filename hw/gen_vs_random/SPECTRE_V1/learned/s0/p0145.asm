.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax]
add dl, -105 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
adc cl, cl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], 69
mov si, 9258
xor rsi, 73
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx
adc cl, -18
and dl, 110 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 68
adc edx, 84
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 79
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], bx
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
