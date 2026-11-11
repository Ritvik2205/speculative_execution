.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 6
test ebx, 30
adc dil, cl
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
or edx, -118
test al, 115
test bl, -16
adc al, dl
sub dl, al
or bl, cl
and dl, -104
add al, 19
mov bl, dil
add al, -127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
