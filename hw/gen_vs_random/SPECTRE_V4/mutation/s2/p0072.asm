.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
add cl, -9
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
cmp bl, cl
bt si, ax
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and dil, -120
add cl, 71 # instrumentation
cmovnle rax, rcx
xor eax, eax
add bl, cl
cmp rbx, -91
neg di
sub rax, -1881584175
add al, 19
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
cmovbe ebx, esi
and rsi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
mov bl, al
test sil, 68
btc rcx, rdx
mov edx, eax
sbb rax, 475459025
neg rdi
not rdx
adc bl, dl
or rax, rdx
imul edx
and rbx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 1
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 57
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -73
cmovnp ebx, ecx
movzx di, dl
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], edx
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
inc al
inc bx
cmovnb ebx, edx
cmovnz rdi, rdi
and rdx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 25202
cmovns di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
