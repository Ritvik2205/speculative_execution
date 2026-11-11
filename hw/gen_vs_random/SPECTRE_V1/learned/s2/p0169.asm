.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -1161451853
and dx, 80
jp .bb_0.1
jmp .exit_0
.bb_0.1:
adc cl, -81
add al, al
sub dil, dl
xchg eax, ebx
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
add bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
