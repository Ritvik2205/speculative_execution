.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test dl, -37
jmp .bb_0.2
.bb_0.2:
test al, 15
bt edx, ecx
xor di, 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
