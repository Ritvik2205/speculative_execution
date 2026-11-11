.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, bl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
sub dl, -49
and dil, dil
jmp .bb_0.1
.bb_0.1:
or dil, -113
jmp .bb_0.2
.bb_0.2:
and dl, dl
jmp .bb_0.3
.bb_0.3:
adc dl, -12
xor al, 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
