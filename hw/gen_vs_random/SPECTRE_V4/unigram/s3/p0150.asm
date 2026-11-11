.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rdi]
sbb di, -105
cmovnl rcx, rdi
sbb dil, cl
xor cx, -80
and rbx, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rbx]
test bl, 78
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], -74
btr rdx, rdi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
inc rdi
add bl, -74 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rsi
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rbx
sub dil, cl
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
sub dil, 35
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rax
imul rbx, rdx, 37
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], -30196
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
sbb cl, 127
xchg edi, ebx
adc cl, -4
xor sil, 29
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], cl
sub di, cx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
cmp rcx, -121
and rbx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rbx]
xor ecx, 12
sbb dl, -106
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdx]
mov rsi, rax
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
xchg cl, cl
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, esi
imul edx
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], al
and ecx, 71
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
add rbx, 45
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
btr rcx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
