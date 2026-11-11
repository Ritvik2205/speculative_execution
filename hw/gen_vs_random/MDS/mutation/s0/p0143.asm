.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ecx, edx
test cl, 0
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and dl, -75 # instrumentation
cmovp edx, edx
cmovz rsi, rax
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
xor esi, edx
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 2
test al, 127
bt edi, 225
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
cmovns rdx, rdx
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
or bl, 127
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], eax
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmovns di, dx
cmovnz rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
