.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc bl, dl
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
cmp rbx, -91
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 25202
xor eax, eax
mov bl, al
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
bt si, ax
cmovbe ebx, esi
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 119
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
btc rcx, rdx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
add bl, cl
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -73
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
sub rax, 714283065
and dil, -61
not rdx
cmovns di, ax
cmovnp ebx, ecx
inc al
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
cmovnb ebx, edx
and rbx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rbx]
test sil, 1
cmp bl, cl
mov edx, eax
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 1
add al, -99
imul edx
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
inc bx
cmovnz rdi, rdi
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
neg di
movzx di, dl
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], edx
add cl, -9
and rsi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rsi]
neg rdi
sbb rax, 475459025
or rax, rdx
and rdx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
add cl, 71 # instrumentation
cmovnle rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
