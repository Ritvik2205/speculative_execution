.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx]
cmp bl, 13
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 57
add si, 4
or ebx, 98
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 31
movzx rax, bx
add sil, al
btc ecx, 49
sbb bl, sil
add dx, -90
sub dil, -10
test ebx, edi
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
sbb sil, 108
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 40
xor ebx, 55
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rax], ecx
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edx
btc dx, 119
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
and rbx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rbx]
and ax, 35
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
movzx ecx, bl
movzx esi, si
and rax, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rax]
cmovo eax, ecx
imul rdi
and dl, sil
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
adc ecx, -12
adc ebx, 117
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
or ax, -15282
cmovnbe bx, dx
cmovle rdi, rcx
sub di, si
imul sil
sbb bl, bl
cmovnb edx, ecx
and rbx, 110
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
