.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno dx, si
xor di, 93
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 60
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rsi
and rax, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
or bl, al
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
cmovz esi, ebx
and rbx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rcx
or cl, cl
and cl, 112 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 21
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
bt si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
