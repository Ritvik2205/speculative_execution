.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -35 # instrumentation
mov al, bl
cmovno ebx, esi
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
test rdx, rdx
sub di, si
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
test al, -24
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 0
or eax, 1470564945
and cx, bx
test edi, -2098143765
xor rdi, -72
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], -79
add eax, 84
cmp dl, 95
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 2
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
imul edx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], -1928332684
mul dl
bts bx, di
add cl, -23 # instrumentation
cmovno ebx, eax
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
xor al, -6
cmp dx, -26
movzx rsi, cx
add bl, bl
sub dl, -16
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
xor ax, 13332
cmovnle bx, bx
cmp rax, 1682181214
not sil
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
