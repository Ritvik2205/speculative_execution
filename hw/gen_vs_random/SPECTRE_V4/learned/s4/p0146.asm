.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ebx, 189
sub al, 63
sbb bl, -79
xor dl, al
cmp si, 109
movzx di, cl
cmp cl, -80
or rax, 1042095162
adc dl, 56
test dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
