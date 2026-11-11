.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rax
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 15
test cl, -86
or dl, -97
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
or sil, al
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
xor al, cl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ecx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
btc bx, di
test rdx, 89
jmp .bb_0.1
.bb_0.1:
btc ax, 86
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
cmovz ax, ax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 18
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdi
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
