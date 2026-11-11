.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], di
or bl, 84
bts esi, edi
and dx, bx
cmovbe rax, rcx
cmovnp ebx, eax
test sil, sil
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 87
cmovle di, di
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], -23
and bl, cl
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 38
cmovnl ax, cx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rsi]
and bl, 43
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
cmovnb di, bx
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
