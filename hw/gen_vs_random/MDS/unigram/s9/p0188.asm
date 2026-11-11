.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rbx]
xor esi, ecx
or cl, cl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 84
and rsi, 62
btr di, di
and al, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
and al, -99 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
cmovz rdi, rsi
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
test esi, 1857129931
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
cmovo eax, ebx
and cl, 123 # instrumentation
cmovo si, dx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
test sil, 41
and dl, 1 # instrumentation
cmovl dx, bx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rcx, rax
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
