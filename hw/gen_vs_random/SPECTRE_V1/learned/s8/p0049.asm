.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 63
sub dil, -32
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
btc ebx, 218
add al, -47
sbb ebx, 41
and al, -54
cmovno cx, di
sbb sil, dl
jmp .bb_0.1
.bb_0.1:
xor bl, cl
sbb bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
