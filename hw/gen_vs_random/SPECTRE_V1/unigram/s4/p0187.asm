.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -105 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
sub rbx, -128
xor dil, 77
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rax], si
and rdx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdx]
add cl, 22 # instrumentation
cmovns rdi, rcx
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdi]
sub ecx, 48
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], bx
btc rdx, 63
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], si
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
add cl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdx]
cmovnbe rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
