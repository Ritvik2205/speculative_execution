.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rcx], si
and rcx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rsi
bt rdx, 76
cmovnb ebx, ebx
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rcx
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rax
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rcx]
btr rsi, 73
and al, 33 # instrumentation
cmovnle ebx, eax
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rax
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
and eax, -2116875023
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 72
and dl, -107 # instrumentation
cmovz rcx, rbx
or bl, cl
and bl, 44 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
xor cl, -79
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rax
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
