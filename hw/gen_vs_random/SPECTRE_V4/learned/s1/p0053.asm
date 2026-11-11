.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, sil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
adc bl, -58
adc bl, 79
and al, -118
cmp dl, cl
imul ax, bx
adc cl, dil
xor ax, 13329
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
mov dil, dl
and rdi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdi]
add dl, cl
add al, -29
cmp cl, 49
and edx, 88
sub cl, al
adc dil, cl
sub dl, -16
xor dl, al
xor ax, -17712
add al, -32
sub dl, al
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], cl
xor ax, 13329
add bl, al
adc bl, dl
and dl, -53
or dl, sil
and dl, -11
or dil, dl
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
sbb dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
