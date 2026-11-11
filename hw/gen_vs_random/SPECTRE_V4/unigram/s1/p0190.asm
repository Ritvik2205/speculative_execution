.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], cx
adc dil, 124
add bl, -2 # instrumentation
cmovs rax, rdx
add dl, -12 # instrumentation
cmovp edx, eax
sbb sil, -124
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
xchg rax, rbx
cmovo di, dx
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdi]
mov sil, al
mov dil, dl
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], edi
cmovno esi, eax
imul si, si
test sil, 1
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 25202
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], di
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
movzx rdi, bx
cmovnp eax, ebx
sub dl, 107
and rsi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 107
btc edx, 108
or cl, dil
and rbx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rbx]
cmovnle rax, rsi
or rsi, -5
adc dl, 49
add dl, -25 # instrumentation
cmovs rdx, rax
mov ax, 31802
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
add al, 40 # instrumentation
cmovnp rcx, rax
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], eax
btr ax, cx
and rdi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
add sil, -35 # instrumentation
mov cl, sil
dec sil
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
sbb edi, ecx
or edx, -118
cmovnb esi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
