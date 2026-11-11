.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 29
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -15
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
cmovbe dx, cx
and cl, -85 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
test sil, 41
cmovnp dx, cx
jmp .bb_0.1
.bb_0.1:
bt rdi, rcx
and al, -83 # instrumentation
cmovnp rsi, rax
or sil, -49
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
cmovbe eax, eax
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 41
and rbx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rbx]
and dl, 21 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
