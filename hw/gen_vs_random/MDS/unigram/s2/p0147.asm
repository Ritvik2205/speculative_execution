.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rcx
xor cl, sil
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
cmovl si, di
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
cmovno rax, rax
bt di, cx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
xor dil, 8
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 2
and cl, cl
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 77
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
bts esi, esi
bt rax, 29
and cl, 79
and rdx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
