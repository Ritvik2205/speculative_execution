.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
jmp .bb_0.1
.bb_0.1:
test sil, -119
cmp al, bl
add bl, dil
cmp al, -116
add dil, 75
or cl, -104
sbb al, 102
adc cl, -54
mov dl, bl
and dl, -53
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
xor cl, 13
sub cl, -73
and ax, -12738
mov cl, dil
cmp bl, al
xor al, cl
and cl, cl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
or cl, dl
bswap eax
or bl, 111
mov al, dl
sub ecx, -107
adc dil, 124
sbb al, 54
cmp al, 75
or dil, al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and al, -87
sbb sil, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
