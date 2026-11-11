.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rdi, rcx
btr bx, bx
and dil, 125
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 11
or rdi, 21
and rcx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], ecx
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], dx
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
and bl, -5 # instrumentation
cmovnl dx, cx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 12
and rdx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
btc dx, 67
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
bt rdi, rdi
and si, ax
and cl, 34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
