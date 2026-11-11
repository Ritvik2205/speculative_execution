.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rsi]
cmovnbe eax, edx
adc edx, edi
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx]
adc dil, 38
cmovl si, di
sbb cl, dl
adc ecx, 114
sbb eax, 1482884079
btc rcx, rax
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], di
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 74
sub ax, 17434
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
bt rdx, rdx
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 63
bts bx, cx
cmovbe bx, dx
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and dl, sil
test ecx, -304234347
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
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
bts ebx, 189
inc ecx
cmp dil, cl
mov al, 124
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
