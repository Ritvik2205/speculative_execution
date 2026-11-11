.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs di, ax
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 7
sub cl, 86
or dl, sil
or sil, -44
adc bx, 27
xor cl, dil
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
