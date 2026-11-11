.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
and al, -28
xor cl, al
sub dil, 35
movsx cx, dl
sbb di, -105
add cl, bl
xor ax, -17712
xor al, dil
or cl, sil
or bl, bl
and rbx, 37
xor dl, -123
xor cx, -80
imul rax, rdi, -89
and bl, al
adc dl, 15
test bl, dl
test esi, -222751961
sub dl, cl
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], cl
xor sil, al
sbb dl, al
imul rax, rbx, 44
cmp al, 109
add al, -44
mov al, 90
and cl, dl
sbb bl, -98
sub sil, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
