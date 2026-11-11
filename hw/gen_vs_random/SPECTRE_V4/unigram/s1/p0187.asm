.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
test sil, al
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 24
sbb cl, cl
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rcx]
test sil, dl
sbb edx, 93
add cl, 122 # instrumentation
cmovz rbx, rax
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], ebx
cmp dx, 21
add dl, 41
cmp dil, -124
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rax]
add ecx, eax
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 58
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], esi
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], 15
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], bx
btc ax, si
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 48
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], edi
cmovnb eax, edi
xor dx, bx
and rsi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rsi]
cmovz edx, esi
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
neg cx
sbb bl, dil
mul ax
adc bl, dl
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
cmp rdx, 90
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rcx
cmovnl rdx, rax
or al, al
add bl, bl
sbb sil, 108
add cl, bl
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rcx], esi
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], di
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
adc cl, al
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
