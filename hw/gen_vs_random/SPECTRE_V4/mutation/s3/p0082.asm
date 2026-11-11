.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, bl
cmovb edi, ebx
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
inc al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
cmovs dx, di
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
mov al, dl
sub al, 98
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
sbb bl, 57
cmovns bx, di
mov rcx, 4219775168754920203
sub al, dl
cmovo rbx, rdx
xor bx, di
not rbx
test cl, -89
and rsi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rsi]
cmovnbe rcx, rdi
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
btc rsi, 225
and rax, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and bx, 95
movzx edx, al
cmp al, bl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
bts edi, 167
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
xchg bl, dl
imul rdi
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
sbb sil, 108
mov cl, cl
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 21
add al, 118
bts ecx, ebx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
not di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
