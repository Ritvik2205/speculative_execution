.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp edi, 3
cmovp rax, rsi
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 112
cmp eax, eax
movsx rbx, cl
cmp cl, dl
test bx, bx
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], bx
or rdi, -41
or dil, -104
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 111
mul edx
cmovp eax, eax
btc ebx, edx
and ax, si
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
sub di, 9
cmovp rcx, rcx
add al, 87 # instrumentation
cmovz esi, eax
sub dil, cl
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
cmovnp ecx, ebx
sbb esi, 14
add bl, -59
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
neg dil
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
cmovl rdx, rdi
and rdx, 0b1111111111111 # instrumentation
add al, -84 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rcx]
sbb eax, 1675303701
cmp sil, al
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 42
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
xor al, cl
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
sub ebx, 89
mov dl, bl
xor cl, al
add al, -64 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
neg dil
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rax
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add bl, 91 # instrumentation
adc bl, sil
mov dil, cl
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
or cx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
