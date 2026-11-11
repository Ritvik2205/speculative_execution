.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], -109
and esi, 61
or al, al
movzx ecx, ax
inc cl
and eax, -1056713114
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx]
movzx rsi, cx
cmovnle bx, bx
cmovl ecx, ebx
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rax]
cmovbe dx, di
sub dl, 107
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
add cl, -23 # instrumentation
cmovno ebx, eax
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rsi
cmovnp edi, esi
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
cmovnb ax, bx
cmp al, bl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
dec dl
xor al, -113
add al, -29
mov dl, cl
test al, -85
and rdi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdi]
or di, 122
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 31
bts di, 30
test rdi, 1222000858
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
movsx si, bl
xor ax, 15671
not sil
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], -21
mul dl
xor esi, esi
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
cmp rax, 1682181214
cmovs eax, esi
bts bx, di
add bl, bl
cmp dx, -26
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
imul dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
