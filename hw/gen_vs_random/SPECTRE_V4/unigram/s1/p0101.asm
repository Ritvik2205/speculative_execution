.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], ax
xor cl, cl
cmovnz rdi, rdi
adc al, -86
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], esi
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 113
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
mov sil, sil
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
and dl, al
mov ebx, 817819255
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rsi
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
inc eax
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
add cl, 14 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
sub rbx, 101
cmovs rsi, rcx
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 67
xor ebx, -62
movsx ebx, al
and rdx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rdx]
cmp eax, 1521417271
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rsi
bt rcx, rdx
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
dec al
adc edx, -125
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], ax
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 33
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rdi
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ecx
xor rdx, 106
and rdi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -118
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and cl, bl
test ax, bx
add al, 89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], esi
or rax, -823069511
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
