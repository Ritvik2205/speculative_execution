.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 52
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 14
and cl, 89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
test cl, sil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 40
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rax], eax
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 0
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
or rbx, -124
and rsi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rsi]
or dil, cl
and bl, -104 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 18
cmovo ebx, edi
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
cmovo eax, ecx
and bl, 22
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
