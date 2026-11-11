.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -90
add cl, sil
cmp dl, cl
and dil, -23
cmp al, cl
jmp .bb_0.1
.bb_0.1:
adc dl, al
adc al, -86
cmp al, 75
xor dl, -123
adc bl, dl
cmp al, -116
sub dil, 65
test bl, -116
and dl, al
xor cl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
