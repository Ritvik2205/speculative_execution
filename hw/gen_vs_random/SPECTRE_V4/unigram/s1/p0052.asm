.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl rax, rax
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 84
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rbx]
movzx rsi, cx
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
not rcx
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], -20
xor dl, cl
cmovnbe rsi, rdx
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
or bl, 42
add rdx, 34
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], cl
bts rcx, rdx
and rsi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
add bl, al
and bl, -63
cmovnbe bx, ax
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rsi
and rdi, -2
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
cmovno ebx, esi
cmp al, 19
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rdi
cmovns dx, dx
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rcx
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rcx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdx]
or esi, 67
cmp sil, 88
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, eax
add dl, al
cmp cl, 28
xchg di, cx
and rdx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdx]
cmovle dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
