.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
and dl, -78 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
cmovb ecx, eax
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
or di, -18
and cl, -63
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 90
not eax
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], cx
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
btr rdi, rdi
and bl, 52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
cmovo bx, ax
or bl, dil
cmovb bx, dx
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rcx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rcx]
cmovp esi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
