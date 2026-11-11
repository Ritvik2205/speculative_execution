.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -31
or eax, -1213318393
mov cl, al
cmovz eax, ecx
cmovbe di, cx
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], al
xor dil, al
sub dil, 35
neg dl
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
or dl, -26
add sil, 3
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 43
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 49
and dil, -61
test al, 52
add bl, cl
test al, -38
dec al
and sil, bl
and dl, 126
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
adc dil, -48
adc dl, dil
or al, dil
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
cmp bl, 12
xor dl, al
and rdx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdx]
and bl, 76
sbb sil, -11
adc ecx, 55
sbb di, -105
sbb cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
