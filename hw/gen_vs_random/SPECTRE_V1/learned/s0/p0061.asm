.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
sub al, -66
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea ax, qword ptr [rdi + rcx + 4]
and al, dl
or edx, 54
test sil, -31
jle .bb_0.2
jmp .exit_0
.bb_0.2:
lea ecx, qword ptr [rbx + rbx + 89]
add bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
