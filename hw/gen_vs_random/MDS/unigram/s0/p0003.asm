.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
and cl, cl
xor ax, 23633
test dil, dil
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
cmovnb rcx, rdx
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
cmovz esi, edi
cmovz esi, eax
cmovo edi, eax
btc ebx, edx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
cmovo rbx, rbx
cmovz rbx, rdx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 84
test sil, -55
test cl, 101
xor rdx, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
