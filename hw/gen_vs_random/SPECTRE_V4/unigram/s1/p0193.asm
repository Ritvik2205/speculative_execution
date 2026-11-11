.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
sbb cl, -104
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 7
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dil
and bl, cl
inc ebx
add bl, -72
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb dx, ax
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 57
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 49
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
test dx, 66
test cl, cl
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rax], edi
sub rbx, 24
or ecx, edi
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], edi
and rdx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdx]
add rcx, rbx
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], ecx
and rdx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdi
dec dl
mov dil, dil
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
cmovnbe di, si
imul esi, eax, 68
cmovnp dx, di
mov rsi, rcx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdi]
mov esi, 98
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rcx
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
