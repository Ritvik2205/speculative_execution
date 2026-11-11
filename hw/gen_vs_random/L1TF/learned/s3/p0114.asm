.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 82
and al, dil
test edi, 15
jmp .bb_0.1
.bb_0.1:
test al, -70
sub al, cl
and sil, sil
jmp .bb_0.2
.bb_0.2:
and al, -68
and al, -68
add dil, -7
adc al, 80
add al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
