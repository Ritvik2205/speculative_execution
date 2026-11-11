.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts si, 75
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], si
sbb al, -39
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
movzx ax, al
cmp rdx, -49
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 80
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], dx
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], dx
neg esi
btc eax, esi
and rdx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 98
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
add sil, dl
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
sbb dx, dx
cmovns rsi, rcx
xor edx, 71
or rax, rax
and rsi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rsi]
btr rax, rcx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
xor al, -120
bswap rbx
or cx, 23
cmp dil, al
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], cx
cmovz edi, eax
cmp rdx, -49
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rcx]
cmp dil, 101
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
adc sil, -31
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
neg al
inc dx
add edx, ebx
cmovnbe cx, dx
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
sub bl, sil
and rsi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rsi]
add cl, 101 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
cmp dl, 83
add al, -109 # instrumentation
cmovns di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
