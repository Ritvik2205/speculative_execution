.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ebx
sub cl, -47
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
or ax, -114
adc dl, -49
add sil, cl
sbb dil, bl
sbb cl, 105
sbb al, cl
sub bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
