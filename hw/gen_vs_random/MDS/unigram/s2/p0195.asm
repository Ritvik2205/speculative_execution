.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno rcx, rdx
btc ecx, 7
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 39
and bl, 121 # instrumentation
bt rsi, 36
and bl, 26 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rsi]
or bx, 28
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], cx
cmovp si, ax
xor bx, 78
and dl, 23 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rsi]
cmovbe ecx, edx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
test rax, -2052112368
and edx, -44
test cl, 62
and rdx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], -18
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
or sil, -78
xor dl, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
