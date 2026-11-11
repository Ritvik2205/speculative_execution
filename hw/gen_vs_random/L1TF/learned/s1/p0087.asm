.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
sub sil, -99
mov dil, sil
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
sub dl, dil
jmp .bb_0.1
.bb_0.1:
adc eax, 457059541
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
