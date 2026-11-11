.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
sub sil, 71
xor ax, -17712
adc sil, dil
sub dil, 65
or cx, -74
sub sil, 71
add cl, bl
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
and dil, -23
add cl, dil
mov dil, cl
bts ax, 155
or al, -47
sbb dl, al
and ax, -16777
add dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
