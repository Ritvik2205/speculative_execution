.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], si
and dl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rbx]
test bl, sil
cmovb di, di
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ecx
and rax, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
and sil, -40 # instrumentation
cmovp esi, esi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], dx
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
and rbx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rbx]
xor dl, 8
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 58
test dl, dil
not rbx
and rsi, 1
cmovz dx, si
test dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
