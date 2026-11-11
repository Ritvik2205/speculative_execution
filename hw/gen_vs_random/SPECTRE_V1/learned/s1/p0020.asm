.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, al
and sil, 111
adc dl, 48
cmp dil, -78
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rdi]
test dil, -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
