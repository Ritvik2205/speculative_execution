.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc sil, 77
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], 110
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rbx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -124
adc sil, dil
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdx]
inc dil
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], bl
and eax, -1145483375
cmovnz rdi, rdi
and rsi, 0b1111111111111 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rax
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
neg cl
add sil, -8 # instrumentation
xchg dil, sil
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
cmovle dx, cx
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx]
adc dl, 31
cmp rdi, rbx
and dl, 126
xor al, al
sbb bl, -75
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], ax
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], dx
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 13
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], di
sub rbx, 101
xor ecx, ecx
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rcx
sbb al, -43
mov edi, -1866088512
and rcx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edi
sub rdx, 19
add bx, 95
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], bx
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], di
xchg ecx, edi
and rbx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rbx], 6
and rdi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdi]
adc sil, sil
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rbx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
