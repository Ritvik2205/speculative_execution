.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 104 # instrumentation
mov edi, 12
test al, 15
jmp .bb_0.1
.bb_0.1:
test cl, 36
jmp .bb_0.2
.bb_0.2:
test al, -56
test cl, 32
and rsi, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rsi]
sbb ebx, -116
test dl, -37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
