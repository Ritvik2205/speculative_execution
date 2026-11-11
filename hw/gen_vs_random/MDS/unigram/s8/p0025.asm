.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rax]
cmovbe bx, ax
btr cx, bx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
or sil, al
or bl, dil
and rdi, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdi]
cmovnb ax, di
and bl, 45 # instrumentation
cmovnb di, cx
xor rbx, 89
or dx, bx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rbx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
test bl, cl
cmovnle di, bx
or sil, dl
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
