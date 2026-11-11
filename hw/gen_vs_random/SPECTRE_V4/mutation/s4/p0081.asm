.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec dl
cmovnp edi, esi
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], -21
cmovs eax, esi
bts bx, di
or di, 122
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
xor esi, esi
movzx ecx, ax
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx]
inc cl
and rax, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rax]
test rdi, -795635070
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rsi
cmovl ecx, ebx
and rdi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
add bl, bl
not sil
bts di, 72
test al, -26
movsx si, bl
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], -109
and eax, -1237519395
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
xor al, 23
movzx rsi, cx
mov dl, cl
add al, -29
cmovnb ax, bx
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
or al, al
xor ax, 13332
mul dl
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
imul dx
cmp rax, 1682181214
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
cmp dx, 58
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 31
and esi, 61
add cl, -23 # instrumentation
cmovno ebx, eax
cmp al, bl
cmovbe dx, di
sub dl, 107
cmovnle bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
