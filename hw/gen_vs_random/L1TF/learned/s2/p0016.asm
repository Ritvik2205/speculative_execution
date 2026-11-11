.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -57
adc cl, -34
test dl, 84
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
cmp dl, -56
or dl, dil
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rdi + rsi + 5]
jmp .bb_0.2
.bb_0.2:
lea bx, qword ptr [rdi + rsi + 51]
sbb cx, 71
cmp sil, al
jmp .bb_0.3
.bb_0.3:
test cl, 69
sbb cl, sil
add al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
