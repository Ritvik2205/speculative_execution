.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 8
and rcx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rcx], 44
jmp .bb_0.1
.bb_0.1:
add dl, -1
xor dil, -42
jmp .bb_0.2
.bb_0.2:
add sil, -61
bts eax, edx
xor sil, 64
jmp .bb_0.3
.bb_0.3:
test dl, -37
adc cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
