.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, dil
mov al, cl
adc dl, cl
adc cx, -30
cmp bl, al
mov dl, sil
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
