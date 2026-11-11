.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, al
cmovl di, cx
btr rdi, 61
or cl, bl
add sil, bl
and cl, 32
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
movzx rsi, ax
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
cmp al, cl
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], di
movzx rax, cx
adc ecx, ebx
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rbx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
sbb al, 57
mov bx, cx
and rbx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rbx]
adc rsi, rcx
xor cl, bl
cmovbe cx, ax
or al, cl
xor ax, 15671
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi], 41
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
imul dx, ax, -115
and dx, dx
cmovns di, cx
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
xchg al, al
xor eax, -1772786275
btr ebx, 87
cmovnbe esi, ebx
adc sil, 77
add al, -72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
and dl, -104
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
imul esi
adc bx, 52
cmp cl, -105
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi], 49
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
imul rax, rdi, -89
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
