.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rax
cmovnbe rax, rdx
xor cl, bl
movsx rbx, cl
movzx rdx, bx
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
sbb dil, dil
cmovnb rsi, rcx
add si, 4
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
and rbx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], al
add al, al
sub sil, -50
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
test dl, al
xor dil, 53
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
imul rdi
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 18
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
cmovnbe ax, si
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdi]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
add dil, dil
xchg rcx, rsi
sbb edi, 14
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
imul rbx
and rax, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rax]
or bl, al
sbb edi, 89
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], ebx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rsi, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
or ecx, 67
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rax
cmovs rdi, rbx
mov edx, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
