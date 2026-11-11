.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
test cl, 54
cmovns di, dx
and ecx, edx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
test al, 127
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 6
cmovnz rbx, rsi
or bl, -62
cmovns rdx, rdx
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], eax
xor esi, edx
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
bt edi, 17
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and dl, -75 # instrumentation
cmovp edx, edx
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
cmovz rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
