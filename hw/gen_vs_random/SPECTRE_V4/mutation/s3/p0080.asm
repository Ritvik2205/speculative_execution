.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 56 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], 104
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
movzx di, cl
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -21
xor esi, -112
cmovnle bx, dx
adc eax, -983562873
sbb al, 54
adc ax, -10650
and al, -1
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 2
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], dx
add bl, -59
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], dx
xor al, -113
btc edx, 165
and al, bl
cmovnle rsi, rdi
cmovs eax, edx
xchg esi, eax
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax]
bts dx, cx
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
btr ebx, 116
imul esi
add al, -72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
imul rax, rdi, -89
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi], 41
xor eax, -48271836
movzx rsi, ax
adc bx, 52
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi], 49
and rbx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rbx]
cmovl di, cx
btr rdi, 61
xor ax, 30500
and dl, -104
movzx rax, cx
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
xchg al, al
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
cmovbe cx, ax
add sil, bl
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
mov bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
