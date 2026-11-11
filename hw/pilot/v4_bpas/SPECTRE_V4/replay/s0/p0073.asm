.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 29
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx]
cmp al, bl
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], -21
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
test rdi, -795635070
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
and esi, 126
and rdi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rax]
and eax, -1056713114
cmovbe dx, di
imul dx
bts di, 72
dec dl
test al, 27
mov dl, cl
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], -109
inc cl
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rsi
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
or al, al
add al, -1
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
mul dl
bts bx, di
add cl, -23 # instrumentation
cmovno ebx, eax
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
xor al, -60
cmp dx, -1
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
xor ax, -22861
cmovnle bx, bx
cmp rax, -1547540200
not sil
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
