.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rdi
or dl, sil
cmovz esi, ecx
sub dl, sil
xor dl, bl
and rdi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdi]
mov cl, al
mov bl, cl
jmp .bb_0.1
.bb_0.1:
dec al
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
sbb al, 70
test dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
