.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ax, dx
and bl, 45 # instrumentation
cmovnb ax, cx
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
cmovz esi, ebx
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
cmovl eax, edx
bt rbx, rbx
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], bx
xor dil, sil
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 80
and dil, 125
jmp .bb_0.1
.bb_0.1:
and dl, -52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rsi]
btr rdi, 129
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and ax, -12519
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
