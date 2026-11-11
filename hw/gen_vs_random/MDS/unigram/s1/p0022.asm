.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 98
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 83
cmovnz cx, cx
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
xor dil, sil
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
and rdx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], edi
and rdx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rdx]
or bl, dil
btc rdx, rsi
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rsi
and rax, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rax]
btr rcx, 77
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rcx
xor al, -15
and bl, -30 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
