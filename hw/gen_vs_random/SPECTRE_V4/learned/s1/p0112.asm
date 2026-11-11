.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, 36
xor bl, al
xor ax, -29507
jmp .bb_0.1
.bb_0.1:
adc dl, cl
sub cl, -127
or dil, cl
sbb bl, dil
cmp al, -106
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
