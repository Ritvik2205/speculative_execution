.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 35
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
and cl, dil
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rbx]
not eax
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rax], si
cmovp bx, di
and al, -61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
xor si, cx
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -84
cmovbe ax, ax
and bl, 76 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdi]
cmovns ebx, ecx
and bl, -49 # instrumentation
cmovno bx, dx
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
