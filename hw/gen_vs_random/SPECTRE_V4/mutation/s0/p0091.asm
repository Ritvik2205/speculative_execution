.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bx
cmp rbx, -66
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
cmp bl, cl
add al, -99
sbb rax, 475459025
not rdx
cmovnb ebx, edx
neg rdi
neg di
add bl, cl
add cl, 71 # instrumentation
cmovnle rax, rcx
cmovnz rdi, rdi
and rsi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
mov edx, eax
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 57
test sil, -119
and dil, -23
inc al
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 25202
adc bl, dl
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
cmovbe ebx, esi
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
xor eax, eax
and rbx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rbx]
mov bl, al
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
btc rcx, rdx
bt si, ax
cmovns di, ax
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
or rax, rdx
imul edx
movzx di, dl
cmovnp ebx, ecx
and rdx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -73
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
sub rax, 1294268026
add cl, -62
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
