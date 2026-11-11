.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -71 # instrumentation
adc al, bl
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
mov bl, 98
test si, 77
xor dl, 43
neg bl
lea ax, qword ptr [rsi + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 58
xor bl, 93
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 54
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edi
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdx]
sbb bl, -94
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rsi]
and rax, 90
cmovns eax, eax
and rdi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rdi]
bts rdi, 73
cmovz rbx, rcx
and rdi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdi]
xchg eax, ecx
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
adc bx, -89
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
cmovnb esi, ecx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
xchg edi, esi
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rdi], eax
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ebx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rdi], bx
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
cmp bl, bl
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
or dl, dil
imul rsi
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
