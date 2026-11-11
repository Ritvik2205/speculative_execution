.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc sil, -63
cmovnbe esi, ebx
adc bx, 52
or cl, bl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
adc rsi, rcx
add sil, bl
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
cmp cl, 107
cmovbe cx, ax
cmovns di, cx
mov bx, cx
movzx rsi, ax
cmovl di, cx
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi], 49
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and cl, 126
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], di
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
imul dx, ax, -115
adc ecx, ebx
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi], 41
imul esi
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rbx
and dx, dx
btr rdi, 145
cmp al, cl
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
xor eax, 167244411
and dl, 126
imul rax, rdi, -89
sub cl, al
sbb al, -3
movzx rax, cx
or al, cl
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
xor ax, 13329
add al, -72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
btr ebx, 116
xchg al, al
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rbx]
xor cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
