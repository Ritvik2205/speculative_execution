.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ecx
xor dl, dl
cmp cl, bl
add dl, bl
and eax, -1948401947
or dl, -26
and bl, 76
cmp sil, 127
dec dl
and eax, -2001076187
neg dil
sub sil, dil
or rax, 185991441
adc dl, 93
add bx, 2
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and di, -65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
