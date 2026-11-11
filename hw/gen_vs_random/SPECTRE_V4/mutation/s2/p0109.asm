.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
cmovnbe esi, ebx
add al, -72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
adc rsi, rcx
imul dx, ax, -115
movzx rax, cx
cmovl di, cx
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
sbb al, 57
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
imul esi
add sil, bl
sub cl, al
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
xchg al, al
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
or cl, bl
cmovbe cx, ax
cmovns di, cx
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], di
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
movzx rsi, ax
xor eax, 167244411
cmp al, cl
adc sil, -31
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
and cl, -128
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
xor cl, bl
and rbx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and dl, -104
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi], 49
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rbx
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
xor ax, 13332
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi], 41
btr rdi, 61
mov bx, cx
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
btr ebx, 87
adc bx, 52
and dx, dx
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
cmp cl, 107
adc ecx, ebx
imul rax, rdi, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
