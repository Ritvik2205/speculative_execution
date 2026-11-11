.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
adc dil, 11
add sil, dl
and dil, -114
cmp cl, 95
add cl, dil
lea ax, qword ptr [rdi]
sub rbx, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
