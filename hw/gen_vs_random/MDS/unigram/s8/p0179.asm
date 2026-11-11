.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
xor al, 55
or bx, 95
or rdi, rcx
bt ebx, edx
xor ax, ax
and rdx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
and rsi, 11
test bx, 25542
cmovo rcx, rdx
and rdx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
btc rsi, rdi
and cl, 122 # instrumentation
cmovl ecx, ecx
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
