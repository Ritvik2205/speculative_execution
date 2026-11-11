.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 40
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
adc al, dl
sbb al, -3
neg dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
mov bl, al
sbb al, 54
xor si, cx
cmp rdx, -49
cmovno rax, rdi
mov cx, -22668
mov dil, bl
mov sil, al
cmp dl, 45
test ax, -14473
sub dil, bl
and edx, 56
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], bx
add eax, -105
add al, -44
sub al, 86
sub al, 26
adc dil, bl
mov cl, al
test cl, 78
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
add al, -99
dec dil
xor ax, 13332
mov ax, 31802
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
or dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
