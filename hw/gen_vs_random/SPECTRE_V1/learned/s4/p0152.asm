.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and cx, 78
test bl, -8
or cl, bl
adc bl, 102
test al, -71
and rdx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdx]
adc cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
