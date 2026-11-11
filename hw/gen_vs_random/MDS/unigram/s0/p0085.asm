.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rbx, -124
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ecx
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
cmovo eax, esi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], ax
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ecx
and rdi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 4
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
btr rcx, 18
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rsi
xor al, -119
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rsi]
test cl, cl
and rdx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
