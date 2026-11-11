.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, -47
sub bl, 66
and bl, al
xor dl, sil
sbb al, -43
adc cl, -54
add cl, -62
mov dl, sil
xor ax, 13329
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
cmp dil, al
xor rax, 93
mov cl, al
xor dil, 37
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
or eax, -1213318393
sub al, sil
sub al, 55
add bl, al
xor dil, sil
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
add dil, sil
xor al, bl
sbb cl, 12
sub al, -84
add cl, dl
cmp dl, dil
sbb rdx, -43
sbb ax, 1843
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
and bl, -30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
