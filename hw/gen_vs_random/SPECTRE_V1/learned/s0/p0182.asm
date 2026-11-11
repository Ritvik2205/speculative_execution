.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -120
and bl, cl
mov al, dil
sub al, sil
adc cl, al
sub dl, sil
adc sil, -77
jb .bb_0.1
jmp .exit_0
.bb_0.1:
sub rdi, rcx
add al, -72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
