.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 76
xor bl, dil
jmp .bb_0.1
.bb_0.1:
cmp al, bl
test cl, 78
sbb dl, -106
adc sil, dl
cmp dl, bl
dec dl
sbb bl, dil
cmp al, -44
adc sil, -63
neg al
or dil, bl
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and al, -124
test bx, 24072
add bl, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
