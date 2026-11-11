.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, dil
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi]
test rax, -1638758413
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
jle .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
