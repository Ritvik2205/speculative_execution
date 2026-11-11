.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, ax
cmp rax, 2115020203
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmp bx, si
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
cmovnp bx, bx
imul ax, cx
cmp cl, dl
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
imul cl
mul dl
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
cmovz si, si
cmovp ax, cx
and rdx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rcx]
lea di, qword ptr [rcx]
add cl, -82 # instrumentation
sbb si, dx
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
sub sil, -36
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
xor ax, 28088
cmovnbe rcx, rbx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], si
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
cmovnbe eax, esi
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
cmp al, 19
xor esi, ebx
cmp dil, al
cmp rax, 1524061352
movzx bx, sil
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
