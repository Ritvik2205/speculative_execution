.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor esi, esi
and eax, -784085938
cmovnle bx, bx
xor al, -15
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 49
cmovs eax, esi
bts di, 30
movzx ecx, ax
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
test al, 115
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
movsx si, bl
mul dl
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
not sil
add cl, -23 # instrumentation
cmovno ebx, eax
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], -109
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx]
add bl, bl
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
dec dl
and esi, 2
bts bx, di
cmp al, bl
mov dl, cl
add al, -82
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
cmovbe dx, di
movzx rsi, cx
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
cmovnb ax, bx
and rdi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdi]
cmovl ecx, ebx
sub dl, -16
cmovnp edi, esi
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rsi
cmp rax, 1097504565
cmp dx, 13
test rdi, -795635070
and rax, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rax]
inc cl
imul dx
or al, al
xor ax, 15671
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], -68
or di, 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
