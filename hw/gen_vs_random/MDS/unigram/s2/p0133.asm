.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rsi]
and bl, 102 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
btr cx, 23
cmovnz di, si
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
and dl, 84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rbx]
and bl, 52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rax
xor dl, -125
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 38
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rsi], cx
or cl, sil
xor cx, ax
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], esi
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 61
cmovz ebx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
