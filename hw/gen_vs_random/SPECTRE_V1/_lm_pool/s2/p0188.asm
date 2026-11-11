.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 71
jle .bb_0.1
jmp .exit_0
.bb_0.1:
xor ecx, 86
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 30
xor bl, dil
sub cl, sil
test bl, -8
and cx, 45
lea di, qword ptr [rax + rsi + 73]
sbb dil, -106
xor dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
