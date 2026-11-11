.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rax]
sub cl, dl
cmp al, sil
cmp al, -119
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
test edx, -541774418
jmp .bb_0.1
.bb_0.1:
test cl, 12
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
add al, 117
jmp .bb_0.2
.bb_0.2:
cmovno dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
