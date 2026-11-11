.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, al
neg rax
xor ax, 20236
bt ax, 84
sbb al, 54
xor ax, 15671
xchg rdi, rsi
xor al, cl
or bl, cl
xor ax, -17712
xor dl, cl
sbb al, 54
sub rax, 2016976449
and ax, -23308
add dil, 75
sbb si, 84
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
test cl, dl
jmp .bb_0.1
.bb_0.1:
or di, 2
and al, dil
or ax, 27604
and al, -28
and sil, sil
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
add al, -32
add dil, dl
or ax, -26182
cmp al, 115
adc cl, dil
mov bl, sil
neg cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
