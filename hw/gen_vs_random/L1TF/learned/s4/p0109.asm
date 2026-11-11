.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rax]
and bl, 89
sub dil, bl
and eax, -409673666
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
adc dil, 120
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea bx, qword ptr [rax + rdx + 24839]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
