.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, -62
lea bx, qword ptr [rdx]
or dl, dil
adc dl, cl
lea dx, qword ptr [rdi + rbx + 75]
add cl, -127
and al, 33
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .exit_0
.bb_0.2:
mov al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
