.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
test ecx, ebx
bt eax, esi
and bx, 22
and dil, 65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rax
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rcx
btr bx, 100
and eax, -574348013
jmp .bb_0.1
.bb_0.1:
test cl, cl
xor dl, al
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
or sil, cl
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
test sil, -55
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
