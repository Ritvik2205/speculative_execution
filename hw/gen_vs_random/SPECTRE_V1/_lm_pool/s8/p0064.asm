.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 25351
add al, al
and al, -54
or dl, 41
adc cx, -30
sbb eax, 125
sub dl, cl
and dil, -114
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub dil, al
or bl, 31
test bl, -8
btc ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
