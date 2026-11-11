.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 26813
sub sil, dil
imul cx, si, 12
sub sil, -99
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
test al, -84
sbb al, bl
bts cx, 176
and rdi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
