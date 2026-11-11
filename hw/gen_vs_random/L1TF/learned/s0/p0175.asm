.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -71 # instrumentation
adc ebx, ebx
and al, cl
add al, 74
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rcx]
jmp .bb_0.2
.bb_0.2:
sbb dl, cl
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
