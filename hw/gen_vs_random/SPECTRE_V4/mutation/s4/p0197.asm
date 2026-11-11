.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rcx
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
movzx rdx, bx
btr cx, cx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
adc cl, -66
cmovbe edi, ecx
xchg rsi, rsi
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
cmp dil, 53
test sil, bl
cmp ebx, 80
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
add al, -79 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
and al, 85
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -52
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rsi
xor esi, esi
adc bl, -58
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], si
neg bl
and rdx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
xchg dx, ax
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
movsx eax, bl
bts ebx, 197
inc ecx
cmp dil, cl
mov al, 90
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rsi
mov rdi, -7956777892145474940
cmovnb eax, ecx
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
cmovs rdx, rcx
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rcx]
adc dl, dl
btc bx, 254
or si, 0b1000000000000000 # instrumentation
bsr cx, si
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
