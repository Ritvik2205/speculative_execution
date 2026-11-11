.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 8
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and si, 43
inc dil
sbb cl, dil
and rsi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rsi]
and al, 33
add al, bl
lea rdx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
