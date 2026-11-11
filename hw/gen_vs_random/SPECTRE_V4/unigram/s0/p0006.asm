.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rax]
imul ax, bx, 53
and al, sil
sub cx, -114
add cl, 53 # instrumentation
cmovnbe ebx, edx
add rcx, rcx
imul rbx, rcx, 82
add bl, 95 # instrumentation
mov bl, 88
or rdx, 1
xchg bx, si
movzx rdx, bx
add cl, -32 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rax]
and dl, 124
cmp bl, dil
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rsi], eax
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
test sil, dil
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 49
btc ecx, ebx
cmovnb dx, dx
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
adc cl, bl
cmp rsi, 74
add bl, 54
and rdi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 18
sub dl, -16
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdx], di
cmovbe ecx, ebx
and rbx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 16
or bl, cl
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx], 76
cmovno rax, rbx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdi
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], -118
bts dx, 26
cmovnp edi, edi
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], ebx
adc rdx, -90
movsx rax, sil
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], di
xor al, 124
test dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
