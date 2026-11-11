.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, 2052654950
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
and al, 49
or rax, -823069511
sub dl, 107
sbb al, 43
sbb al, 70
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
xor bl, 126
xor al, sil
cmp al, sil
neg dil
xor al, -60
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 111
or rax, -2144083737
adc bl, al
adc al, -59
cmp sil, cl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
sub al, 26
cmp sil, bl
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], bx
mov al, 90
adc al, sil
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
neg dl
sub bl, al
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
and dl, bl
or bl, 61
sbb al, -4
sub cl, -51
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
