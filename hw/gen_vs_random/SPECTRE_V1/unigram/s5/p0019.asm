.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx dx, bl
or bx, 9
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
sub al, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
mul rcx
add dl, 52 # instrumentation
sets al
and rdx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
cmp eax, esi
imul cx, bx, -29
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rdi], ax
cmovno rax, rcx
cmovs rax, rax
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
