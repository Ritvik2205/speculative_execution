.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 65 # instrumentation
cmovnp cx, si
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 30
and sil, dl
sbb dl, bl
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
add rcx, rdx
adc al, 36
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edi
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
add cl, 39 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdx]
add dl, al
xor bx, di
xor al, -2
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
add rdi, rbx
or al, 109
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
add rbx, 84
add bl, bl
and rdx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdx]
not si
cmovnb esi, eax
cmovz ecx, ecx
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
bt dx, 38
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
add edi, 11
cmovnle eax, edi
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdx]
mov dil, dil
add dl, -99 # instrumentation
not eax
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
bts edi, 167
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
add dl, 41
and bl, cl
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
adc cl, sil
xor dil, al
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
sbb bl, -94
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
and esi, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
