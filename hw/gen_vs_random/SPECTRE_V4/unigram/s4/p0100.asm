.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 93
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 87
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
cmovp dx, ax
imul ebx, edi, 57
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 44
and rcx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rcx], ax
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edi, eax
add dl, 31 # instrumentation
cmovnl dx, dx
and rcx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
xor al, bl
add dil, -10 # instrumentation
cmovnbe edi, eax
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rax
cmp rax, -120490246
test bl, dil
cmp bl, dl
sbb edi, esi
cmovnb di, di
and rsi, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rsi]
btc rdi, rcx
adc sil, al
adc bl, al
cmp dil, -124
mul rbx
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rsi]
cmovnp rsi, rsi
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
mul dl
test dx, 24
cmovnl rbx, rsi
sbb esi, 88
and rax, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rax]
btc rdi, 167
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, eax
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
imul cx, dx
xor al, dl
xor dx, 81
btc bx, si
and rax, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
