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
bt edi, 225
test al, -81
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
or bl, -52
test cl, -18
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
and bl, 15 # instrumentation
cmovb di, si
cmovbe ax, si
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
cmovnb rax, rsi
cmovno rsi, rdx
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
or al, 16
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
