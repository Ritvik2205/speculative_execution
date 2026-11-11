.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rsi]
not dil
and rdx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 9
or rdx, rcx
and cl, -3 # instrumentation
cmovnb cx, ax
cmovnle rdi, rcx
bts rax, 117
cmovo di, si
cmovz rsi, rdi
and rsi, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
bt eax, esi
and ebx, 8
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], edx
bt eax, edx
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
bt dx, 8
bt rax, rbx
or al, -8
and dil, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
