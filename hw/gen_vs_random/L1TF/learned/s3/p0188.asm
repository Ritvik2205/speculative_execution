.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 76
cmp cl, dl
and dil, dl
sbb bl, -88
sub al, 9
adc al, bl
dec dl
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
or cl, dl
sbb dl, dil
neg dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
