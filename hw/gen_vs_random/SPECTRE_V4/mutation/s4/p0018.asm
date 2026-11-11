.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
cmp cl, 59
sbb al, -52
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
btr ebx, 116
xor ax, -29507
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
imul rax, rdi, -89
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rbx
xchg al, al
sub cl, al
and cl, -118
cmovl di, cx
cmovnbe esi, ebx
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
adc rsi, rcx
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
movzx rsi, ax
cmovns di, cx
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
xor eax, 365940537
and dx, dx
adc bx, 52
add al, -72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
and dl, -104
xor cl, bl
adc ecx, ebx
and rbx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], di
adc sil, -2
cmovbe cx, ax
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
movzx rax, cx
add sil, bl
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi], 49
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi], 41
or cl, bl
mov bx, cx
imul dx, ax, -115
imul esi
cmp al, cl
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
btr rdi, 145
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
