.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz eax, esi
adc ebx, -100
add bl, 54
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
and rdx, 0b1111111111111 # instrumentation
test bx, 17
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
mov cl, cl
and rax, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rax]
movsx dx, cl
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
movsx rbx, dx
and rdx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdx]
cmovns bx, di
sub al, 59
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -23
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 67
mov al, 125
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
test al, -38
and sil, sil
cmp al, 105
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 13
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rdx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rdx]
test edi, esi
mov al, sil
cmp eax, edx
cmovs rdx, rbx
and rcx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rcx]
mov si, di
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], ecx
imul rsi, rcx
cmovns rdx, rax
cmp rsi, 74
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 57
sbb ecx, 53
or ax, 0b1000000000000000 # instrumentation
bsr ax, ax
imul rsi, rax, 69
add cl, -40 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rsi]
cmovnle di, ax
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
sbb dil, 63
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rdx]
xor sil, 30
sub dx, dx
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
