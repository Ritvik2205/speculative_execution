.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -119
test edi, 2142010790
imul rcx, rax
sub cl, -94
sbb dil, 41
cmp rax, 2096656187
jmp .bb_0.1
.bb_0.1:
adc al, sil
add cl, -9
not cx
sbb dl, 75
add cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
