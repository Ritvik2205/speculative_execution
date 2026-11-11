.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 42
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], cx
and dl, cl
bt eax, eax
test bl, 106
or bl, 84
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
and cl, 40
btc si, 90
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 88
jmp .bb_0.1
.bb_0.1:
cmovns ecx, esi
and rsi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
and rdx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdx]
cmovnle rax, rbx
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 23
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103
and bl, 76 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
