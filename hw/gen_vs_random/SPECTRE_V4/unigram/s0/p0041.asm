.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ecx, 99
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], bx
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 17
add cl, -123 # instrumentation
sbb sil, 33
and rcx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rcx]
cmovle rax, rbx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
and rdx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ebx
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 56
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rax
xor cl, bl
btr rsi, 20
btr eax, 30
or dil, -16
cmovno ecx, eax
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
sub al, al
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 49
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdi
sub sil, 71
neg ebx
add bl, dil
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], bx
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx]
xor al, cl
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ebx
and dil, dil
add bl, -24 # instrumentation
cmovnbe dx, dx
dec al
and rax, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], al
mov di, 87
and rbx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rbx]
cmovz si, cx
bts rdx, 80
xor al, 30
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
imul sil
add rbx, 22
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], sil
sub ax, 8246
xchg ax, dx
inc eax
inc dil
cmp si, 109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
