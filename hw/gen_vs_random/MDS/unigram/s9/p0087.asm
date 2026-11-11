.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], ax
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and dl, 120 # instrumentation
cmovnz ebx, esi
and rdx, rdi
cmovl dx, bx
not rdi
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], ax
and cl, -8 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rcx
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
cmovnp rax, rdi
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
