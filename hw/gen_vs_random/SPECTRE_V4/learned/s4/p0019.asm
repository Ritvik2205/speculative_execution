.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 30500
cmovz ecx, edx
and al, 59
or al, bl
and rdi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdi]
sbb al, sil
or sil, dil
cmp al, -106
xor bl, al
or cl, cl
add bl, dil
test sil, bl
test ax, -23852
cmp dil, sil
test al, dil
test bl, sil
cmp dl, bl
sub dl, 107
mov dl, bl
sub al, 54
cmp bx, 113
xor al, bl
and cl, bl
sbb dl, al
add al, -44
cmp al, 114
sbb bl, sil
xchg rcx, rdi
xor ax, 45
dec al
test dl, -125
or bl, dil
add bl, dil
and al, -87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
