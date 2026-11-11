.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmovz rsi, rax
bt edi, 17
test al, 91
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
or bl, -54
test cl, 54
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 6
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
cmovnz rbx, rsi
jmp .bb_0.1
.bb_0.1:
and al, 39 # instrumentation
cmovbe si, bx
and rcx, rsi
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -12
and rbx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
or bl, bl
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
btc si, 99
and dl, -18 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
