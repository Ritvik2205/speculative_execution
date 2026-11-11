.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -14374
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
or cl, cl
xchg dl, al
sbb dl, -106
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx]
or sil, dil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
xor sil, 65
dec dl
bts si, 46
and dil, -61
test si, 7
xchg rcx, rsi
mov dl, 81
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
sbb al, -43
sub cl, al
and al, 82
mov dl, -124
adc ebx, -55
sbb dl, al
sbb edx, 75
add bl, sil
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
xor dl, -66
mov cl, bl
test bl, 78
and dl, sil
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
cmovno cx, dx
xor cl, al
test sil, 16
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
