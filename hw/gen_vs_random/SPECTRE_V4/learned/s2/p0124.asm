.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
xor al, al
and dil, -23
sbb al, 57
adc dl, al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
xor al, 124
sub bl, dil
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
jmp .bb_0.1
.bb_0.1:
sbb sil, 24
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
sub al, 26
or al, bl
and dl, al
xor al, sil
or rsi, 73
and sil, dil
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
cmp al, 105
cmp ebx, -27
xor al, sil
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
sbb al, 102
and al, -1
bswap edx
mov al, 7
add bl, -49
cmovle rbx, rcx
mov dil, bl
and rbx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rbx]
sub dx, -12
add eax, -2075159577
or al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
