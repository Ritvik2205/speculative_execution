.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov bl, dl
cmovl esi, ecx
cmovs rax, rdx
xor ax, si
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rax
test esi, -2111618709
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
sub di, bx
xchg rbx, rax
or rdx, rbx
xor dl, dl
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
or cl, al
xchg cl, cl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
xor dl, cl
imul dl
imul rdx, rdi
add cl, -33 # instrumentation
not dl
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
cmovnz rbx, rsi
cmp dl, cl
cmp dl, 95
cmovp rbx, rcx
mul dl
bts bx, di
add cl, -23 # instrumentation
cmovno ebx, eax
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
xor al, -15
cmp dx, 58
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
xor ax, -6064
cmovnle bx, bx
cmp rax, -1070057082
not sil
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
