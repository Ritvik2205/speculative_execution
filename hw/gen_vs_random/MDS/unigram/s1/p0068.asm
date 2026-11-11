.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 112
btc edx, 75
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
bts esi, 82
btc rsi, rax
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
cmovo bx, bx
and dil, 125
and rbx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rbx]
and al, -8 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rax]
and bl, 45 # instrumentation
cmovnb dx, di
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], si
cmovo ebx, eax
and edx, edx
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
