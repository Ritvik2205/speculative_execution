.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and al, cl
jp .bb_0.2
jmp .exit_0
.bb_0.2:
sbb dil, -93
or dil, bl
cmovno cx, di
not dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
