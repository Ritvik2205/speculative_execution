.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 12
and rax, 0b1111111111111 # instrumentation
and dil, al
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rcx
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 6
and rsi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rbx
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
cmovnb ax, dx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], -108
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
movsx eax, di
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], -24
and rbx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rbx]
cmp bl, dl
xor edi, 127
and bl, -30
cmovb eax, ebx
btr rdx, rbx
mov di, cx
imul edx, ebx, 1
cmovno rcx, rdx
xor dl, bl
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 62
mov sil, 2
cmovnz ax, si
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], cx
cmovnp cx, dx
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -112
cmovnl si, bx
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], cx
add bl, -24 # instrumentation
cmovnbe bx, bx
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
imul edx
sub rbx, 101
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 6
cmovz eax, eax
add sil, -39 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdx]
and cx, bx
and rax, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
