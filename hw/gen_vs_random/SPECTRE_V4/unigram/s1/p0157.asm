.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rax, rbx
movsx edx, dx
imul eax
and al, dil
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 57
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
cmovbe ebx, eax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], bl
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
test dx, bx
add dil, 68 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
cmovnl cx, cx
mov cl, al
sub ax, si
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
cmovnp dx, di
cmovns dx, cx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
and rax, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rax]
mul edx
and rdx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rdx]
btc rax, rcx
bswap ebx
and rax, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rax]
cmovnle cx, di
bts di, 30
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], edi
or ebx, -78
or bl, bl
add dl, -40 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
and rdx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdx]
bswap rbx
add bl, -65 # instrumentation
adc sil, bl
bts rax, 61
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 19
adc al, -86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
