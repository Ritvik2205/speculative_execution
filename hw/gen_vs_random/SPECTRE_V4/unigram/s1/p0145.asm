.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edx, ecx
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 7
adc rax, 1542637830
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 78
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
cmovo esi, eax
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
sub edx, 6
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 19
add si, 4
test edi, -1249897727
test rsi, 64
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
cmovnl rbx, rsi
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 70
cmovns bx, bx
and rsi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rsi]
cmovp ebx, edx
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rdi
adc dx, dx
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], di
test sil, cl
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
btc rcx, 60
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
xchg edx, ebx
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], cl
movzx ebx, cl
and rax, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rax]
mov dil, dil
not si
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rax], edx
cmp cx, ax
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
test dil, 6
add bl, 65 # instrumentation
cmovnp di, si
or sil, bl
add al, -10 # instrumentation
cmovnbe eax, esi
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
bts ebx, esi
and rdx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdx]
xor dl, 93
btc rsi, rbx
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
