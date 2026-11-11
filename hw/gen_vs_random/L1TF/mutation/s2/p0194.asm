.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and al, dil
add bl, 115 # instrumentation
setz dl
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 102
add bl, -109 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 0
lea dx, qword ptr [rsi + rdi + 47468]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 112
or cl, 105
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
add cl, 69 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
sub cl, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
