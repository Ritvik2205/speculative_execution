.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, cl
mov sil, 5
jp .bb_0.1
jmp .exit_0
.bb_0.1:
adc bl, 88
sub al, -1
xchg rcx, rbx
xchg al, bl
sub al, cl
sub dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
