.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe dx, bx
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 64
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
or rdx, 79
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
and bl, 44 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -109
jmp .bb_0.1
.bb_0.1:
and cl, 85 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rsi]
or dl, -18
cmovz rdi, rbx
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rcx]
cmovl rdx, rax
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
or ax, 0b1000000000000000 # instrumentation
bsr si, ax
and cl, dil
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 630928397
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
