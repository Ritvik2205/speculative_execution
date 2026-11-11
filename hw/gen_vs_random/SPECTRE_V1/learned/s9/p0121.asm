.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -36
add al, bl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test al, -126
add dil, -75
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
or cx, 34
xor eax, 55
and al, 33
and cx, 35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
