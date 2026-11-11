.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rcx]
or al, cl
or dx, 0b1000000000000000 # instrumentation
bsf di, dx
or rbx, -124
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 68
and dl, -107 # instrumentation
cmovz rdi, rax
and rsi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -109
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 39
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 4
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
test dil, -72
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 43
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
