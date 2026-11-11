.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, 97
or si, 61
sub dx, bx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, al
and sil, cl
dec al
xchg edx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
