.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
lea bx, qword ptr [rdx]
and cl, sil
sub cl, -47
test cl, -24
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
and al, bl
cmovno ax, dx
xor sil, dl
and rax, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
