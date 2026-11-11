.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
sub al, bl
setz cl
imul al
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 51
adc sil, -77
sbb bl, cl
adc dx, -112
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
btc ax, di
sbb dl, dil
and dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
