.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, esi
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 18
cmp dil, sil
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
and rdx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
adc sil, dl
cmovb ebx, esi
cmovz rbx, rdi
and rsi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rsi]
add esi, ebx
sub dil, al
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], di
and rax, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rax]
test ax, 23760
xor bl, sil
sub dx, 87
movsx rdi, dx
cmovnle cx, cx
add rbx, 36
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ecx
and dil, dl
mov bl, 30
test dl, 19
and rsi, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rsi]
or edi, 55
add dx, -90
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], edi
add al, -75 # instrumentation
adc al, 79
not ax
movzx ecx, al
and rbx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rbx]
cmovnbe rcx, rcx
sbb bl, 57
xchg esi, edi
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
movsx rdx, bx
cmovnle rdx, rdx
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rdx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
