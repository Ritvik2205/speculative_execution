.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rcx]
add al, 18
dec al
sub al, 63
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], dl
add ax, 8031
and dil, 98
sbb dl, sil
and al, bl
adc cl, -81
test dl, -36
sbb dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
