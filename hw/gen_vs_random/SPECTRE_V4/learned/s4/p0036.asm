.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -112
bts eax, 28
adc al, 41
imul edx, ebx, 1
sbb sil, -11
and dl, dil
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
test al, -38
mov sil, bl
sub cl, -119
or rax, 980130592
movsx ax, dl
neg dil
sbb sil, -11
add al, cl
and al, 92
xor cl, -73
cmp al, dl
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 6
and bl, al
and dil, 8
test bl, sil
xchg bl, sil
cmp al, -116
cmp al, 115
cmovnbe rax, rsi
xor dl, al
or bl, dil
cmp rax, -1070057082
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
