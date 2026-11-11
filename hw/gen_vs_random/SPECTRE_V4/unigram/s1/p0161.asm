.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp ecx, ebx
cmovz edx, esi
xor rdx, 22
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
adc edx, 22
sbb bl, dil
sub dil, dil
bt eax, 84
sbb ebx, 96
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edi
add sil, 26
sbb cl, cl
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 66
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 82
add bl, -115 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 13
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rax
add ax, 28666
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], cx
cmp bl, bl
cmp di, dx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
movzx rax, dl
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 93
bt ebx, 228
xor edx, esi
sub cl, cl
and dl, al
sub rbx, rax
bts rbx, rdi
dec rbx
or bl, 57
sbb bl, -94
add cl, 8 # instrumentation
adc al, dl
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rbx], ax
imul dx
inc esi
cmovnb esi, edx
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 56
cmovnp eax, edi
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
add esi, -5
imul eax
test edx, 573099753
cmovnb dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
