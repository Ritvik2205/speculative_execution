.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns di, cx
xor eax, 308288205
and cl, 126
movzx rsi, ax
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rbx
or cl, bl
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
cmovbe cx, ax
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
adc sil, 77
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
adc bx, 52
btr rdi, 145
add sil, bl
xor ax, -6064
adc rsi, rcx
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi], 41
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
cmovnbe esi, ebx
and dx, dx
movzx rax, cx
sbb al, 66
imul dx, ax, -115
and rbx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rbx]
cmovl di, cx
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
add al, -72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
imul rax, rdi, -89
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
imul esi
btr ebx, 87
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
cmp al, cl
cmp cl, -80
xchg al, al
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
sub cl, al
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi], 49
xor cl, bl
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
adc ecx, ebx
mov bx, cx
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
and dl, -104
or al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
