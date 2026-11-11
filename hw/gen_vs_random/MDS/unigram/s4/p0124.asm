.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, si
cmovle cx, si
cmovbe edx, ebx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
cmovz dx, di
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
test cl, 73
xor dil, 124
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 32
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
cmovo ax, ax
and rdx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdx]
btc ebx, 149
bts si, 158
bt cx, ax
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
and rbx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rbx]
and al, -72 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rax]
bt ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
