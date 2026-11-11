.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rsi]
sub cl, al
or bl, 61
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and al, dl
sbb al, 57
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
test bl, dl
dec dil
xor cl, al
sub dl, -16
xor dl, al
xor dl, dil
sub dl, al
sub cl, sil
add sil, al
add sil, sil
test dil, cl
add bl, -59
adc edi, -83
sub bx, 24
or al, al
test eax, -651442446
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
add cl, al
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
xor bx, 59
xor al, 23
adc bl, dl
imul rax, rdx, 44
add cl, -62
xor al, -84
and al, -1
or ecx, 102
xor dl, -123
mov cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
