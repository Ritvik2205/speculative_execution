.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, dil
cmp al, cl
xor dil, -37
add al, -65
and rdi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
sub cl, al
sbb dil, cl
sub al, sil
xor ax, 913
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
