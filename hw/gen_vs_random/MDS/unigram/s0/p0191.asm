.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz rbx, rcx
and dl, 113 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdx]
cmovnz bx, di
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
and cl, -22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
bt ebx, 107
bt rdi, rsi
xor dx, ax
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 28
bt si, 62
and dl, -7
and bl, -72 # instrumentation
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 94
xor esi, 46
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 86
and dil, 61
and bl, 12 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rax]
btr rdi, 92
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
