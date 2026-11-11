.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 49
and esi, 61
cmovl ecx, ebx
bts di, 72
movzx ecx, ax
and eax, -784085938
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], -21
cmp dx, 58
test rdi, -795635070
inc cl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], -109
and rax, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rax]
xor ax, -22861
cmovs eax, esi
add cl, -23 # instrumentation
cmovno ebx, eax
add al, -32
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rsi
cmovnle bx, bx
movzx rsi, cx
not sil
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
cmovnb ax, bx
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx]
add bl, bl
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
cmovnp edi, esi
xor al, -120
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
cmp al, bl
and rdi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
or al, al
bts bx, di
test al, -26
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
dec dl
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
xor esi, esi
cmovbe dx, di
cmp rax, 40
sub dl, -16
movsx si, bl
imul dx
mul dl
or di, 2
mov dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
