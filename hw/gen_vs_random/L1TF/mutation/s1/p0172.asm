.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rsi + rdi]
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], si
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
or ax, -18131
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], ebx
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
xchg dl, dl
btr rax, rdx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], cx
xor dil, -42
cmovnl si, bx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 124
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
add cl, bl
mov esi, -1776760885
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
