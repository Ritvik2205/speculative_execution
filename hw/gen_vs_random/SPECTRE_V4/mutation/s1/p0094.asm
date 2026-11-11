.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
cmovl ecx, ebx
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
bts di, 30
cmovbe dx, di
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rax]
bts bx, di
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
xor ax, -6064
mul dl
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx]
xor al, 55
cmovs eax, esi
dec dl
add al, -99
add cl, -23 # instrumentation
cmovno ebx, eax
imul dx
add bl, bl
movzx ecx, ax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
or di, 29
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rsi
cmp rax, 2096656187
and rdi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdi]
xor esi, esi
mov dl, cl
cmp al, bl
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
movsx si, bl
not sil
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], -109
cmovnp edi, esi
cmovnle bx, bx
inc cl
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], -68
cmovnb ax, bx
movzx rsi, cx
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 49
cmp dx, -67
sub dl, -16
and eax, -1237519395
test rdi, 1222000858
test al, -26
and esi, 61
or al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
