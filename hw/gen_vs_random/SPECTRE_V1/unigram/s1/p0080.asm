.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdi], 63
xchg bl, sil
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], esi
sbb cl, al
movsx rax, cx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 71
and rax, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdx]
btr rdi, 23
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rcx
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 75
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 5
bt ecx, 204
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
and rdi, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rdi]
not esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
