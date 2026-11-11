.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
sub al, -66
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 88
sub cx, 44
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, -127
sbb dil, cl
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
and al, sil
inc edx
inc al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
