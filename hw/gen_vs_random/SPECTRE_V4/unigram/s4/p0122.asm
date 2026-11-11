.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ecx, 201
inc dil
mov bl, dl
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
movsx rax, cl
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], ecx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], cx
xchg rdx, rsi
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], 14
and rax, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
movzx ebx, dl
cmp cl, 100
sbb rsi, 117
adc al, 116
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rcx]
cmovs esi, ecx
cmovnp dx, cx
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], -43
neg rsi
or di, 29
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 34
btr cx, di
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 98
and rdx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rdx]
btr eax, 6
cmovbe eax, edx
and cl, -101
add al, dl
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdx
bswap ecx
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
xor rsi, rdi
mov cl, bl
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi], 14
sbb cl, al
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], 79
and rcx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 29
and rbx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rbx]
btr edx, 160
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
or edi, -78
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], -104
xor bl, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
