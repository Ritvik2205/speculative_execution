.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
mov cl, bl
cmovz si, di
xchg sil, dil
and rdi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -2
cmovnz ecx, eax
imul ax, di
and ax, 13045
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -72
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], -59
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 85
xchg esi, edx
or cl, cl
xor rax, 93
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and cx, di
adc rbx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdi]
movzx ecx, cl
btc rcx, rdx
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
add cl, 71 # instrumentation
cmovnle rax, rcx
inc bx
or rax, rdx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -73
inc al
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
adc bl, dl
sub rax, -1881584175
add bl, cl
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
cmovbe ebx, esi
add cl, -62
and dil, 8
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
not rdx
cmovnz rdi, rdi
mov edx, eax
cmp bl, cl
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], edx
add al, -29
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
