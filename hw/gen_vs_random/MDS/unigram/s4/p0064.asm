.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
and rax, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rdx
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
xor al, -19
and rdi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
jmp .bb_0.1
.bb_0.1:
xor al, cl
cmovo ax, dx
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 18
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], ax
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
and bl, sil
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
