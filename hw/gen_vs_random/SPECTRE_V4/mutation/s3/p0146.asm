.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul dx, ax, -115
xchg al, al
cmovbe cx, ax
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
cmp al, cl
add al, -72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rbx]
btr rdi, 61
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
adc ecx, ebx
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rbx
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi], 41
xor ax, 45
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
sub cl, al
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
cmp cl, 107
cmovl di, cx
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], di
adc sil, 88
movzx rax, cx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
btr ebx, 156
movzx rsi, ax
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
adc rsi, rcx
cmovnbe esi, ebx
sbb al, -52
or al, cl
or cl, bl
xor eax, 1185843233
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
imul rax, rdi, -89
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
cmovns di, cx
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
add sil, bl
and cl, -118
and dx, dx
and dl, 24
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi], 49
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
xor cl, bl
imul esi
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
adc bx, 52
mov bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
