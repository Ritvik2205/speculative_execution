.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not bl
cmovp esi, edx
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], cx
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
bt ax, 76
bt di, si
bt rbx, rax
jmp .bb_0.1
.bb_0.1:
cmovnb cx, ax
and rdx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdx]
test si, 78
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
cmovl rax, rbx
and si, -121
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
and rdx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdx]
cmovnbe eax, eax
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
or cl, 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
