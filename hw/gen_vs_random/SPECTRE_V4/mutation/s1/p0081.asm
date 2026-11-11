.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
inc al
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
cmp bl, cl
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 119
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], edx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 25202
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
cmp rbx, -66
mov edx, eax
and rdx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
add al, -82
inc bx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -73
cmovnz rdi, rdi
not rdx
imul edx
or rax, rdx
xor eax, eax
sub rax, 1914398062
and dil, -23
mov bl, al
and rbx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rbx]
cmovbe ebx, esi
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
adc bl, dl
add bl, cl
and rsi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
cmovns di, ax
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
add cl, -62
add cl, 71 # instrumentation
cmovnle rax, rcx
movzx di, dl
neg di
sbb rax, 475459025
bt si, ax
test sil, 68
btc rcx, rdx
cmovnp ebx, ecx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
cmovnb ebx, edx
neg rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
