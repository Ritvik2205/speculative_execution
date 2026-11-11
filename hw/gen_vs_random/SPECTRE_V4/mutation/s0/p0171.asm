.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, cl
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
cmovnb ebx, edx
cmovbe ebx, esi
mov bl, al
inc al
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
add bl, cl
imul edx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -73
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
sbb rax, 59
not rdx
cmovns di, ax
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
adc bl, dl
cmovnp ebx, ecx
add cl, -62
sub rax, 120
and rbx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rbx]
neg di
add cl, 71 # instrumentation
cmovnle rax, rcx
xor eax, eax
test sil, 68
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
inc bx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
btc rcx, rdx
add al, -4
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 25202
and rdx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rdx]
or rax, rdx
cmp rbx, -91
movzx di, dl
neg rdi
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], edx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 119
mov edx, eax
and dil, -23
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
bt si, ax
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
cmovnz rdi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
