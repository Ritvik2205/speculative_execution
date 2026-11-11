.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, bl
cmp rax, -2096157586
and rdi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdi]
bts di, 72
imul dx
movzx rsi, cx
xor ax, 15671
mul dl
cmp dx, 58
movzx ecx, ax
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx]
xor al, -120
cmovl ecx, ebx
cmovnle bx, bx
cmovbe dx, di
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], -109
and eax, -1145483375
mov dl, cl
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
movsx si, bl
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 49
and rax, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rax]
or al, al
add cl, -23 # instrumentation
cmovno ebx, eax
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rsi
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], -21
cmovnp edi, esi
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
add al, -3
or di, 2
xor esi, esi
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
bts bx, di
test rdi, 1222000858
cmovs eax, esi
not sil
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
dec dl
and esi, 126
sub dl, 107
inc cl
test al, -24
cmp al, bl
cmovnb ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
