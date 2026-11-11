.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, 56
add dil, cl
and ax, -16777
xor rcx, -111
sbb dl, -106
or cl, -104
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
mov bl, cl
or dl, dil
and bl, 76
mov cl, 14
mov cl, bl
cmp rax, 2096656187
adc dil, -17
or cl, dl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -21
sbb dl, -71
test dl, -125
adc cl, bl
add sil, sil
cmp sil, 113
adc sil, -112
and bl, -30
add bl, cl
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
dec al
imul di, dx, 49
and rsi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rsi]
add al, -3
adc eax, 1019803307
and al, -124
or ecx, 102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
