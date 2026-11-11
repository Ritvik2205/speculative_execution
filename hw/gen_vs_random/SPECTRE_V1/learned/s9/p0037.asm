.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, al
adc dl, 80
xor ebx, 88
sub al, 63
test dil, -116
js .bb_0.1
jmp .exit_0
.bb_0.1:
add dil, -75
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 99
add dil, al
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
