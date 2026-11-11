.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, 52
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 61
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edx
sbb bl, dil
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
