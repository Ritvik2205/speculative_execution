.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], dx
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 98
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], 77
sbb rdx, 6
and rsi, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rsi]
btc di, cx
cmp cl, 49
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 68
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
movzx rdx, di
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], -68
imul rdx, rax
bts eax, edx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], bx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
add bl, 40 # instrumentation
cmovnp rcx, rbx
or sil, cl
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -23
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ecx
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and rsi, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], bx
xor rax, rbx
or dil, al
and rdx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edi
and sil, sil
xor dl, dl
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 598547570
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
cmovno ecx, esi
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
or bl, dil
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 38
imul cx
cmp ecx, 26
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
or sil, sil
mov dl, -124
test cx, 19367
test ecx, ebx
movzx edx, di
and rdi, 45
or al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
