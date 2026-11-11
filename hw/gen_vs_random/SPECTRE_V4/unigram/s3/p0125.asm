.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
sub di, 9
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -1
movzx ax, sil
or cl, cl
add al, 27 # instrumentation
mov sil, al
mul rbx
mul dil
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], -2
or rdi, rbx
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax], 19
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
not rax
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 21
btc esi, 63
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
adc dl, 33
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rbx]
and sil, al
sbb sil, al
cmp al, -122
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
or cl, -55
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], cl
neg rcx
imul eax, ecx, -17
bswap rcx
and rbx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 80
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
cmovbe rdx, rax
cmovnle ax, di
bts di, si
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
and bl, 76
or rcx, rdx
movsx eax, bx
cmovnp cx, di
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], dx
movzx ebx, cx
add al, -10 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], cx
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
