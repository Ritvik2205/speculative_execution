.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 12
cmp rdx, -49
sbb al, dl
or rbx, rax
cmp cl, 100
not dil
sub cl, 78
sub dl, 107
movsx edx, dil
cmovnbe ebx, ecx
sbb al, dil
cmp rax, -1070057082
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
