.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rax
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
or cx, 0b1000000000000000 # instrumentation
bsr cx, cx
cmovnbe esi, edx
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
cmovno rbx, rcx
and bl, 120 # instrumentation
cmovnp di, cx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 75
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdi]
and rax, 1886208862
and bl, -87 # instrumentation
cmovo bx, ax
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
xor al, 122
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
jmp .bb_0.1
.bb_0.1:
cmovz eax, esi
cmovbe eax, edi
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
and al, 20 # instrumentation
cmovp cx, dx
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
