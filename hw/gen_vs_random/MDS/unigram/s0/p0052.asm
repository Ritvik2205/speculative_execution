.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
cmovo rbx, rbx
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 24
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
cmovnp dx, si
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], si
bt ax, si
or rcx, rbx
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and bl, 96 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdx]
cmovz bx, bx
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
bt rdx, rbx
xor ax, -6793
test di, 19
xor dl, -43
cmovz edi, edx
and cl, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
