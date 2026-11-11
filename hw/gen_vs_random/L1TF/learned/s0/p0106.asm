.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -36 # instrumentation
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
adc al, dil
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
and cl, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
