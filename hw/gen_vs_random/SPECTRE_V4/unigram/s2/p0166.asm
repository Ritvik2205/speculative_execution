.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 1
neg dil
bswap ebx
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rbx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rbx]
add bl, 95 # instrumentation
mov cl, 58
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ebx
cmovbe ax, si
mov dl, cl
mov rbx, 24
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
movzx rcx, bx
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
xor al, cl
cmp bl, bl
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
mov rcx, rbx
adc al, 116
sub ecx, -107
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
mov edi, eax
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 60
and rdi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdi]
imul eax
mul si
btc rdx, rbx
add dl, 45 # instrumentation
cmovbe rdx, rax
cmovno esi, edx
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rcx
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 99
xor edi, 127
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
cmovnle rbx, rcx
add cl, 0 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
test rsi, rcx
mov al, cl
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], di
mov esi, eax
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], dx
neg bl
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
