.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
dec bl
mov cl, al
xor al, -84
or bl, dl
and bl, dil
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dil
or rax, 1042095162
or al, -90
cmp al, -116
test cl, -119
mov cl, 1
sub dl, cl
adc bl, dil
sub al, -128
sbb dl, bl
cmp al, -53
xor al, dl
and al, -12
and al, -118
sbb bl, -75
and dl, cl
add dil, al
add dil, sil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
cmp cl, 107
and sil, dil
mov al, sil
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
add rsi, -100
cmp dl, 83
xor rbx, -99
sub dl, -16
sub cl, bl
or bl, -86
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
