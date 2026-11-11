.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
cmp eax, 123533400
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
lea dx, qword ptr [rdx + rax + 22206]
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
and eax, edi
xor bl, cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
inc dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
inc rdx
or rax, -443578116
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
add cl, 69 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 0
or cl, 105
lea dx, qword ptr [rsi + rdi + 47468]
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 112
sub cl, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
