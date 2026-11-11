.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
xor ax, -1005
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], -86
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdx
and al, -8
test rax, 1214712583
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
and rax, 79
jmp .bb_0.1
.bb_0.1:
btc rax, 110
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 5
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -83
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], bx
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
and al, 8 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rcx]
or ax, 85
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmovz rsi, rax
bt edi, 225
test al, -7
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
cmovns di, dx
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], eax
xor esi, edx
cmovns rdx, rdx
and ecx, edx
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and dl, -75 # instrumentation
cmovp edx, edx
or bl, 43
test cl, 54
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 1
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
cmovnz rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
