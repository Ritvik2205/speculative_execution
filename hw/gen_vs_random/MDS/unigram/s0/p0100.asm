.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], eax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 55
and rdi, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
cmovnb eax, ebx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 23
btc bx, di
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
or rbx, -72
jmp .bb_0.1
.bb_0.1:
btr rdi, 129
bts rdi, 130
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
test dl, 48
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 78
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
