.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rsi]
and dx, ax
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rsi]
or dx, 71
and bl, -72 # instrumentation
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 55
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 19
xor dil, dil
and sil, 102 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdx]
btr rbx, 96
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 83
and ax, bx
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 56
and ax, bx
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
or cl, dil
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
and rbx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
