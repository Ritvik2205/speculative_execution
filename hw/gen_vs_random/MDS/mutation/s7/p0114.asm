.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edi, 17
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
cmovns di, dx
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 2
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and ecx, edx
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], eax
cmovnz rbx, rsi
test al, -7
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
cmovz rsi, rax
xor esi, edx
or bl, -54
cmovns rdx, rdx
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
test cl, 101
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and dl, -75 # instrumentation
cmovp edx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
