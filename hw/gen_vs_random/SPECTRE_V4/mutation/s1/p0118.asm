.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg rdi
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
cmovbe ebx, esi
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -73
test sil, 1
and rsi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rsi]
btc rcx, rdx
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 57
cmovnz rdi, rdi
cmovnb ebx, edx
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
or rax, rdx
add cl, -9
inc bx
imul edx
cmovnp ebx, ecx
add cl, 71 # instrumentation
cmovnle rax, rcx
and rdx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rdx]
cmp bl, cl
add bl, cl
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], edx
inc al
mov bl, al
bt si, ax
adc bl, dl
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
movzx di, dl
and dil, -120
mov edx, eax
cmp rbx, -91
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
add al, -3
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
not rdx
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
xor eax, eax
sbb rax, 475459025
cmovns di, ax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rbx]
neg di
sub rax, 1294268026
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 25202
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
