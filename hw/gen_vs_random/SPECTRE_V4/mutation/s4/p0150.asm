.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 16 # instrumentation
cmovnz ax, cx
imul dl
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
cmovbe ecx, eax
or al, -16
cmovp rsi, rdi
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 7
add dl, 47 # instrumentation
cmovnle bx, dx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], -17
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
btr rax, rbx
or dl, dl
cmp cl, bl
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
btr rax, 187
neg al
bswap edi
mul dl
bts bx, di
add cl, -23 # instrumentation
cmovno ebx, eax
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
xor al, 124
cmp dx, 13
movzx rsi, cx
add bl, bl
sub dl, 107
cmovl ecx, ebx
cmovnp edi, esi
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
xor esi, esi
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
cmovnb ax, bx
movsx si, bl
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
cmovs eax, esi
movzx ecx, ax
xor ax, -22861
cmovnle bx, bx
cmp rax, 2096656187
not sil
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
