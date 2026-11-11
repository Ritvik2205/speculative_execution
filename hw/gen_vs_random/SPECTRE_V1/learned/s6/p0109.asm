.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -75
xor al, -19
add al, 18
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
or cl, sil
and rax, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
sub al, sil
sub cl, -21
sub sil, -18
cmp al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
