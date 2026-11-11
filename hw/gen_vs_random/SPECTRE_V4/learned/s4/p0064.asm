.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 2
and cl, 126
and rsi, 0
test dl, 24
sub bl, 56
and al, bl
add bl, dil
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
or sil, -47
test al, bl
mov al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
