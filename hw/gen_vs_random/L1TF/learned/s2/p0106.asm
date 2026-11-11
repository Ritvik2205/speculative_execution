.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 88
or dil, -113
and al, sil
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 7
sub sil, dl
sbb al, 61
jmp .bb_0.1
.bb_0.1:
or dl, dil
add bl, dil
and eax, -409673666
jmp .bb_0.2
.bb_0.2:
test eax, 899472326
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
