.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dl
test cl, 34
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
and rcx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rcx]
test cl, 61
cmp bl, dil
adc cl, -34
sub al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
