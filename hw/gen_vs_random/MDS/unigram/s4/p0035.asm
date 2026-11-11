.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 27
xor al, 78
and rcx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rcx]
cmovle si, si
cmovb eax, esi
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], bx
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 81
or bx, 1
and rcx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
and al, 73
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
cmovz rax, rbx
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 9
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], di
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 15
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ecx
cmovb edx, edi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
